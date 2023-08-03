require './solver'

RSpec.describe Solver do
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
end
