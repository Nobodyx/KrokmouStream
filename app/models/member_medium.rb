class MemberMedium < ApplicationRecord
    belongs_to:user
    has_one:medium
end
