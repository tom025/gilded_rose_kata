require 'java'
require 'lib/hello_java.jar'

java_import 'HelloJava'

describe HelloJava do
  subject { HelloJava.new() }

  it 'says hello' do
    subject.sayHello.should == 'Hello Java, with some extra stuff!'
  end
end
