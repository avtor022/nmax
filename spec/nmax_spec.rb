RSpec.describe Nmax do
  it "has a version number" do
    expect(Nmax::VERSION).not_to be nil
  end

  let(:test_file_path) { File.dirname(__FILE__) + '/demo/test.txt' }
  let(:text) { File.open(test_file_path) }

  it ".show_numbers shows an array with 5 integers" do
    expect(subject.show_numbers(5, text).all? { |a| a.class == Fixnum }).to be_truthy
  end

  it ".show_numbers shows an array with 3 elements" do
    expect(subject.show_numbers(3, text).count).to eq(3)
  end

  it ".show_numbers correctly shows integers from text" do
    expect(subject.show_numbers(2, text)).to eq([999999999999999999999999999999999999, 6544565445646546])
  end
end
