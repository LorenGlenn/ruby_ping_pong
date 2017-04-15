require('rspec')
require('ping_pong')

describe('Fixnum#ping_pong') do
  it('changes multiples to ping and pong') do
    expect((3).ping_pong()).to(eq([1, 2, "ping"]))
  end
end
