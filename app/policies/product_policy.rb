class ProductPolicy < BasePolicy
  def edit
    owner?
  end

  def update
    owner?
  end

  def destroy
    owner?
  end

  private

  def owner?
    record.owner?
  end
end
