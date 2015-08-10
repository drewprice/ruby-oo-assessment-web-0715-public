require_relative '../lib/path.rb'

describe Path do
  describe '#initialize' do
    it 'assigns path to an instance variable' do
      instance = Path.new('/abso/lute')
      expect(instance.path).to eq('/abso/lute')
    end
  end

  describe '#normalize_path' do
    it 'takes a relative path as an argument and returns an absolute path' do
      instance = Path.new('rela/tive')
      abs_path = "#{Dir.pwd}/rela/tive"
      expect(instance.normalize_path).to eq(abs_path)
    end
  end

  describe '#relative_path?' do
    it "returns true if the object's path is relative" do
      instance = Path.new('rela/tive')
      expect(instance.relative_path?).to be true
    end

    it "returns false if the object's path is absolute" do
      instance = Path.new('/abso/lute')
      expect(instance.relative_path?).to be false
    end
  end

  describe '#absolute_path?' do
    it "returns true if the object's path is absolute" do
      instance = Path.new('/abso/lute')
      expect(instance.absolute_path?).to be true
    end

    it "returns false if the object's path is relative" do
      instance = Path.new('rela/tive')
      expect(instance.absolute_path?).to be false
    end
  end


end
