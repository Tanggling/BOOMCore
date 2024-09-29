#include <systemc.h>

SC_MODULE(hello) {
	void func();
	SC_CTOR(hello) 
	{
		SC_THREAD(func);
	}
};

void hello::func() {
	std::cout << "hello ! SIBOER" << std::endl;
}

int sc_main(int argc, char* argv[]){
	hello* hello_module = new hello("hello");
	sc_start();

	return 0;
}
