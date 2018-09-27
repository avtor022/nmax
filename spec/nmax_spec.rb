RSpec.describe Nmax do
  it "has a version number" do
    expect(Nmax::VERSION).not_to be nil
  end

  let(:test_with_numbers_path) { File.dirname(__FILE__) + '/demo/test_with_numbers.txt' }
  let(:text_with_numbers) { File.open(test_with_numbers_path) }
  let(:test_without_numbers_path) { File.dirname(__FILE__) + '/demo/test_without_numbers.txt' }
  let(:text_without_numbers) { File.open(test_without_numbers_path) }

  it ".show_numbers shows an array with 5 integers" do
    expect(subject.show_numbers(5, text_with_numbers).all? { |a| a.class == Fixnum }).to be_truthy
  end

  it ".show_numbers shows an array with 3 elements" do
    expect(subject.show_numbers(3, text_with_numbers).count).to eq(3)
  end

  it ".show_numbers correctly shows integers from text" do
    expect(subject.show_numbers(2, text_with_numbers)).to eq([999999999999999999999999999999999999, 6544565445646546])
  end

  it ".show_numbers shows message: 'No numbers!'" do
    expect(subject.show_numbers(text_without_numbers)).to eq("No numbers!")
  end

  it ".show_numbers shows error message: 'n' is Non-integer" do
    expect(subject.show_numbers('a', text_with_numbers)).to eq("Error: parameter 'number' must be Integer!")
  end

end
