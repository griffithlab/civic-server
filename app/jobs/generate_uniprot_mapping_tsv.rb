class GenerateUniprotMappingTsv < GenerateTsvs
    def perform
      ensure_downloads_directory_exists
      tsvs_to_generate.each do |e|
        begin
          tmp_file = tmp_file(e.file_name)
          tmp_file.puts(e.headers.join("\t"))
  
          e.objects.find_each do |object|
            
            row = e.row_from_object(object)
            if row[1].is_a?(Array)
              overview_col = e.formatted_overview_col(object)
              row[1].each do |r|
                new_row = [row[0], r, overview_col].join("\t")
                tmp_file.puts(new_row)
              end
            elsif row[1] == "N/A"
              next
            else
              tmp_file.puts(row.join("\t"))
            end
          end
  
          tmp_file.close
          public_path = public_file_path(e.file_name)
          FileUtils.cp(tmp_file.path, public_path)
          File.chmod(0644, public_path)
        ensure
          tmp_file.unlink
        end
      end
    end
  
    def tsvs_to_generate
      [UniprotMappingTsvPresenter]
    end
  
    def public_file_path(filename)
      File.join(downloads_dir_path, filename)
    end
  
    def downloads_dir_path
      TsvRelease.downloads_path
    end
  
    def release_path
      ''
    end
  
    def filename_prefix
      ''
    end
  end