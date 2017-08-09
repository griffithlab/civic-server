class EventHierarchy
  attr_reader :subscribable
  def initialize(subscribable)
    load_scope = self.class.hierarchy[subscribable.class][:scope]
    @subscribable = subscribable.class
      .eager_load(load_scope)
      .find(subscribable.id)
  end

  def children
    traverse(subscribable, :children, [subscribable])
  end

  def parents
    traverse(subscribable, :parents, [subscribable])
  end

  private
  def traverse(root_subscribable, direction, list)
    self.class.hierarchy[root_subscribable.class][direction].each do |rel|
      root_subscribable.send(rel).each do |node|
        list << node
        traverse(node, direction, list)
      end
    end
    list
  end

  def self.hierarchy
    if @hierarchy
      @hierarchy
    else
      hierarchy = {
        Gene => {
          scope: [ :suggested_changes, variants: [
            :suggested_changes,
            evidence_items: [ :suggested_changes ] ]
          ],
          children: [
            :suggested_changes,
            :variants
          ],
          parents: [
          ]
        },
        Variant => {
          scope: [
            :suggested_changes,
            evidence_items: [ :suggested_changes ]
          ],
          children: [
            :suggested_changes,
            :evidence_items
          ],
          parents: [
            :gene
          ]
        },
        EvidenceItem => {
          scope: [
            :suggested_changes,
          ],
          children: [
            :suggested_changes,
          ],
          parents: [
            :variant
          ]
        },
        SuggestedChange => {
          scope: [
            :moderated
          ],
          children: [ ],
          parents: [
            :moderated
          ]
        }
      }
      hierarchy.default = {
        scope: [
        ],
        children: [
        ],
        parents: [
        ]
      }
      @hierarchy = hierarchy
    end
  end
end
