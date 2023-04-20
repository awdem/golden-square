class SecretDiary
  def initialize(diary) # diary is an instance of Diary
    @diary = diary
    @status = :locked
  end

  def read
    fail "Go away!" if @status == :locked
    @diary.read
    # Raises the error "Go away!" if the diary is locked
    # Returns the diary's contents if the diary is unlocked
    # The diary starts off locked
  end

  def lock
    @status = :locked
  end

  def unlock
    @status = :unlocked
  end
end
