module BadgeClaimHelper
  def claim_link(badge_claim)
    link_to "Claim #{badge_claim.badge.name} badge",  "/api/badges/redeem/#{badge_claim.id}"
  end
end