class User < ApplicationRecord
    def transactions
        Transaction.where({ company_id: self.id })
        Transaction.where({ to_user_id: self.id }).sum(:amount)
    end
end
