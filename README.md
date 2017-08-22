# branchPredictor

Branch prediction is used to overcome the fetch limitation imposed by control hazards in order to expose instruction level parallelism (ILP). Branch prediction can be thought as a sophisticated form of prefetch or a limited form of data prediction that attempts to predict the result of branch instructions so that a processor can speculatively fetch across basic block boundaries. Once a prediction is made, the processor can speculatively execute instructions depending on the predicted outcome of the branch. If branch predictions rates are high enough to offset misprediction penalties, the processor will have better performance. Without branch prediction, such a processor must stall whenever there are unresolved branch instructions. This imposes a substantial penalty on performance of processors.

The task in this project is hardware implementation of several dynamic branch predictors in VHDL and compare their performance. Branch prediction schemes are:
i. 1-bit Branch Prediction
ii. 2-bit Branch Prediction (2-bit saturating counters)
iii. (4,2) correlating predictor (4-bit global branch history register and 2-bit counters)


The method used for this project was the following:
• Review of the concept of branch predictor using the textbook (2)
• Design of the first 1-bit predictor using an array instead of counters to simplify the first step.
• Implementation in VHDL on ModelSim of the design
• Design of the 1-bit predictor using only basic units such as counters, multi-
plexer, comparator and demultiplexer.
• Design of the 2-bit counter
• Implementation of the 2-bit predictor using the previous created blocs and the 2-bit saturating counter.
• Review of correlating predictor
• Design of the (4,2) correlating predictor
• Implementation using previous blocks and the new ones needed, such as global branch history shift register.

