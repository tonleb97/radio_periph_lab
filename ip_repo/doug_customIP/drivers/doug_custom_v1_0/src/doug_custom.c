

/***************************** Include Files *******************************/
#include "doug_custom.h"

/************************** Function Definitions ***************************/
void radioTuner_setAdcFreq(u32 BaseAddr, float freq){
    //code to switch frequency to phase increment
    u32 phase;
	double phaseTemp;
	phaseTemp = ((double) freq) * ((double) 1.073741824);
	phase = (u32) (int) phaseTemp;
    DOUG_CUSTOM_mWriteReg(BaseAddr, 0*4, phase);
}

void radioTuner_tuneRadio(u32 BaseAddr, float tune_freq){
    //code to switch frequency to phase increment
    u32 phase;
	double phaseTemp;
	phaseTemp = ((double) tune_freq) * ((double) 1.073741824);
	phase = (u32) (int) phaseTemp;
    DOUG_CUSTOM_mWriteReg(BaseAddr, 1*4, phase);
}


//1 on resetval is reset to both dds and tuner dds
void radioTuner_controlReset(u32 BaseAddr, u8 resetval){
    DOUG_CUSTOM_mWriteReg(BaseAddr, 2*4, (u32) resetval);
}