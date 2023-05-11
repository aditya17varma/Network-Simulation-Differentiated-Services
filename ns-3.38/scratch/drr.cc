#include "drr.h"

DRR::DRR(){};

Ptr<const Packet> DRR::Schedule() const {

    return 0;
}

uint32_t DRR::GetDeficit(int index){
    return deficitVector[index];
}

void DRR::SetDeficit(int index, uint32_t deficit){
    deficitVector[index] = deficit;
}

int main() {
    std::cout << "Hello from drr!" << std::endl;

}





