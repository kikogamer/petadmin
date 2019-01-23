class ClientAddress < ApplicationRecord
  include Fae::BaseModelConcern

  belongs_to :client, touch: true

  def fae_nested_parent
    :client
  end
  
  def fae_display_field
    
  end

end
