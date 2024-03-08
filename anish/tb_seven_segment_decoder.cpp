#include <iostream>
#include <verilated.h>
#include <verilated_vcd_c.h>
#include "obj_dir/Vseven_segment_decoder.h"

vluint64_t sim_time = 0;

int main (int argc, char *argv[]) {
  Vseven_segment_decoder *dut = new Vseven_segment_decoder;
 
  if (argc == 1) {
    Verilated::traceEverOn(true);
    VerilatedVcdC *m_trace = new VerilatedVcdC;
    dut->trace(m_trace, 5);
    m_trace->open("waveform.vcd");

    for (size_t i = 0; i < 16; i++) {
      dut->number = i;
      dut->eval();
      m_trace->dump(sim_time);
      sim_time++;
    }
    
    m_trace->close();
  } else if (argc == 2) {
    int number = std::atoi(argv[1]);
    dut->number = number;
    dut->eval();
    printf("%d\n", dut->cathodes);
  }

  delete dut;
  return 0;
}
