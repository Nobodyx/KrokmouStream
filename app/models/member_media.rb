class MemberMedia < ApplicationRecord
    belongs_to:user
    has_one:medium
end
