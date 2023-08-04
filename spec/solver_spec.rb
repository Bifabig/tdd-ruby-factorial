require './solver'

RSpec.describe Solver do
  describe '#reverse' do
    it "return 'olleh' when given 'hello'" do
      solver = Solver.new
      expect(solver.reverse('hello')).to eq('olleh')
    end
  end

  describe '#factorial' do
    it '10 factorial should equal 3628800' do
      solver = Solver.new
      expect(solver.factorial(10)).to eq(3_628_800)
    end

    it '0 factorial should return 1' do
      solver = Solver.new
      expect(solver.factorial(0)).to eq(1)
    end

    it 'should raise an exception' do
      solver = Solver.new
      expect { solver.factorial(-2) }.to raise_error(RuntimeError)
    end
  end

  describe 'fizzbuzz' do
    it "return 'fizz' when given a number divisible by 3" do
      solver = Solver.new
      expect(solver.fizzbuzz(3)).to eq('fizz')
    end

    it "return 'buzz' when given a number dividible by 5" do
      solver = Solver.new
      expect(solver.fizzbuzz(10)).to eq('buzz')
    end

    it "return 'fizzbuzz' when given a number dividible by 3" do
      solver = Solver.new
      expect(solver.fizzbuzz(30)).to eq('fizzbuzz')
    end

    it 'return number as string when given a number non-divisible by 3 or 5' do
      solver = Solver.new
      expect(solver.fizzbuzz(7)).to eq('7')
    end
  end
end
