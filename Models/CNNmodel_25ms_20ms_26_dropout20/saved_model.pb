±Х
Ѓэ
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

ы
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%Ј—8"&
exponential_avg_factorfloat%  А?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
В
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
Ѕ
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring И®
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.11.02v2.11.0-rc2-17-gd5b57ca93e58£€
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
~
Adam/v/Softmax/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/v/Softmax/bias
w
'Adam/v/Softmax/bias/Read/ReadVariableOpReadVariableOpAdam/v/Softmax/bias*
_output_shapes
:*
dtype0
~
Adam/m/Softmax/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/m/Softmax/bias
w
'Adam/m/Softmax/bias/Read/ReadVariableOpReadVariableOpAdam/m/Softmax/bias*
_output_shapes
:*
dtype0
З
Adam/v/Softmax/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*&
shared_nameAdam/v/Softmax/kernel
А
)Adam/v/Softmax/kernel/Read/ReadVariableOpReadVariableOpAdam/v/Softmax/kernel*
_output_shapes
:	А*
dtype0
З
Adam/m/Softmax/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*&
shared_nameAdam/m/Softmax/kernel
А
)Adam/m/Softmax/kernel/Read/ReadVariableOpReadVariableOpAdam/m/Softmax/kernel*
_output_shapes
:	А*
dtype0
}
Adam/v/Dense3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*#
shared_nameAdam/v/Dense3/bias
v
&Adam/v/Dense3/bias/Read/ReadVariableOpReadVariableOpAdam/v/Dense3/bias*
_output_shapes	
:А*
dtype0
}
Adam/m/Dense3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*#
shared_nameAdam/m/Dense3/bias
v
&Adam/m/Dense3/bias/Read/ReadVariableOpReadVariableOpAdam/m/Dense3/bias*
_output_shapes	
:А*
dtype0
Ж
Adam/v/Dense3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*%
shared_nameAdam/v/Dense3/kernel

(Adam/v/Dense3/kernel/Read/ReadVariableOpReadVariableOpAdam/v/Dense3/kernel* 
_output_shapes
:
АА*
dtype0
Ж
Adam/m/Dense3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*%
shared_nameAdam/m/Dense3/kernel

(Adam/m/Dense3/kernel/Read/ReadVariableOpReadVariableOpAdam/m/Dense3/kernel* 
_output_shapes
:
АА*
dtype0
}
Adam/v/Dense2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*#
shared_nameAdam/v/Dense2/bias
v
&Adam/v/Dense2/bias/Read/ReadVariableOpReadVariableOpAdam/v/Dense2/bias*
_output_shapes	
:А*
dtype0
}
Adam/m/Dense2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*#
shared_nameAdam/m/Dense2/bias
v
&Adam/m/Dense2/bias/Read/ReadVariableOpReadVariableOpAdam/m/Dense2/bias*
_output_shapes	
:А*
dtype0
Ж
Adam/v/Dense2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*%
shared_nameAdam/v/Dense2/kernel

(Adam/v/Dense2/kernel/Read/ReadVariableOpReadVariableOpAdam/v/Dense2/kernel* 
_output_shapes
:
АА*
dtype0
Ж
Adam/m/Dense2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*%
shared_nameAdam/m/Dense2/kernel

(Adam/m/Dense2/kernel/Read/ReadVariableOpReadVariableOpAdam/m/Dense2/kernel* 
_output_shapes
:
АА*
dtype0
}
Adam/v/Dense1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*#
shared_nameAdam/v/Dense1/bias
v
&Adam/v/Dense1/bias/Read/ReadVariableOpReadVariableOpAdam/v/Dense1/bias*
_output_shapes	
:А*
dtype0
}
Adam/m/Dense1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*#
shared_nameAdam/m/Dense1/bias
v
&Adam/m/Dense1/bias/Read/ReadVariableOpReadVariableOpAdam/m/Dense1/bias*
_output_shapes	
:А*
dtype0
Е
Adam/v/Dense1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 А*%
shared_nameAdam/v/Dense1/kernel
~
(Adam/v/Dense1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/Dense1/kernel*
_output_shapes
:	 А*
dtype0
Е
Adam/m/Dense1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 А*%
shared_nameAdam/m/Dense1/kernel
~
(Adam/m/Dense1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/Dense1/kernel*
_output_shapes
:	 А*
dtype0
|
Adam/v/Linear/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/v/Linear/bias
u
&Adam/v/Linear/bias/Read/ReadVariableOpReadVariableOpAdam/v/Linear/bias*
_output_shapes
: *
dtype0
|
Adam/m/Linear/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/m/Linear/bias
u
&Adam/m/Linear/bias/Read/ReadVariableOpReadVariableOpAdam/m/Linear/bias*
_output_shapes
: *
dtype0
Ж
Adam/v/Linear/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
÷о *%
shared_nameAdam/v/Linear/kernel

(Adam/v/Linear/kernel/Read/ReadVariableOpReadVariableOpAdam/v/Linear/kernel* 
_output_shapes
:
÷о *
dtype0
Ж
Adam/m/Linear/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
÷о *%
shared_nameAdam/m/Linear/kernel

(Adam/m/Linear/kernel/Read/ReadVariableOpReadVariableOpAdam/m/Linear/kernel* 
_output_shapes
:
÷о *
dtype0
Ъ
!Adam/v/batch_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:^*2
shared_name#!Adam/v/batch_normalization_3/beta
У
5Adam/v/batch_normalization_3/beta/Read/ReadVariableOpReadVariableOp!Adam/v/batch_normalization_3/beta*
_output_shapes
:^*
dtype0
Ъ
!Adam/m/batch_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:^*2
shared_name#!Adam/m/batch_normalization_3/beta
У
5Adam/m/batch_normalization_3/beta/Read/ReadVariableOpReadVariableOp!Adam/m/batch_normalization_3/beta*
_output_shapes
:^*
dtype0
Ь
"Adam/v/batch_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:^*3
shared_name$"Adam/v/batch_normalization_3/gamma
Х
6Adam/v/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_3/gamma*
_output_shapes
:^*
dtype0
Ь
"Adam/m/batch_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:^*3
shared_name$"Adam/m/batch_normalization_3/gamma
Х
6Adam/m/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_3/gamma*
_output_shapes
:^*
dtype0
Ж
Adam/v/Second_Conv/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:^*(
shared_nameAdam/v/Second_Conv/bias

+Adam/v/Second_Conv/bias/Read/ReadVariableOpReadVariableOpAdam/v/Second_Conv/bias*
_output_shapes
:^*
dtype0
Ж
Adam/m/Second_Conv/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:^*(
shared_nameAdam/m/Second_Conv/bias

+Adam/m/Second_Conv/bias/Read/ReadVariableOpReadVariableOpAdam/m/Second_Conv/bias*
_output_shapes
:^*
dtype0
Ц
Adam/v/Second_Conv/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
^^**
shared_nameAdam/v/Second_Conv/kernel
П
-Adam/v/Second_Conv/kernel/Read/ReadVariableOpReadVariableOpAdam/v/Second_Conv/kernel*&
_output_shapes
:
^^*
dtype0
Ц
Adam/m/Second_Conv/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
^^**
shared_nameAdam/m/Second_Conv/kernel
П
-Adam/m/Second_Conv/kernel/Read/ReadVariableOpReadVariableOpAdam/m/Second_Conv/kernel*&
_output_shapes
:
^^*
dtype0
Ъ
!Adam/v/batch_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:^*2
shared_name#!Adam/v/batch_normalization_2/beta
У
5Adam/v/batch_normalization_2/beta/Read/ReadVariableOpReadVariableOp!Adam/v/batch_normalization_2/beta*
_output_shapes
:^*
dtype0
Ъ
!Adam/m/batch_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:^*2
shared_name#!Adam/m/batch_normalization_2/beta
У
5Adam/m/batch_normalization_2/beta/Read/ReadVariableOpReadVariableOp!Adam/m/batch_normalization_2/beta*
_output_shapes
:^*
dtype0
Ь
"Adam/v/batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:^*3
shared_name$"Adam/v/batch_normalization_2/gamma
Х
6Adam/v/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_2/gamma*
_output_shapes
:^*
dtype0
Ь
"Adam/m/batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:^*3
shared_name$"Adam/m/batch_normalization_2/gamma
Х
6Adam/m/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_2/gamma*
_output_shapes
:^*
dtype0
Д
Adam/v/First_Conv/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:^*'
shared_nameAdam/v/First_Conv/bias
}
*Adam/v/First_Conv/bias/Read/ReadVariableOpReadVariableOpAdam/v/First_Conv/bias*
_output_shapes
:^*
dtype0
Д
Adam/m/First_Conv/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:^*'
shared_nameAdam/m/First_Conv/bias
}
*Adam/m/First_Conv/bias/Read/ReadVariableOpReadVariableOpAdam/m/First_Conv/bias*
_output_shapes
:^*
dtype0
Ф
Adam/v/First_Conv/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:!^*)
shared_nameAdam/v/First_Conv/kernel
Н
,Adam/v/First_Conv/kernel/Read/ReadVariableOpReadVariableOpAdam/v/First_Conv/kernel*&
_output_shapes
:!^*
dtype0
Ф
Adam/m/First_Conv/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:!^*)
shared_nameAdam/m/First_Conv/kernel
Н
,Adam/m/First_Conv/kernel/Read/ReadVariableOpReadVariableOpAdam/m/First_Conv/kernel*&
_output_shapes
:!^*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
p
Softmax/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameSoftmax/bias
i
 Softmax/bias/Read/ReadVariableOpReadVariableOpSoftmax/bias*
_output_shapes
:*
dtype0
y
Softmax/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*
shared_nameSoftmax/kernel
r
"Softmax/kernel/Read/ReadVariableOpReadVariableOpSoftmax/kernel*
_output_shapes
:	А*
dtype0
o
Dense3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameDense3/bias
h
Dense3/bias/Read/ReadVariableOpReadVariableOpDense3/bias*
_output_shapes	
:А*
dtype0
x
Dense3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*
shared_nameDense3/kernel
q
!Dense3/kernel/Read/ReadVariableOpReadVariableOpDense3/kernel* 
_output_shapes
:
АА*
dtype0
o
Dense2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameDense2/bias
h
Dense2/bias/Read/ReadVariableOpReadVariableOpDense2/bias*
_output_shapes	
:А*
dtype0
x
Dense2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*
shared_nameDense2/kernel
q
!Dense2/kernel/Read/ReadVariableOpReadVariableOpDense2/kernel* 
_output_shapes
:
АА*
dtype0
o
Dense1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameDense1/bias
h
Dense1/bias/Read/ReadVariableOpReadVariableOpDense1/bias*
_output_shapes	
:А*
dtype0
w
Dense1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 А*
shared_nameDense1/kernel
p
!Dense1/kernel/Read/ReadVariableOpReadVariableOpDense1/kernel*
_output_shapes
:	 А*
dtype0
n
Linear/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameLinear/bias
g
Linear/bias/Read/ReadVariableOpReadVariableOpLinear/bias*
_output_shapes
: *
dtype0
x
Linear/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
÷о *
shared_nameLinear/kernel
q
!Linear/kernel/Read/ReadVariableOpReadVariableOpLinear/kernel* 
_output_shapes
:
÷о *
dtype0
Ґ
%batch_normalization_3/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:^*6
shared_name'%batch_normalization_3/moving_variance
Ы
9batch_normalization_3/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_3/moving_variance*
_output_shapes
:^*
dtype0
Ъ
!batch_normalization_3/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:^*2
shared_name#!batch_normalization_3/moving_mean
У
5batch_normalization_3/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_3/moving_mean*
_output_shapes
:^*
dtype0
М
batch_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:^*+
shared_namebatch_normalization_3/beta
Е
.batch_normalization_3/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_3/beta*
_output_shapes
:^*
dtype0
О
batch_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:^*,
shared_namebatch_normalization_3/gamma
З
/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_3/gamma*
_output_shapes
:^*
dtype0
x
Second_Conv/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:^*!
shared_nameSecond_Conv/bias
q
$Second_Conv/bias/Read/ReadVariableOpReadVariableOpSecond_Conv/bias*
_output_shapes
:^*
dtype0
И
Second_Conv/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
^^*#
shared_nameSecond_Conv/kernel
Б
&Second_Conv/kernel/Read/ReadVariableOpReadVariableOpSecond_Conv/kernel*&
_output_shapes
:
^^*
dtype0
Ґ
%batch_normalization_2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:^*6
shared_name'%batch_normalization_2/moving_variance
Ы
9batch_normalization_2/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_2/moving_variance*
_output_shapes
:^*
dtype0
Ъ
!batch_normalization_2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:^*2
shared_name#!batch_normalization_2/moving_mean
У
5batch_normalization_2/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_2/moving_mean*
_output_shapes
:^*
dtype0
М
batch_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:^*+
shared_namebatch_normalization_2/beta
Е
.batch_normalization_2/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_2/beta*
_output_shapes
:^*
dtype0
О
batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:^*,
shared_namebatch_normalization_2/gamma
З
/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_2/gamma*
_output_shapes
:^*
dtype0
v
First_Conv/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:^* 
shared_nameFirst_Conv/bias
o
#First_Conv/bias/Read/ReadVariableOpReadVariableOpFirst_Conv/bias*
_output_shapes
:^*
dtype0
Ж
First_Conv/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:!^*"
shared_nameFirst_Conv/kernel

%First_Conv/kernel/Read/ReadVariableOpReadVariableOpFirst_Conv/kernel*&
_output_shapes
:!^*
dtype0
К
serving_default_input_2Placeholder*/
_output_shapes
:€€€€€€€€€2'*
dtype0*$
shape:€€€€€€€€€2'
Љ
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_2First_Conv/kernelFirst_Conv/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_varianceSecond_Conv/kernelSecond_Conv/biasbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_varianceLinear/kernelLinear/biasDense1/kernelDense1/biasDense2/kernelDense2/biasDense3/kernelDense3/biasSoftmax/kernelSoftmax/bias*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *-
f(R&
$__inference_signature_wrapper_228424

NoOpNoOp
ЇК
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*фЙ
valueйЙBеЙ BЁЙ
М
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer-10
layer_with_weights-4
layer-11
layer_with_weights-5
layer-12
layer_with_weights-6
layer-13
layer_with_weights-7
layer-14
layer_with_weights-8
layer-15
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
»
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

 kernel
!bias
 "_jit_compiled_convolution_op*
•
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses
)_random_generator* 
’
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses
0axis
	1gamma
2beta
3moving_mean
4moving_variance*
О
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses* 
О
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses* 
»
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses

Gkernel
Hbias
 I_jit_compiled_convolution_op*
•
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses
P_random_generator* 
’
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses
Waxis
	Xgamma
Ybeta
Zmoving_mean
[moving_variance*
О
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses* 
О
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses* 
¶
h	variables
itrainable_variables
jregularization_losses
k	keras_api
l__call__
*m&call_and_return_all_conditional_losses

nkernel
obias*
¶
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses

vkernel
wbias*
¶
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|__call__
*}&call_and_return_all_conditional_losses

~kernel
bias*
Ѓ
А	variables
Бtrainable_variables
Вregularization_losses
Г	keras_api
Д__call__
+Е&call_and_return_all_conditional_losses
Жkernel
	Зbias*
Ѓ
И	variables
Йtrainable_variables
Кregularization_losses
Л	keras_api
М__call__
+Н&call_and_return_all_conditional_losses
Оkernel
	Пbias*
Ѓ
 0
!1
12
23
34
45
G6
H7
X8
Y9
Z10
[11
n12
o13
v14
w15
~16
17
Ж18
З19
О20
П21*
О
 0
!1
12
23
G4
H5
X6
Y7
n8
o9
v10
w11
~12
13
Ж14
З15
О16
П17*
* 
µ
Рnon_trainable_variables
Сlayers
Тmetrics
 Уlayer_regularization_losses
Фlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
Хtrace_0
Цtrace_1
Чtrace_2
Шtrace_3* 
:
Щtrace_0
Ъtrace_1
Ыtrace_2
Ьtrace_3* 
* 
И
Э
_variables
Ю_iterations
Я_learning_rate
†_index_dict
°
_momentums
Ґ_velocities
£_update_step_xla*

§serving_default* 

 0
!1*

 0
!1*
* 
Ш
•non_trainable_variables
¶layers
Іmetrics
 ®layer_regularization_losses
©layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

™trace_0* 

Ђtrace_0* 
a[
VARIABLE_VALUEFirst_Conv/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEFirst_Conv/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
ђnon_trainable_variables
≠layers
Ѓmetrics
 ѓlayer_regularization_losses
∞layer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses* 

±trace_0
≤trace_1* 

≥trace_0
іtrace_1* 
* 
 
10
21
32
43*

10
21*
* 
Ш
µnon_trainable_variables
ґlayers
Јmetrics
 Єlayer_regularization_losses
єlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses*

Їtrace_0
їtrace_1* 

Љtrace_0
љtrace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_2/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_2/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_2/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_2/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ц
Њnon_trainable_variables
њlayers
јmetrics
 Ѕlayer_regularization_losses
¬layer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses* 

√trace_0* 

ƒtrace_0* 
* 
* 
* 
Ц
≈non_trainable_variables
∆layers
«metrics
 »layer_regularization_losses
…layer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses* 

 trace_0* 

Ћtrace_0* 

G0
H1*

G0
H1*
* 
Ш
ћnon_trainable_variables
Ќlayers
ќmetrics
 ѕlayer_regularization_losses
–layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses*

—trace_0* 

“trace_0* 
b\
VARIABLE_VALUESecond_Conv/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUESecond_Conv/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
”non_trainable_variables
‘layers
’metrics
 ÷layer_regularization_losses
„layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses* 

Ўtrace_0
ўtrace_1* 

Џtrace_0
џtrace_1* 
* 
 
X0
Y1
Z2
[3*

X0
Y1*
* 
Ш
№non_trainable_variables
Ёlayers
ёmetrics
 яlayer_regularization_losses
аlayer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses*

бtrace_0
вtrace_1* 

гtrace_0
дtrace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_3/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_3/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_3/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_3/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ц
еnon_trainable_variables
жlayers
зmetrics
 иlayer_regularization_losses
йlayer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses* 

кtrace_0* 

лtrace_0* 
* 
* 
* 
Ц
мnon_trainable_variables
нlayers
оmetrics
 пlayer_regularization_losses
рlayer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses* 

сtrace_0* 

тtrace_0* 

n0
o1*

n0
o1*
* 
Ш
уnon_trainable_variables
фlayers
хmetrics
 цlayer_regularization_losses
чlayer_metrics
h	variables
itrainable_variables
jregularization_losses
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses*

шtrace_0* 

щtrace_0* 
]W
VARIABLE_VALUELinear/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUELinear/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

v0
w1*

v0
w1*
* 
Ш
ъnon_trainable_variables
ыlayers
ьmetrics
 эlayer_regularization_losses
юlayer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses*

€trace_0* 

Аtrace_0* 
]W
VARIABLE_VALUEDense1/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEDense1/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

~0
1*

~0
1*
* 
Ш
Бnon_trainable_variables
Вlayers
Гmetrics
 Дlayer_regularization_losses
Еlayer_metrics
x	variables
ytrainable_variables
zregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses*

Жtrace_0* 

Зtrace_0* 
]W
VARIABLE_VALUEDense2/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEDense2/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*

Ж0
З1*

Ж0
З1*
* 
Ю
Иnon_trainable_variables
Йlayers
Кmetrics
 Лlayer_regularization_losses
Мlayer_metrics
А	variables
Бtrainable_variables
Вregularization_losses
Д__call__
+Е&call_and_return_all_conditional_losses
'Е"call_and_return_conditional_losses*

Нtrace_0* 

Оtrace_0* 
]W
VARIABLE_VALUEDense3/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEDense3/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*

О0
П1*

О0
П1*
* 
Ю
Пnon_trainable_variables
Рlayers
Сmetrics
 Тlayer_regularization_losses
Уlayer_metrics
И	variables
Йtrainable_variables
Кregularization_losses
М__call__
+Н&call_and_return_all_conditional_losses
'Н"call_and_return_conditional_losses*

Фtrace_0* 

Хtrace_0* 
^X
VARIABLE_VALUESoftmax/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUESoftmax/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
 
30
41
Z2
[3*
z
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15*

Ц0
Ч1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
«
Ю0
Ш1
Щ2
Ъ3
Ы4
Ь5
Э6
Ю7
Я8
†9
°10
Ґ11
£12
§13
•14
¶15
І16
®17
©18
™19
Ђ20
ђ21
≠22
Ѓ23
ѓ24
∞25
±26
≤27
≥28
і29
µ30
ґ31
Ј32
Є33
є34
Ї35
ї36*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
Ь
Ш0
Ъ1
Ь2
Ю3
†4
Ґ5
§6
¶7
®8
™9
ђ10
Ѓ11
∞12
≤13
і14
ґ15
Є16
Ї17*
Ь
Щ0
Ы1
Э2
Я3
°4
£5
•6
І7
©8
Ђ9
≠10
ѓ11
±12
≥13
µ14
Ј15
є16
ї17*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

30
41*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

Z0
[1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
Љ	variables
љ	keras_api

Њtotal

њcount*
M
ј	variables
Ѕ	keras_api

¬total

√count
ƒ
_fn_kwargs*
c]
VARIABLE_VALUEAdam/m/First_Conv/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/First_Conv/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/First_Conv/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/First_Conv/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"Adam/m/batch_normalization_2/gamma1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"Adam/v/batch_normalization_2/gamma1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE!Adam/m/batch_normalization_2/beta1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE!Adam/v/batch_normalization_2/beta1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/m/Second_Conv/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/v/Second_Conv/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/Second_Conv/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/Second_Conv/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_3/gamma2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_3/gamma2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/m/batch_normalization_3/beta2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/v/batch_normalization_3/beta2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/Linear/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/Linear/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/m/Linear/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/v/Linear/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/Dense1/kernel2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/Dense1/kernel2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/m/Dense1/bias2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/v/Dense1/bias2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/Dense2/kernel2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/Dense2/kernel2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/m/Dense2/bias2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/v/Dense2/bias2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/Dense3/kernel2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/Dense3/kernel2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/m/Dense3/bias2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/v/Dense3/bias2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/Softmax/kernel2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/Softmax/kernel2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/Softmax/bias2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/Softmax/bias2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUE*

Њ0
њ1*

Љ	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

¬0
√1*

ј	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Г
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%First_Conv/kernel/Read/ReadVariableOp#First_Conv/bias/Read/ReadVariableOp/batch_normalization_2/gamma/Read/ReadVariableOp.batch_normalization_2/beta/Read/ReadVariableOp5batch_normalization_2/moving_mean/Read/ReadVariableOp9batch_normalization_2/moving_variance/Read/ReadVariableOp&Second_Conv/kernel/Read/ReadVariableOp$Second_Conv/bias/Read/ReadVariableOp/batch_normalization_3/gamma/Read/ReadVariableOp.batch_normalization_3/beta/Read/ReadVariableOp5batch_normalization_3/moving_mean/Read/ReadVariableOp9batch_normalization_3/moving_variance/Read/ReadVariableOp!Linear/kernel/Read/ReadVariableOpLinear/bias/Read/ReadVariableOp!Dense1/kernel/Read/ReadVariableOpDense1/bias/Read/ReadVariableOp!Dense2/kernel/Read/ReadVariableOpDense2/bias/Read/ReadVariableOp!Dense3/kernel/Read/ReadVariableOpDense3/bias/Read/ReadVariableOp"Softmax/kernel/Read/ReadVariableOp Softmax/bias/Read/ReadVariableOpiteration/Read/ReadVariableOp!learning_rate/Read/ReadVariableOp,Adam/m/First_Conv/kernel/Read/ReadVariableOp,Adam/v/First_Conv/kernel/Read/ReadVariableOp*Adam/m/First_Conv/bias/Read/ReadVariableOp*Adam/v/First_Conv/bias/Read/ReadVariableOp6Adam/m/batch_normalization_2/gamma/Read/ReadVariableOp6Adam/v/batch_normalization_2/gamma/Read/ReadVariableOp5Adam/m/batch_normalization_2/beta/Read/ReadVariableOp5Adam/v/batch_normalization_2/beta/Read/ReadVariableOp-Adam/m/Second_Conv/kernel/Read/ReadVariableOp-Adam/v/Second_Conv/kernel/Read/ReadVariableOp+Adam/m/Second_Conv/bias/Read/ReadVariableOp+Adam/v/Second_Conv/bias/Read/ReadVariableOp6Adam/m/batch_normalization_3/gamma/Read/ReadVariableOp6Adam/v/batch_normalization_3/gamma/Read/ReadVariableOp5Adam/m/batch_normalization_3/beta/Read/ReadVariableOp5Adam/v/batch_normalization_3/beta/Read/ReadVariableOp(Adam/m/Linear/kernel/Read/ReadVariableOp(Adam/v/Linear/kernel/Read/ReadVariableOp&Adam/m/Linear/bias/Read/ReadVariableOp&Adam/v/Linear/bias/Read/ReadVariableOp(Adam/m/Dense1/kernel/Read/ReadVariableOp(Adam/v/Dense1/kernel/Read/ReadVariableOp&Adam/m/Dense1/bias/Read/ReadVariableOp&Adam/v/Dense1/bias/Read/ReadVariableOp(Adam/m/Dense2/kernel/Read/ReadVariableOp(Adam/v/Dense2/kernel/Read/ReadVariableOp&Adam/m/Dense2/bias/Read/ReadVariableOp&Adam/v/Dense2/bias/Read/ReadVariableOp(Adam/m/Dense3/kernel/Read/ReadVariableOp(Adam/v/Dense3/kernel/Read/ReadVariableOp&Adam/m/Dense3/bias/Read/ReadVariableOp&Adam/v/Dense3/bias/Read/ReadVariableOp)Adam/m/Softmax/kernel/Read/ReadVariableOp)Adam/v/Softmax/kernel/Read/ReadVariableOp'Adam/m/Softmax/bias/Read/ReadVariableOp'Adam/v/Softmax/bias/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*M
TinF
D2B	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *(
f#R!
__inference__traced_save_229277
ю
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameFirst_Conv/kernelFirst_Conv/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_varianceSecond_Conv/kernelSecond_Conv/biasbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_varianceLinear/kernelLinear/biasDense1/kernelDense1/biasDense2/kernelDense2/biasDense3/kernelDense3/biasSoftmax/kernelSoftmax/bias	iterationlearning_rateAdam/m/First_Conv/kernelAdam/v/First_Conv/kernelAdam/m/First_Conv/biasAdam/v/First_Conv/bias"Adam/m/batch_normalization_2/gamma"Adam/v/batch_normalization_2/gamma!Adam/m/batch_normalization_2/beta!Adam/v/batch_normalization_2/betaAdam/m/Second_Conv/kernelAdam/v/Second_Conv/kernelAdam/m/Second_Conv/biasAdam/v/Second_Conv/bias"Adam/m/batch_normalization_3/gamma"Adam/v/batch_normalization_3/gamma!Adam/m/batch_normalization_3/beta!Adam/v/batch_normalization_3/betaAdam/m/Linear/kernelAdam/v/Linear/kernelAdam/m/Linear/biasAdam/v/Linear/biasAdam/m/Dense1/kernelAdam/v/Dense1/kernelAdam/m/Dense1/biasAdam/v/Dense1/biasAdam/m/Dense2/kernelAdam/v/Dense2/kernelAdam/m/Dense2/biasAdam/v/Dense2/biasAdam/m/Dense3/kernelAdam/v/Dense3/kernelAdam/m/Dense3/biasAdam/v/Dense3/biasAdam/m/Softmax/kernelAdam/v/Softmax/kernelAdam/m/Softmax/biasAdam/v/Softmax/biastotal_1count_1totalcount*L
TinE
C2A*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *+
f&R$
"__inference__traced_restore_229479у√
м
d
H__inference_activation_2_layer_call_and_return_conditional_losses_228834

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:€€€€€€€€€^b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€^"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€^:W S
/
_output_shapes
:€€€€€€€€€^
 
_user_specified_nameinputs
ЁВ
њ
C__inference_KWS_CNN_layer_call_and_return_conditional_losses_228706

inputsC
)first_conv_conv2d_readvariableop_resource:!^8
*first_conv_biasadd_readvariableop_resource:^;
-batch_normalization_2_readvariableop_resource:^=
/batch_normalization_2_readvariableop_1_resource:^L
>batch_normalization_2_fusedbatchnormv3_readvariableop_resource:^N
@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource:^D
*second_conv_conv2d_readvariableop_resource:
^^9
+second_conv_biasadd_readvariableop_resource:^;
-batch_normalization_3_readvariableop_resource:^=
/batch_normalization_3_readvariableop_1_resource:^L
>batch_normalization_3_fusedbatchnormv3_readvariableop_resource:^N
@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource:^9
%linear_matmul_readvariableop_resource:
÷о 4
&linear_biasadd_readvariableop_resource: 8
%dense1_matmul_readvariableop_resource:	 А5
&dense1_biasadd_readvariableop_resource:	А9
%dense2_matmul_readvariableop_resource:
АА5
&dense2_biasadd_readvariableop_resource:	А9
%dense3_matmul_readvariableop_resource:
АА5
&dense3_biasadd_readvariableop_resource:	А9
&softmax_matmul_readvariableop_resource:	А5
'softmax_biasadd_readvariableop_resource:
identityИҐDense1/BiasAdd/ReadVariableOpҐDense1/MatMul/ReadVariableOpҐDense2/BiasAdd/ReadVariableOpҐDense2/MatMul/ReadVariableOpҐDense3/BiasAdd/ReadVariableOpҐDense3/MatMul/ReadVariableOpҐ!First_Conv/BiasAdd/ReadVariableOpҐ First_Conv/Conv2D/ReadVariableOpҐLinear/BiasAdd/ReadVariableOpҐLinear/MatMul/ReadVariableOpҐ"Second_Conv/BiasAdd/ReadVariableOpҐ!Second_Conv/Conv2D/ReadVariableOpҐSoftmax/BiasAdd/ReadVariableOpҐSoftmax/MatMul/ReadVariableOpҐ$batch_normalization_2/AssignNewValueҐ&batch_normalization_2/AssignNewValue_1Ґ5batch_normalization_2/FusedBatchNormV3/ReadVariableOpҐ7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1Ґ$batch_normalization_2/ReadVariableOpҐ&batch_normalization_2/ReadVariableOp_1Ґ$batch_normalization_3/AssignNewValueҐ&batch_normalization_3/AssignNewValue_1Ґ5batch_normalization_3/FusedBatchNormV3/ReadVariableOpҐ7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1Ґ$batch_normalization_3/ReadVariableOpҐ&batch_normalization_3/ReadVariableOp_1Т
 First_Conv/Conv2D/ReadVariableOpReadVariableOp)first_conv_conv2d_readvariableop_resource*&
_output_shapes
:!^*
dtype0ѓ
First_Conv/Conv2DConv2Dinputs(First_Conv/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€2'^*
paddingSAME*
strides
И
!First_Conv/BiasAdd/ReadVariableOpReadVariableOp*first_conv_biasadd_readvariableop_resource*
_output_shapes
:^*
dtype0Ю
First_Conv/BiasAddBiasAddFirst_Conv/Conv2D:output:0)First_Conv/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€2'^\
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?Х
dropout_2/dropout/MulMulFirst_Conv/BiasAdd:output:0 dropout_2/dropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€2'^b
dropout_2/dropout/ShapeShapeFirst_Conv/BiasAdd:output:0*
T0*
_output_shapes
:®
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€2'^*
dtype0e
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>ћ
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€2'^^
dropout_2/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    √
dropout_2/dropout/SelectV2SelectV2"dropout_2/dropout/GreaterEqual:z:0dropout_2/dropout/Mul:z:0"dropout_2/dropout/Const_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€2'^О
$batch_normalization_2/ReadVariableOpReadVariableOp-batch_normalization_2_readvariableop_resource*
_output_shapes
:^*
dtype0Т
&batch_normalization_2/ReadVariableOp_1ReadVariableOp/batch_normalization_2_readvariableop_1_resource*
_output_shapes
:^*
dtype0∞
5batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:^*
dtype0і
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:^*
dtype0ѕ
&batch_normalization_2/FusedBatchNormV3FusedBatchNormV3#dropout_2/dropout/SelectV2:output:0,batch_normalization_2/ReadVariableOp:value:0.batch_normalization_2/ReadVariableOp_1:value:0=batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€2'^:^:^:^:^:*
epsilon%oГ:*
exponential_avg_factor%
„#<Ю
$batch_normalization_2/AssignNewValueAssignVariableOp>batch_normalization_2_fusedbatchnormv3_readvariableop_resource3batch_normalization_2/FusedBatchNormV3:batch_mean:06^batch_normalization_2/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(®
&batch_normalization_2/AssignNewValue_1AssignVariableOp@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_2/FusedBatchNormV3:batch_variance:08^batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(ґ
MaxPooling/MaxPoolMaxPool*batch_normalization_2/FusedBatchNormV3:y:0*/
_output_shapes
:€€€€€€€€€^*
ksize
*
paddingVALID*
strides
p
activation_2/ReluReluMaxPooling/MaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€^Ф
!Second_Conv/Conv2D/ReadVariableOpReadVariableOp*second_conv_conv2d_readvariableop_resource*&
_output_shapes
:
^^*
dtype0 
Second_Conv/Conv2DConv2Dactivation_2/Relu:activations:0)Second_Conv/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€^*
paddingSAME*
strides
К
"Second_Conv/BiasAdd/ReadVariableOpReadVariableOp+second_conv_biasadd_readvariableop_resource*
_output_shapes
:^*
dtype0°
Second_Conv/BiasAddBiasAddSecond_Conv/Conv2D:output:0*Second_Conv/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€^\
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?Ц
dropout_3/dropout/MulMulSecond_Conv/BiasAdd:output:0 dropout_3/dropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€^c
dropout_3/dropout/ShapeShapeSecond_Conv/BiasAdd:output:0*
T0*
_output_shapes
:®
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€^*
dtype0e
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>ћ
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€^^
dropout_3/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    √
dropout_3/dropout/SelectV2SelectV2"dropout_3/dropout/GreaterEqual:z:0dropout_3/dropout/Mul:z:0"dropout_3/dropout/Const_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€^О
$batch_normalization_3/ReadVariableOpReadVariableOp-batch_normalization_3_readvariableop_resource*
_output_shapes
:^*
dtype0Т
&batch_normalization_3/ReadVariableOp_1ReadVariableOp/batch_normalization_3_readvariableop_1_resource*
_output_shapes
:^*
dtype0∞
5batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:^*
dtype0і
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:^*
dtype0ѕ
&batch_normalization_3/FusedBatchNormV3FusedBatchNormV3#dropout_3/dropout/SelectV2:output:0,batch_normalization_3/ReadVariableOp:value:0.batch_normalization_3/ReadVariableOp_1:value:0=batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€^:^:^:^:^:*
epsilon%oГ:*
exponential_avg_factor%
„#<Ю
$batch_normalization_3/AssignNewValueAssignVariableOp>batch_normalization_3_fusedbatchnormv3_readvariableop_resource3batch_normalization_3/FusedBatchNormV3:batch_mean:06^batch_normalization_3/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(®
&batch_normalization_3/AssignNewValue_1AssignVariableOp@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_3/FusedBatchNormV3:batch_variance:08^batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(
activation_3/ReluRelu*batch_normalization_3/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:€€€€€€€€€^`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€Vw  Л
flatten_1/ReshapeReshapeactivation_3/Relu:activations:0flatten_1/Const:output:0*
T0*)
_output_shapes
:€€€€€€€€€÷оД
Linear/MatMul/ReadVariableOpReadVariableOp%linear_matmul_readvariableop_resource* 
_output_shapes
:
÷о *
dtype0Л
Linear/MatMulMatMulflatten_1/Reshape:output:0$Linear/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ А
Linear/BiasAdd/ReadVariableOpReadVariableOp&linear_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Л
Linear/BiasAddBiasAddLinear/MatMul:product:0%Linear/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ Г
Dense1/MatMul/ReadVariableOpReadVariableOp%dense1_matmul_readvariableop_resource*
_output_shapes
:	 А*
dtype0Й
Dense1/MatMulMatMulLinear/BiasAdd:output:0$Dense1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АБ
Dense1/BiasAdd/ReadVariableOpReadVariableOp&dense1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0М
Dense1/BiasAddBiasAddDense1/MatMul:product:0%Dense1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А_
Dense1/ReluReluDense1/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€АД
Dense2/MatMul/ReadVariableOpReadVariableOp%dense2_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Л
Dense2/MatMulMatMulDense1/Relu:activations:0$Dense2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АБ
Dense2/BiasAdd/ReadVariableOpReadVariableOp&dense2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0М
Dense2/BiasAddBiasAddDense2/MatMul:product:0%Dense2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А_
Dense2/ReluReluDense2/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€АД
Dense3/MatMul/ReadVariableOpReadVariableOp%dense3_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Л
Dense3/MatMulMatMulDense2/Relu:activations:0$Dense3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АБ
Dense3/BiasAdd/ReadVariableOpReadVariableOp&dense3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0М
Dense3/BiasAddBiasAddDense3/MatMul:product:0%Dense3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А_
Dense3/ReluReluDense3/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€АЕ
Softmax/MatMul/ReadVariableOpReadVariableOp&softmax_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0М
Softmax/MatMulMatMulDense3/Relu:activations:0%Softmax/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€В
Softmax/BiasAdd/ReadVariableOpReadVariableOp'softmax_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
Softmax/BiasAddBiasAddSoftmax/MatMul:product:0&Softmax/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€f
Softmax/SoftmaxSoftmaxSoftmax/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€h
IdentityIdentitySoftmax/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Ј
NoOpNoOp^Dense1/BiasAdd/ReadVariableOp^Dense1/MatMul/ReadVariableOp^Dense2/BiasAdd/ReadVariableOp^Dense2/MatMul/ReadVariableOp^Dense3/BiasAdd/ReadVariableOp^Dense3/MatMul/ReadVariableOp"^First_Conv/BiasAdd/ReadVariableOp!^First_Conv/Conv2D/ReadVariableOp^Linear/BiasAdd/ReadVariableOp^Linear/MatMul/ReadVariableOp#^Second_Conv/BiasAdd/ReadVariableOp"^Second_Conv/Conv2D/ReadVariableOp^Softmax/BiasAdd/ReadVariableOp^Softmax/MatMul/ReadVariableOp%^batch_normalization_2/AssignNewValue'^batch_normalization_2/AssignNewValue_16^batch_normalization_2/FusedBatchNormV3/ReadVariableOp8^batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_2/ReadVariableOp'^batch_normalization_2/ReadVariableOp_1%^batch_normalization_3/AssignNewValue'^batch_normalization_3/AssignNewValue_16^batch_normalization_3/FusedBatchNormV3/ReadVariableOp8^batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_3/ReadVariableOp'^batch_normalization_3/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:€€€€€€€€€2': : : : : : : : : : : : : : : : : : : : : : 2>
Dense1/BiasAdd/ReadVariableOpDense1/BiasAdd/ReadVariableOp2<
Dense1/MatMul/ReadVariableOpDense1/MatMul/ReadVariableOp2>
Dense2/BiasAdd/ReadVariableOpDense2/BiasAdd/ReadVariableOp2<
Dense2/MatMul/ReadVariableOpDense2/MatMul/ReadVariableOp2>
Dense3/BiasAdd/ReadVariableOpDense3/BiasAdd/ReadVariableOp2<
Dense3/MatMul/ReadVariableOpDense3/MatMul/ReadVariableOp2F
!First_Conv/BiasAdd/ReadVariableOp!First_Conv/BiasAdd/ReadVariableOp2D
 First_Conv/Conv2D/ReadVariableOp First_Conv/Conv2D/ReadVariableOp2>
Linear/BiasAdd/ReadVariableOpLinear/BiasAdd/ReadVariableOp2<
Linear/MatMul/ReadVariableOpLinear/MatMul/ReadVariableOp2H
"Second_Conv/BiasAdd/ReadVariableOp"Second_Conv/BiasAdd/ReadVariableOp2F
!Second_Conv/Conv2D/ReadVariableOp!Second_Conv/Conv2D/ReadVariableOp2@
Softmax/BiasAdd/ReadVariableOpSoftmax/BiasAdd/ReadVariableOp2>
Softmax/MatMul/ReadVariableOpSoftmax/MatMul/ReadVariableOp2L
$batch_normalization_2/AssignNewValue$batch_normalization_2/AssignNewValue2P
&batch_normalization_2/AssignNewValue_1&batch_normalization_2/AssignNewValue_12n
5batch_normalization_2/FusedBatchNormV3/ReadVariableOp5batch_normalization_2/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_17batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_2/ReadVariableOp$batch_normalization_2/ReadVariableOp2P
&batch_normalization_2/ReadVariableOp_1&batch_normalization_2/ReadVariableOp_12L
$batch_normalization_3/AssignNewValue$batch_normalization_3/AssignNewValue2P
&batch_normalization_3/AssignNewValue_1&batch_normalization_3/AssignNewValue_12n
5batch_normalization_3/FusedBatchNormV3/ReadVariableOp5batch_normalization_3/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_17batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_3/ReadVariableOp$batch_normalization_3/ReadVariableOp2P
&batch_normalization_3/ReadVariableOp_1&batch_normalization_3/ReadVariableOp_1:W S
/
_output_shapes
:€€€€€€€€€2'
 
_user_specified_nameinputs
р
°
,__inference_Second_Conv_layer_call_fn_228843

inputs!
unknown:
^^
	unknown_0:^
identityИҐStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€^*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_Second_Conv_layer_call_and_return_conditional_losses_227732w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€^`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€^: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€^
 
_user_specified_nameinputs
≈
I
-__inference_activation_3_layer_call_fn_228947

inputs
identityї
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€^* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_activation_3_layer_call_and_return_conditional_losses_227759h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:€€€€€€€€€^"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€^:W S
/
_output_shapes
:€€€€€€€€€^
 
_user_specified_nameinputs
°

х
B__inference_Dense1_layer_call_and_return_conditional_losses_227796

inputs1
matmul_readvariableop_resource:	 А.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
м
d
H__inference_activation_2_layer_call_and_return_conditional_losses_227720

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:€€€€€€€€€^b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€^"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€^:W S
/
_output_shapes
:€€€€€€€€€^
 
_user_specified_nameinputs
С
c
*__inference_dropout_3_layer_call_fn_228863

inputs
identityИҐStatefulPartitionedCall»
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€^* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_227983w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€^`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€^22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€^
 
_user_specified_nameinputs
О
b
F__inference_MaxPooling_layer_call_and_return_conditional_losses_227608

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
©

€
F__inference_First_Conv_layer_call_and_return_conditional_losses_227692

inputs8
conv2d_readvariableop_resource:!^-
biasadd_readvariableop_resource:^
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:!^*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€2'^*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:^*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€2'^g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€2'^w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€2': : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€2'
 
_user_specified_nameinputs
ƒd
Я
C__inference_KWS_CNN_layer_call_and_return_conditional_losses_228607

inputsC
)first_conv_conv2d_readvariableop_resource:!^8
*first_conv_biasadd_readvariableop_resource:^;
-batch_normalization_2_readvariableop_resource:^=
/batch_normalization_2_readvariableop_1_resource:^L
>batch_normalization_2_fusedbatchnormv3_readvariableop_resource:^N
@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource:^D
*second_conv_conv2d_readvariableop_resource:
^^9
+second_conv_biasadd_readvariableop_resource:^;
-batch_normalization_3_readvariableop_resource:^=
/batch_normalization_3_readvariableop_1_resource:^L
>batch_normalization_3_fusedbatchnormv3_readvariableop_resource:^N
@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource:^9
%linear_matmul_readvariableop_resource:
÷о 4
&linear_biasadd_readvariableop_resource: 8
%dense1_matmul_readvariableop_resource:	 А5
&dense1_biasadd_readvariableop_resource:	А9
%dense2_matmul_readvariableop_resource:
АА5
&dense2_biasadd_readvariableop_resource:	А9
%dense3_matmul_readvariableop_resource:
АА5
&dense3_biasadd_readvariableop_resource:	А9
&softmax_matmul_readvariableop_resource:	А5
'softmax_biasadd_readvariableop_resource:
identityИҐDense1/BiasAdd/ReadVariableOpҐDense1/MatMul/ReadVariableOpҐDense2/BiasAdd/ReadVariableOpҐDense2/MatMul/ReadVariableOpҐDense3/BiasAdd/ReadVariableOpҐDense3/MatMul/ReadVariableOpҐ!First_Conv/BiasAdd/ReadVariableOpҐ First_Conv/Conv2D/ReadVariableOpҐLinear/BiasAdd/ReadVariableOpҐLinear/MatMul/ReadVariableOpҐ"Second_Conv/BiasAdd/ReadVariableOpҐ!Second_Conv/Conv2D/ReadVariableOpҐSoftmax/BiasAdd/ReadVariableOpҐSoftmax/MatMul/ReadVariableOpҐ5batch_normalization_2/FusedBatchNormV3/ReadVariableOpҐ7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1Ґ$batch_normalization_2/ReadVariableOpҐ&batch_normalization_2/ReadVariableOp_1Ґ5batch_normalization_3/FusedBatchNormV3/ReadVariableOpҐ7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1Ґ$batch_normalization_3/ReadVariableOpҐ&batch_normalization_3/ReadVariableOp_1Т
 First_Conv/Conv2D/ReadVariableOpReadVariableOp)first_conv_conv2d_readvariableop_resource*&
_output_shapes
:!^*
dtype0ѓ
First_Conv/Conv2DConv2Dinputs(First_Conv/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€2'^*
paddingSAME*
strides
И
!First_Conv/BiasAdd/ReadVariableOpReadVariableOp*first_conv_biasadd_readvariableop_resource*
_output_shapes
:^*
dtype0Ю
First_Conv/BiasAddBiasAddFirst_Conv/Conv2D:output:0)First_Conv/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€2'^u
dropout_2/IdentityIdentityFirst_Conv/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€2'^О
$batch_normalization_2/ReadVariableOpReadVariableOp-batch_normalization_2_readvariableop_resource*
_output_shapes
:^*
dtype0Т
&batch_normalization_2/ReadVariableOp_1ReadVariableOp/batch_normalization_2_readvariableop_1_resource*
_output_shapes
:^*
dtype0∞
5batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:^*
dtype0і
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:^*
dtype0є
&batch_normalization_2/FusedBatchNormV3FusedBatchNormV3dropout_2/Identity:output:0,batch_normalization_2/ReadVariableOp:value:0.batch_normalization_2/ReadVariableOp_1:value:0=batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€2'^:^:^:^:^:*
epsilon%oГ:*
is_training( ґ
MaxPooling/MaxPoolMaxPool*batch_normalization_2/FusedBatchNormV3:y:0*/
_output_shapes
:€€€€€€€€€^*
ksize
*
paddingVALID*
strides
p
activation_2/ReluReluMaxPooling/MaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€^Ф
!Second_Conv/Conv2D/ReadVariableOpReadVariableOp*second_conv_conv2d_readvariableop_resource*&
_output_shapes
:
^^*
dtype0 
Second_Conv/Conv2DConv2Dactivation_2/Relu:activations:0)Second_Conv/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€^*
paddingSAME*
strides
К
"Second_Conv/BiasAdd/ReadVariableOpReadVariableOp+second_conv_biasadd_readvariableop_resource*
_output_shapes
:^*
dtype0°
Second_Conv/BiasAddBiasAddSecond_Conv/Conv2D:output:0*Second_Conv/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€^v
dropout_3/IdentityIdentitySecond_Conv/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€^О
$batch_normalization_3/ReadVariableOpReadVariableOp-batch_normalization_3_readvariableop_resource*
_output_shapes
:^*
dtype0Т
&batch_normalization_3/ReadVariableOp_1ReadVariableOp/batch_normalization_3_readvariableop_1_resource*
_output_shapes
:^*
dtype0∞
5batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:^*
dtype0і
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:^*
dtype0є
&batch_normalization_3/FusedBatchNormV3FusedBatchNormV3dropout_3/Identity:output:0,batch_normalization_3/ReadVariableOp:value:0.batch_normalization_3/ReadVariableOp_1:value:0=batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€^:^:^:^:^:*
epsilon%oГ:*
is_training( 
activation_3/ReluRelu*batch_normalization_3/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:€€€€€€€€€^`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€Vw  Л
flatten_1/ReshapeReshapeactivation_3/Relu:activations:0flatten_1/Const:output:0*
T0*)
_output_shapes
:€€€€€€€€€÷оД
Linear/MatMul/ReadVariableOpReadVariableOp%linear_matmul_readvariableop_resource* 
_output_shapes
:
÷о *
dtype0Л
Linear/MatMulMatMulflatten_1/Reshape:output:0$Linear/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ А
Linear/BiasAdd/ReadVariableOpReadVariableOp&linear_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Л
Linear/BiasAddBiasAddLinear/MatMul:product:0%Linear/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ Г
Dense1/MatMul/ReadVariableOpReadVariableOp%dense1_matmul_readvariableop_resource*
_output_shapes
:	 А*
dtype0Й
Dense1/MatMulMatMulLinear/BiasAdd:output:0$Dense1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АБ
Dense1/BiasAdd/ReadVariableOpReadVariableOp&dense1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0М
Dense1/BiasAddBiasAddDense1/MatMul:product:0%Dense1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А_
Dense1/ReluReluDense1/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€АД
Dense2/MatMul/ReadVariableOpReadVariableOp%dense2_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Л
Dense2/MatMulMatMulDense1/Relu:activations:0$Dense2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АБ
Dense2/BiasAdd/ReadVariableOpReadVariableOp&dense2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0М
Dense2/BiasAddBiasAddDense2/MatMul:product:0%Dense2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А_
Dense2/ReluReluDense2/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€АД
Dense3/MatMul/ReadVariableOpReadVariableOp%dense3_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Л
Dense3/MatMulMatMulDense2/Relu:activations:0$Dense3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АБ
Dense3/BiasAdd/ReadVariableOpReadVariableOp&dense3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0М
Dense3/BiasAddBiasAddDense3/MatMul:product:0%Dense3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А_
Dense3/ReluReluDense3/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€АЕ
Softmax/MatMul/ReadVariableOpReadVariableOp&softmax_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0М
Softmax/MatMulMatMulDense3/Relu:activations:0%Softmax/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€В
Softmax/BiasAdd/ReadVariableOpReadVariableOp'softmax_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
Softmax/BiasAddBiasAddSoftmax/MatMul:product:0&Softmax/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€f
Softmax/SoftmaxSoftmaxSoftmax/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€h
IdentityIdentitySoftmax/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Ч
NoOpNoOp^Dense1/BiasAdd/ReadVariableOp^Dense1/MatMul/ReadVariableOp^Dense2/BiasAdd/ReadVariableOp^Dense2/MatMul/ReadVariableOp^Dense3/BiasAdd/ReadVariableOp^Dense3/MatMul/ReadVariableOp"^First_Conv/BiasAdd/ReadVariableOp!^First_Conv/Conv2D/ReadVariableOp^Linear/BiasAdd/ReadVariableOp^Linear/MatMul/ReadVariableOp#^Second_Conv/BiasAdd/ReadVariableOp"^Second_Conv/Conv2D/ReadVariableOp^Softmax/BiasAdd/ReadVariableOp^Softmax/MatMul/ReadVariableOp6^batch_normalization_2/FusedBatchNormV3/ReadVariableOp8^batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_2/ReadVariableOp'^batch_normalization_2/ReadVariableOp_16^batch_normalization_3/FusedBatchNormV3/ReadVariableOp8^batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_3/ReadVariableOp'^batch_normalization_3/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:€€€€€€€€€2': : : : : : : : : : : : : : : : : : : : : : 2>
Dense1/BiasAdd/ReadVariableOpDense1/BiasAdd/ReadVariableOp2<
Dense1/MatMul/ReadVariableOpDense1/MatMul/ReadVariableOp2>
Dense2/BiasAdd/ReadVariableOpDense2/BiasAdd/ReadVariableOp2<
Dense2/MatMul/ReadVariableOpDense2/MatMul/ReadVariableOp2>
Dense3/BiasAdd/ReadVariableOpDense3/BiasAdd/ReadVariableOp2<
Dense3/MatMul/ReadVariableOpDense3/MatMul/ReadVariableOp2F
!First_Conv/BiasAdd/ReadVariableOp!First_Conv/BiasAdd/ReadVariableOp2D
 First_Conv/Conv2D/ReadVariableOp First_Conv/Conv2D/ReadVariableOp2>
Linear/BiasAdd/ReadVariableOpLinear/BiasAdd/ReadVariableOp2<
Linear/MatMul/ReadVariableOpLinear/MatMul/ReadVariableOp2H
"Second_Conv/BiasAdd/ReadVariableOp"Second_Conv/BiasAdd/ReadVariableOp2F
!Second_Conv/Conv2D/ReadVariableOp!Second_Conv/Conv2D/ReadVariableOp2@
Softmax/BiasAdd/ReadVariableOpSoftmax/BiasAdd/ReadVariableOp2>
Softmax/MatMul/ReadVariableOpSoftmax/MatMul/ReadVariableOp2n
5batch_normalization_2/FusedBatchNormV3/ReadVariableOp5batch_normalization_2/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_2/FusedBatchNormV3/ReadVariableOp_17batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_2/ReadVariableOp$batch_normalization_2/ReadVariableOp2P
&batch_normalization_2/ReadVariableOp_1&batch_normalization_2/ReadVariableOp_12n
5batch_normalization_3/FusedBatchNormV3/ReadVariableOp5batch_normalization_3/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_17batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_3/ReadVariableOp$batch_normalization_3/ReadVariableOp2P
&batch_normalization_3/ReadVariableOp_1&batch_normalization_3/ReadVariableOp_1:W S
/
_output_shapes
:€€€€€€€€€2'
 
_user_specified_nameinputs
џr
ё
!__inference__wrapped_model_227535
input_2K
1kws_cnn_first_conv_conv2d_readvariableop_resource:!^@
2kws_cnn_first_conv_biasadd_readvariableop_resource:^C
5kws_cnn_batch_normalization_2_readvariableop_resource:^E
7kws_cnn_batch_normalization_2_readvariableop_1_resource:^T
Fkws_cnn_batch_normalization_2_fusedbatchnormv3_readvariableop_resource:^V
Hkws_cnn_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource:^L
2kws_cnn_second_conv_conv2d_readvariableop_resource:
^^A
3kws_cnn_second_conv_biasadd_readvariableop_resource:^C
5kws_cnn_batch_normalization_3_readvariableop_resource:^E
7kws_cnn_batch_normalization_3_readvariableop_1_resource:^T
Fkws_cnn_batch_normalization_3_fusedbatchnormv3_readvariableop_resource:^V
Hkws_cnn_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource:^A
-kws_cnn_linear_matmul_readvariableop_resource:
÷о <
.kws_cnn_linear_biasadd_readvariableop_resource: @
-kws_cnn_dense1_matmul_readvariableop_resource:	 А=
.kws_cnn_dense1_biasadd_readvariableop_resource:	АA
-kws_cnn_dense2_matmul_readvariableop_resource:
АА=
.kws_cnn_dense2_biasadd_readvariableop_resource:	АA
-kws_cnn_dense3_matmul_readvariableop_resource:
АА=
.kws_cnn_dense3_biasadd_readvariableop_resource:	АA
.kws_cnn_softmax_matmul_readvariableop_resource:	А=
/kws_cnn_softmax_biasadd_readvariableop_resource:
identityИҐ%KWS_CNN/Dense1/BiasAdd/ReadVariableOpҐ$KWS_CNN/Dense1/MatMul/ReadVariableOpҐ%KWS_CNN/Dense2/BiasAdd/ReadVariableOpҐ$KWS_CNN/Dense2/MatMul/ReadVariableOpҐ%KWS_CNN/Dense3/BiasAdd/ReadVariableOpҐ$KWS_CNN/Dense3/MatMul/ReadVariableOpҐ)KWS_CNN/First_Conv/BiasAdd/ReadVariableOpҐ(KWS_CNN/First_Conv/Conv2D/ReadVariableOpҐ%KWS_CNN/Linear/BiasAdd/ReadVariableOpҐ$KWS_CNN/Linear/MatMul/ReadVariableOpҐ*KWS_CNN/Second_Conv/BiasAdd/ReadVariableOpҐ)KWS_CNN/Second_Conv/Conv2D/ReadVariableOpҐ&KWS_CNN/Softmax/BiasAdd/ReadVariableOpҐ%KWS_CNN/Softmax/MatMul/ReadVariableOpҐ=KWS_CNN/batch_normalization_2/FusedBatchNormV3/ReadVariableOpҐ?KWS_CNN/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1Ґ,KWS_CNN/batch_normalization_2/ReadVariableOpҐ.KWS_CNN/batch_normalization_2/ReadVariableOp_1Ґ=KWS_CNN/batch_normalization_3/FusedBatchNormV3/ReadVariableOpҐ?KWS_CNN/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1Ґ,KWS_CNN/batch_normalization_3/ReadVariableOpҐ.KWS_CNN/batch_normalization_3/ReadVariableOp_1Ґ
(KWS_CNN/First_Conv/Conv2D/ReadVariableOpReadVariableOp1kws_cnn_first_conv_conv2d_readvariableop_resource*&
_output_shapes
:!^*
dtype0ј
KWS_CNN/First_Conv/Conv2DConv2Dinput_20KWS_CNN/First_Conv/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€2'^*
paddingSAME*
strides
Ш
)KWS_CNN/First_Conv/BiasAdd/ReadVariableOpReadVariableOp2kws_cnn_first_conv_biasadd_readvariableop_resource*
_output_shapes
:^*
dtype0ґ
KWS_CNN/First_Conv/BiasAddBiasAdd"KWS_CNN/First_Conv/Conv2D:output:01KWS_CNN/First_Conv/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€2'^Е
KWS_CNN/dropout_2/IdentityIdentity#KWS_CNN/First_Conv/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€2'^Ю
,KWS_CNN/batch_normalization_2/ReadVariableOpReadVariableOp5kws_cnn_batch_normalization_2_readvariableop_resource*
_output_shapes
:^*
dtype0Ґ
.KWS_CNN/batch_normalization_2/ReadVariableOp_1ReadVariableOp7kws_cnn_batch_normalization_2_readvariableop_1_resource*
_output_shapes
:^*
dtype0ј
=KWS_CNN/batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOpFkws_cnn_batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:^*
dtype0ƒ
?KWS_CNN/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpHkws_cnn_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:^*
dtype0й
.KWS_CNN/batch_normalization_2/FusedBatchNormV3FusedBatchNormV3#KWS_CNN/dropout_2/Identity:output:04KWS_CNN/batch_normalization_2/ReadVariableOp:value:06KWS_CNN/batch_normalization_2/ReadVariableOp_1:value:0EKWS_CNN/batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0GKWS_CNN/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€2'^:^:^:^:^:*
epsilon%oГ:*
is_training( ∆
KWS_CNN/MaxPooling/MaxPoolMaxPool2KWS_CNN/batch_normalization_2/FusedBatchNormV3:y:0*/
_output_shapes
:€€€€€€€€€^*
ksize
*
paddingVALID*
strides
А
KWS_CNN/activation_2/ReluRelu#KWS_CNN/MaxPooling/MaxPool:output:0*
T0*/
_output_shapes
:€€€€€€€€€^§
)KWS_CNN/Second_Conv/Conv2D/ReadVariableOpReadVariableOp2kws_cnn_second_conv_conv2d_readvariableop_resource*&
_output_shapes
:
^^*
dtype0в
KWS_CNN/Second_Conv/Conv2DConv2D'KWS_CNN/activation_2/Relu:activations:01KWS_CNN/Second_Conv/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€^*
paddingSAME*
strides
Ъ
*KWS_CNN/Second_Conv/BiasAdd/ReadVariableOpReadVariableOp3kws_cnn_second_conv_biasadd_readvariableop_resource*
_output_shapes
:^*
dtype0є
KWS_CNN/Second_Conv/BiasAddBiasAdd#KWS_CNN/Second_Conv/Conv2D:output:02KWS_CNN/Second_Conv/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€^Ж
KWS_CNN/dropout_3/IdentityIdentity$KWS_CNN/Second_Conv/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€^Ю
,KWS_CNN/batch_normalization_3/ReadVariableOpReadVariableOp5kws_cnn_batch_normalization_3_readvariableop_resource*
_output_shapes
:^*
dtype0Ґ
.KWS_CNN/batch_normalization_3/ReadVariableOp_1ReadVariableOp7kws_cnn_batch_normalization_3_readvariableop_1_resource*
_output_shapes
:^*
dtype0ј
=KWS_CNN/batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOpFkws_cnn_batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:^*
dtype0ƒ
?KWS_CNN/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpHkws_cnn_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:^*
dtype0й
.KWS_CNN/batch_normalization_3/FusedBatchNormV3FusedBatchNormV3#KWS_CNN/dropout_3/Identity:output:04KWS_CNN/batch_normalization_3/ReadVariableOp:value:06KWS_CNN/batch_normalization_3/ReadVariableOp_1:value:0EKWS_CNN/batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0GKWS_CNN/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€^:^:^:^:^:*
epsilon%oГ:*
is_training( П
KWS_CNN/activation_3/ReluRelu2KWS_CNN/batch_normalization_3/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:€€€€€€€€€^h
KWS_CNN/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€Vw  £
KWS_CNN/flatten_1/ReshapeReshape'KWS_CNN/activation_3/Relu:activations:0 KWS_CNN/flatten_1/Const:output:0*
T0*)
_output_shapes
:€€€€€€€€€÷оФ
$KWS_CNN/Linear/MatMul/ReadVariableOpReadVariableOp-kws_cnn_linear_matmul_readvariableop_resource* 
_output_shapes
:
÷о *
dtype0£
KWS_CNN/Linear/MatMulMatMul"KWS_CNN/flatten_1/Reshape:output:0,KWS_CNN/Linear/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ Р
%KWS_CNN/Linear/BiasAdd/ReadVariableOpReadVariableOp.kws_cnn_linear_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0£
KWS_CNN/Linear/BiasAddBiasAddKWS_CNN/Linear/MatMul:product:0-KWS_CNN/Linear/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ У
$KWS_CNN/Dense1/MatMul/ReadVariableOpReadVariableOp-kws_cnn_dense1_matmul_readvariableop_resource*
_output_shapes
:	 А*
dtype0°
KWS_CNN/Dense1/MatMulMatMulKWS_CNN/Linear/BiasAdd:output:0,KWS_CNN/Dense1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АС
%KWS_CNN/Dense1/BiasAdd/ReadVariableOpReadVariableOp.kws_cnn_dense1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0§
KWS_CNN/Dense1/BiasAddBiasAddKWS_CNN/Dense1/MatMul:product:0-KWS_CNN/Dense1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аo
KWS_CNN/Dense1/ReluReluKWS_CNN/Dense1/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€АФ
$KWS_CNN/Dense2/MatMul/ReadVariableOpReadVariableOp-kws_cnn_dense2_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0£
KWS_CNN/Dense2/MatMulMatMul!KWS_CNN/Dense1/Relu:activations:0,KWS_CNN/Dense2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АС
%KWS_CNN/Dense2/BiasAdd/ReadVariableOpReadVariableOp.kws_cnn_dense2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0§
KWS_CNN/Dense2/BiasAddBiasAddKWS_CNN/Dense2/MatMul:product:0-KWS_CNN/Dense2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аo
KWS_CNN/Dense2/ReluReluKWS_CNN/Dense2/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€АФ
$KWS_CNN/Dense3/MatMul/ReadVariableOpReadVariableOp-kws_cnn_dense3_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0£
KWS_CNN/Dense3/MatMulMatMul!KWS_CNN/Dense2/Relu:activations:0,KWS_CNN/Dense3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АС
%KWS_CNN/Dense3/BiasAdd/ReadVariableOpReadVariableOp.kws_cnn_dense3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0§
KWS_CNN/Dense3/BiasAddBiasAddKWS_CNN/Dense3/MatMul:product:0-KWS_CNN/Dense3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аo
KWS_CNN/Dense3/ReluReluKWS_CNN/Dense3/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
%KWS_CNN/Softmax/MatMul/ReadVariableOpReadVariableOp.kws_cnn_softmax_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0§
KWS_CNN/Softmax/MatMulMatMul!KWS_CNN/Dense3/Relu:activations:0-KWS_CNN/Softmax/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Т
&KWS_CNN/Softmax/BiasAdd/ReadVariableOpReadVariableOp/kws_cnn_softmax_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¶
KWS_CNN/Softmax/BiasAddBiasAdd KWS_CNN/Softmax/MatMul:product:0.KWS_CNN/Softmax/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€v
KWS_CNN/Softmax/SoftmaxSoftmax KWS_CNN/Softmax/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€p
IdentityIdentity!KWS_CNN/Softmax/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€«
NoOpNoOp&^KWS_CNN/Dense1/BiasAdd/ReadVariableOp%^KWS_CNN/Dense1/MatMul/ReadVariableOp&^KWS_CNN/Dense2/BiasAdd/ReadVariableOp%^KWS_CNN/Dense2/MatMul/ReadVariableOp&^KWS_CNN/Dense3/BiasAdd/ReadVariableOp%^KWS_CNN/Dense3/MatMul/ReadVariableOp*^KWS_CNN/First_Conv/BiasAdd/ReadVariableOp)^KWS_CNN/First_Conv/Conv2D/ReadVariableOp&^KWS_CNN/Linear/BiasAdd/ReadVariableOp%^KWS_CNN/Linear/MatMul/ReadVariableOp+^KWS_CNN/Second_Conv/BiasAdd/ReadVariableOp*^KWS_CNN/Second_Conv/Conv2D/ReadVariableOp'^KWS_CNN/Softmax/BiasAdd/ReadVariableOp&^KWS_CNN/Softmax/MatMul/ReadVariableOp>^KWS_CNN/batch_normalization_2/FusedBatchNormV3/ReadVariableOp@^KWS_CNN/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1-^KWS_CNN/batch_normalization_2/ReadVariableOp/^KWS_CNN/batch_normalization_2/ReadVariableOp_1>^KWS_CNN/batch_normalization_3/FusedBatchNormV3/ReadVariableOp@^KWS_CNN/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1-^KWS_CNN/batch_normalization_3/ReadVariableOp/^KWS_CNN/batch_normalization_3/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:€€€€€€€€€2': : : : : : : : : : : : : : : : : : : : : : 2N
%KWS_CNN/Dense1/BiasAdd/ReadVariableOp%KWS_CNN/Dense1/BiasAdd/ReadVariableOp2L
$KWS_CNN/Dense1/MatMul/ReadVariableOp$KWS_CNN/Dense1/MatMul/ReadVariableOp2N
%KWS_CNN/Dense2/BiasAdd/ReadVariableOp%KWS_CNN/Dense2/BiasAdd/ReadVariableOp2L
$KWS_CNN/Dense2/MatMul/ReadVariableOp$KWS_CNN/Dense2/MatMul/ReadVariableOp2N
%KWS_CNN/Dense3/BiasAdd/ReadVariableOp%KWS_CNN/Dense3/BiasAdd/ReadVariableOp2L
$KWS_CNN/Dense3/MatMul/ReadVariableOp$KWS_CNN/Dense3/MatMul/ReadVariableOp2V
)KWS_CNN/First_Conv/BiasAdd/ReadVariableOp)KWS_CNN/First_Conv/BiasAdd/ReadVariableOp2T
(KWS_CNN/First_Conv/Conv2D/ReadVariableOp(KWS_CNN/First_Conv/Conv2D/ReadVariableOp2N
%KWS_CNN/Linear/BiasAdd/ReadVariableOp%KWS_CNN/Linear/BiasAdd/ReadVariableOp2L
$KWS_CNN/Linear/MatMul/ReadVariableOp$KWS_CNN/Linear/MatMul/ReadVariableOp2X
*KWS_CNN/Second_Conv/BiasAdd/ReadVariableOp*KWS_CNN/Second_Conv/BiasAdd/ReadVariableOp2V
)KWS_CNN/Second_Conv/Conv2D/ReadVariableOp)KWS_CNN/Second_Conv/Conv2D/ReadVariableOp2P
&KWS_CNN/Softmax/BiasAdd/ReadVariableOp&KWS_CNN/Softmax/BiasAdd/ReadVariableOp2N
%KWS_CNN/Softmax/MatMul/ReadVariableOp%KWS_CNN/Softmax/MatMul/ReadVariableOp2~
=KWS_CNN/batch_normalization_2/FusedBatchNormV3/ReadVariableOp=KWS_CNN/batch_normalization_2/FusedBatchNormV3/ReadVariableOp2В
?KWS_CNN/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1?KWS_CNN/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12\
,KWS_CNN/batch_normalization_2/ReadVariableOp,KWS_CNN/batch_normalization_2/ReadVariableOp2`
.KWS_CNN/batch_normalization_2/ReadVariableOp_1.KWS_CNN/batch_normalization_2/ReadVariableOp_12~
=KWS_CNN/batch_normalization_3/FusedBatchNormV3/ReadVariableOp=KWS_CNN/batch_normalization_3/FusedBatchNormV3/ReadVariableOp2В
?KWS_CNN/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1?KWS_CNN/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12\
,KWS_CNN/batch_normalization_3/ReadVariableOp,KWS_CNN/batch_normalization_3/ReadVariableOp2`
.KWS_CNN/batch_normalization_3/ReadVariableOp_1.KWS_CNN/batch_normalization_3/ReadVariableOp_1:X T
/
_output_shapes
:€€€€€€€€€2'
!
_user_specified_name	input_2
іD
ф	
C__inference_KWS_CNN_layer_call_and_return_conditional_losses_227854

inputs+
first_conv_227693:!^
first_conv_227695:^*
batch_normalization_2_227705:^*
batch_normalization_2_227707:^*
batch_normalization_2_227709:^*
batch_normalization_2_227711:^,
second_conv_227733:
^^ 
second_conv_227735:^*
batch_normalization_3_227745:^*
batch_normalization_3_227747:^*
batch_normalization_3_227749:^*
batch_normalization_3_227751:^!
linear_227780:
÷о 
linear_227782:  
dense1_227797:	 А
dense1_227799:	А!
dense2_227814:
АА
dense2_227816:	А!
dense3_227831:
АА
dense3_227833:	А!
softmax_227848:	А
softmax_227850:
identityИҐDense1/StatefulPartitionedCallҐDense2/StatefulPartitionedCallҐDense3/StatefulPartitionedCallҐ"First_Conv/StatefulPartitionedCallҐLinear/StatefulPartitionedCallҐ#Second_Conv/StatefulPartitionedCallҐSoftmax/StatefulPartitionedCallҐ-batch_normalization_2/StatefulPartitionedCallҐ-batch_normalization_3/StatefulPartitionedCallА
"First_Conv/StatefulPartitionedCallStatefulPartitionedCallinputsfirst_conv_227693first_conv_227695*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€2'^*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_First_Conv_layer_call_and_return_conditional_losses_227692з
dropout_2/PartitionedCallPartitionedCall+First_Conv/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€2'^* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_227703И
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0batch_normalization_2_227705batch_normalization_2_227707batch_normalization_2_227709batch_normalization_2_227711*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€2'^*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_227557ф
MaxPooling/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€^* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_MaxPooling_layer_call_and_return_conditional_losses_227608е
activation_2/PartitionedCallPartitionedCall#MaxPooling/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€^* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_activation_2_layer_call_and_return_conditional_losses_227720£
#Second_Conv/StatefulPartitionedCallStatefulPartitionedCall%activation_2/PartitionedCall:output:0second_conv_227733second_conv_227735*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€^*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_Second_Conv_layer_call_and_return_conditional_losses_227732и
dropout_3/PartitionedCallPartitionedCall,Second_Conv/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€^* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_227743И
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0batch_normalization_3_227745batch_normalization_3_227747batch_normalization_3_227749batch_normalization_3_227751*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€^*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_227633ш
activation_3/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€^* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_activation_3_layer_call_and_return_conditional_losses_227759џ
flatten_1/PartitionedCallPartitionedCall%activation_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:€€€€€€€€€÷о* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_227767Д
Linear/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0linear_227780linear_227782*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_Linear_layer_call_and_return_conditional_losses_227779К
Dense1/StatefulPartitionedCallStatefulPartitionedCall'Linear/StatefulPartitionedCall:output:0dense1_227797dense1_227799*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_Dense1_layer_call_and_return_conditional_losses_227796К
Dense2/StatefulPartitionedCallStatefulPartitionedCall'Dense1/StatefulPartitionedCall:output:0dense2_227814dense2_227816*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_Dense2_layer_call_and_return_conditional_losses_227813К
Dense3/StatefulPartitionedCallStatefulPartitionedCall'Dense2/StatefulPartitionedCall:output:0dense3_227831dense3_227833*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_Dense3_layer_call_and_return_conditional_losses_227830Н
Softmax/StatefulPartitionedCallStatefulPartitionedCall'Dense3/StatefulPartitionedCall:output:0softmax_227848softmax_227850*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_Softmax_layer_call_and_return_conditional_losses_227847w
IdentityIdentity(Softmax/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Ч
NoOpNoOp^Dense1/StatefulPartitionedCall^Dense2/StatefulPartitionedCall^Dense3/StatefulPartitionedCall#^First_Conv/StatefulPartitionedCall^Linear/StatefulPartitionedCall$^Second_Conv/StatefulPartitionedCall ^Softmax/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:€€€€€€€€€2': : : : : : : : : : : : : : : : : : : : : : 2@
Dense1/StatefulPartitionedCallDense1/StatefulPartitionedCall2@
Dense2/StatefulPartitionedCallDense2/StatefulPartitionedCall2@
Dense3/StatefulPartitionedCallDense3/StatefulPartitionedCall2H
"First_Conv/StatefulPartitionedCall"First_Conv/StatefulPartitionedCall2@
Linear/StatefulPartitionedCallLinear/StatefulPartitionedCall2J
#Second_Conv/StatefulPartitionedCall#Second_Conv/StatefulPartitionedCall2B
Softmax/StatefulPartitionedCallSoftmax/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€2'
 
_user_specified_nameinputs
Љ
»
(__inference_KWS_CNN_layer_call_fn_227901
input_2!
unknown:!^
	unknown_0:^
	unknown_1:^
	unknown_2:^
	unknown_3:^
	unknown_4:^#
	unknown_5:
^^
	unknown_6:^
	unknown_7:^
	unknown_8:^
	unknown_9:^

unknown_10:^

unknown_11:
÷о 

unknown_12: 

unknown_13:	 А

unknown_14:	А

unknown_15:
АА

unknown_16:	А

unknown_17:
АА

unknown_18:	А

unknown_19:	А

unknown_20:
identityИҐStatefulPartitionedCallи
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_KWS_CNN_layer_call_and_return_conditional_losses_227854o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:€€€€€€€€€2': : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:€€€€€€€€€2'
!
_user_specified_name	input_2
£

х
C__inference_Softmax_layer_call_and_return_conditional_losses_227847

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
√

d
E__inference_dropout_3_layer_call_and_return_conditional_losses_227983

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€^C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Ф
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€^*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>Ѓ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€^T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€^i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:€€€€€€€€€^"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€^:W S
/
_output_shapes
:€€€€€€€€€^
 
_user_specified_nameinputs
П	
—
6__inference_batch_normalization_2_layer_call_fn_228778

inputs
unknown:^
	unknown_0:^
	unknown_1:^
	unknown_2:^
identityИҐStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€^*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_227588Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€^`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€^: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€^
 
_user_specified_nameinputs
м
d
H__inference_activation_3_layer_call_and_return_conditional_losses_228952

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:€€€€€€€€€^b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€^"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€^:W S
/
_output_shapes
:€€€€€€€€€^
 
_user_specified_nameinputs
Ж
ј
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_227588

inputs%
readvariableop_resource:^'
readvariableop_1_resource:^6
(fusedbatchnormv3_readvariableop_resource:^8
*fusedbatchnormv3_readvariableop_1_resource:^
identityИҐAssignNewValueҐAssignNewValue_1ҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:^*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:^*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:^*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:^*
dtype0÷
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€^:^:^:^:^:*
epsilon%oГ:*
exponential_avg_factor%
„#<∆
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(–
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€^‘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€^: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€^
 
_user_specified_nameinputs
ƒ
Ц
'__inference_Linear_layer_call_fn_228972

inputs
unknown:
÷о 
	unknown_0: 
identityИҐStatefulPartitionedCall„
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_Linear_layer_call_and_return_conditional_losses_227779o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€÷о: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:€€€€€€€€€÷о
 
_user_specified_nameinputs
С
c
*__inference_dropout_2_layer_call_fn_228735

inputs
identityИҐStatefulPartitionedCall»
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€2'^* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_228022w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€2'^`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€2'^22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€2'^
 
_user_specified_nameinputs
≥
F
*__inference_flatten_1_layer_call_fn_228957

inputs
identity≤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:€€€€€€€€€÷о* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_227767b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:€€€€€€€€€÷о"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€^:W S
/
_output_shapes
:€€€€€€€€€^
 
_user_specified_nameinputs
Ж
ј
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_228814

inputs%
readvariableop_resource:^'
readvariableop_1_resource:^6
(fusedbatchnormv3_readvariableop_resource:^8
*fusedbatchnormv3_readvariableop_1_resource:^
identityИҐAssignNewValueҐAssignNewValue_1ҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:^*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:^*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:^*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:^*
dtype0÷
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€^:^:^:^:^:*
epsilon%oГ:*
exponential_avg_factor%
„#<∆
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(–
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€^‘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€^: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€^
 
_user_specified_nameinputs
ћ
Ь
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_227633

inputs%
readvariableop_resource:^'
readvariableop_1_resource:^6
(fusedbatchnormv3_readvariableop_resource:^8
*fusedbatchnormv3_readvariableop_1_resource:^
identityИҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:^*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:^*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:^*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:^*
dtype0»
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€^:^:^:^:^:*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€^∞
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€^: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€^
 
_user_specified_nameinputs
ћ
Ь
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_228796

inputs%
readvariableop_resource:^'
readvariableop_1_resource:^6
(fusedbatchnormv3_readvariableop_resource:^8
*fusedbatchnormv3_readvariableop_1_resource:^
identityИҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:^*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:^*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:^*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:^*
dtype0»
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€^:^:^:^:^:*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€^∞
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€^: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€^
 
_user_specified_nameinputs
…
a
E__inference_flatten_1_layer_call_and_return_conditional_losses_227767

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€Vw  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:€€€€€€€€€÷оZ
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:€€€€€€€€€÷о"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€^:W S
/
_output_shapes
:€€€€€€€€€^
 
_user_specified_nameinputs
•

ц
B__inference_Dense3_layer_call_and_return_conditional_losses_229042

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
О
b
F__inference_MaxPooling_layer_call_and_return_conditional_losses_228824

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
•

ц
B__inference_Dense3_layer_call_and_return_conditional_losses_227830

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
С	
—
6__inference_batch_normalization_3_layer_call_fn_228893

inputs
unknown:^
	unknown_0:^
	unknown_1:^
	unknown_2:^
identityИҐStatefulPartitionedCallЪ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€^*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_227633Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€^`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€^: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€^
 
_user_specified_nameinputs
є
«
(__inference_KWS_CNN_layer_call_fn_228473

inputs!
unknown:!^
	unknown_0:^
	unknown_1:^
	unknown_2:^
	unknown_3:^
	unknown_4:^#
	unknown_5:
^^
	unknown_6:^
	unknown_7:^
	unknown_8:^
	unknown_9:^

unknown_10:^

unknown_11:
÷о 

unknown_12: 

unknown_13:	 А

unknown_14:	А

unknown_15:
АА

unknown_16:	А

unknown_17:
АА

unknown_18:	А

unknown_19:	А

unknown_20:
identityИҐStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_KWS_CNN_layer_call_and_return_conditional_losses_227854o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:€€€€€€€€€2': : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€2'
 
_user_specified_nameinputs
•

ц
B__inference_Dense2_layer_call_and_return_conditional_losses_227813

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
о
†
+__inference_First_Conv_layer_call_fn_228715

inputs!
unknown:!^
	unknown_0:^
identityИҐStatefulPartitionedCallг
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€2'^*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_First_Conv_layer_call_and_return_conditional_losses_227692w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€2'^`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€2': : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€2'
 
_user_specified_nameinputs
…
a
E__inference_flatten_1_layer_call_and_return_conditional_losses_228963

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€Vw  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:€€€€€€€€€÷оZ
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:€€€€€€€€€÷о"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€^:W S
/
_output_shapes
:€€€€€€€€€^
 
_user_specified_nameinputs
≈
I
-__inference_activation_2_layer_call_fn_228829

inputs
identityї
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€^* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_activation_2_layer_call_and_return_conditional_losses_227720h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:€€€€€€€€€^"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€^:W S
/
_output_shapes
:€€€€€€€€€^
 
_user_specified_nameinputs
√

d
E__inference_dropout_2_layer_call_and_return_conditional_losses_228752

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€2'^C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Ф
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€2'^*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>Ѓ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€2'^T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€2'^i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:€€€€€€€€€2'^"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€2'^:W S
/
_output_shapes
:€€€€€€€€€2'^
 
_user_specified_nameinputs
√

d
E__inference_dropout_3_layer_call_and_return_conditional_losses_228880

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€^C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Ф
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€^*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>Ѓ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€^T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€^i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:€€€€€€€€€^"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€^:W S
/
_output_shapes
:€€€€€€€€€^
 
_user_specified_nameinputs
¬
Ц
'__inference_Dense1_layer_call_fn_228991

inputs
unknown:	 А
	unknown_0:	А
identityИҐStatefulPartitionedCallЎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_Dense1_layer_call_and_return_conditional_losses_227796p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€ : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
ш
c
E__inference_dropout_2_layer_call_and_return_conditional_losses_227703

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:€€€€€€€€€2'^c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:€€€€€€€€€2'^"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€2'^:W S
/
_output_shapes
:€€€€€€€€€2'^
 
_user_specified_nameinputs
Ж
ј
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_228942

inputs%
readvariableop_resource:^'
readvariableop_1_resource:^6
(fusedbatchnormv3_readvariableop_resource:^8
*fusedbatchnormv3_readvariableop_1_resource:^
identityИҐAssignNewValueҐAssignNewValue_1ҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:^*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:^*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:^*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:^*
dtype0÷
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€^:^:^:^:^:*
epsilon%oГ:*
exponential_avg_factor%
„#<∆
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(–
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€^‘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€^: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€^
 
_user_specified_nameinputs
©

€
F__inference_First_Conv_layer_call_and_return_conditional_losses_228725

inputs8
conv2d_readvariableop_resource:!^-
biasadd_readvariableop_resource:^
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:!^*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€2'^*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:^*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€2'^g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€2'^w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€2': : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€2'
 
_user_specified_nameinputs
П	
—
6__inference_batch_normalization_3_layer_call_fn_228906

inputs
unknown:^
	unknown_0:^
	unknown_1:^
	unknown_2:^
identityИҐStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€^*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_227664Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€^`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€^: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€^
 
_user_specified_nameinputs
Ц
ƒ
$__inference_signature_wrapper_228424
input_2!
unknown:!^
	unknown_0:^
	unknown_1:^
	unknown_2:^
	unknown_3:^
	unknown_4:^#
	unknown_5:
^^
	unknown_6:^
	unknown_7:^
	unknown_8:^
	unknown_9:^

unknown_10:^

unknown_11:
÷о 

unknown_12: 

unknown_13:	 А

unknown_14:	А

unknown_15:
АА

unknown_16:	А

unknown_17:
АА

unknown_18:	А

unknown_19:	А

unknown_20:
identityИҐStatefulPartitionedCall∆
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__wrapped_model_227535o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:€€€€€€€€€2': : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:€€€€€€€€€2'
!
_user_specified_name	input_2
Ќ	
х
B__inference_Linear_layer_call_and_return_conditional_losses_228982

inputs2
matmul_readvariableop_resource:
÷о -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
÷о *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€÷о: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:€€€€€€€€€÷о
 
_user_specified_nameinputs
™

А
G__inference_Second_Conv_layer_call_and_return_conditional_losses_227732

inputs8
conv2d_readvariableop_resource:
^^-
biasadd_readvariableop_resource:^
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:
^^*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€^*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:^*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€^g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€^w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€^: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€^
 
_user_specified_nameinputs
ЈD
х	
C__inference_KWS_CNN_layer_call_and_return_conditional_losses_228308
input_2+
first_conv_228248:!^
first_conv_228250:^*
batch_normalization_2_228254:^*
batch_normalization_2_228256:^*
batch_normalization_2_228258:^*
batch_normalization_2_228260:^,
second_conv_228265:
^^ 
second_conv_228267:^*
batch_normalization_3_228271:^*
batch_normalization_3_228273:^*
batch_normalization_3_228275:^*
batch_normalization_3_228277:^!
linear_228282:
÷о 
linear_228284:  
dense1_228287:	 А
dense1_228289:	А!
dense2_228292:
АА
dense2_228294:	А!
dense3_228297:
АА
dense3_228299:	А!
softmax_228302:	А
softmax_228304:
identityИҐDense1/StatefulPartitionedCallҐDense2/StatefulPartitionedCallҐDense3/StatefulPartitionedCallҐ"First_Conv/StatefulPartitionedCallҐLinear/StatefulPartitionedCallҐ#Second_Conv/StatefulPartitionedCallҐSoftmax/StatefulPartitionedCallҐ-batch_normalization_2/StatefulPartitionedCallҐ-batch_normalization_3/StatefulPartitionedCallБ
"First_Conv/StatefulPartitionedCallStatefulPartitionedCallinput_2first_conv_228248first_conv_228250*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€2'^*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_First_Conv_layer_call_and_return_conditional_losses_227692з
dropout_2/PartitionedCallPartitionedCall+First_Conv/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€2'^* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_227703И
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0batch_normalization_2_228254batch_normalization_2_228256batch_normalization_2_228258batch_normalization_2_228260*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€2'^*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_227557ф
MaxPooling/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€^* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_MaxPooling_layer_call_and_return_conditional_losses_227608е
activation_2/PartitionedCallPartitionedCall#MaxPooling/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€^* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_activation_2_layer_call_and_return_conditional_losses_227720£
#Second_Conv/StatefulPartitionedCallStatefulPartitionedCall%activation_2/PartitionedCall:output:0second_conv_228265second_conv_228267*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€^*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_Second_Conv_layer_call_and_return_conditional_losses_227732и
dropout_3/PartitionedCallPartitionedCall,Second_Conv/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€^* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_227743И
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0batch_normalization_3_228271batch_normalization_3_228273batch_normalization_3_228275batch_normalization_3_228277*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€^*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_227633ш
activation_3/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€^* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_activation_3_layer_call_and_return_conditional_losses_227759џ
flatten_1/PartitionedCallPartitionedCall%activation_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:€€€€€€€€€÷о* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_227767Д
Linear/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0linear_228282linear_228284*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_Linear_layer_call_and_return_conditional_losses_227779К
Dense1/StatefulPartitionedCallStatefulPartitionedCall'Linear/StatefulPartitionedCall:output:0dense1_228287dense1_228289*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_Dense1_layer_call_and_return_conditional_losses_227796К
Dense2/StatefulPartitionedCallStatefulPartitionedCall'Dense1/StatefulPartitionedCall:output:0dense2_228292dense2_228294*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_Dense2_layer_call_and_return_conditional_losses_227813К
Dense3/StatefulPartitionedCallStatefulPartitionedCall'Dense2/StatefulPartitionedCall:output:0dense3_228297dense3_228299*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_Dense3_layer_call_and_return_conditional_losses_227830Н
Softmax/StatefulPartitionedCallStatefulPartitionedCall'Dense3/StatefulPartitionedCall:output:0softmax_228302softmax_228304*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_Softmax_layer_call_and_return_conditional_losses_227847w
IdentityIdentity(Softmax/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Ч
NoOpNoOp^Dense1/StatefulPartitionedCall^Dense2/StatefulPartitionedCall^Dense3/StatefulPartitionedCall#^First_Conv/StatefulPartitionedCall^Linear/StatefulPartitionedCall$^Second_Conv/StatefulPartitionedCall ^Softmax/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:€€€€€€€€€2': : : : : : : : : : : : : : : : : : : : : : 2@
Dense1/StatefulPartitionedCallDense1/StatefulPartitionedCall2@
Dense2/StatefulPartitionedCallDense2/StatefulPartitionedCall2@
Dense3/StatefulPartitionedCallDense3/StatefulPartitionedCall2H
"First_Conv/StatefulPartitionedCall"First_Conv/StatefulPartitionedCall2@
Linear/StatefulPartitionedCallLinear/StatefulPartitionedCall2J
#Second_Conv/StatefulPartitionedCall#Second_Conv/StatefulPartitionedCall2B
Softmax/StatefulPartitionedCallSoftmax/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall:X T
/
_output_shapes
:€€€€€€€€€2'
!
_user_specified_name	input_2
•

ц
B__inference_Dense2_layer_call_and_return_conditional_losses_229022

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
§G
Љ

C__inference_KWS_CNN_layer_call_and_return_conditional_losses_228149

inputs+
first_conv_228089:!^
first_conv_228091:^*
batch_normalization_2_228095:^*
batch_normalization_2_228097:^*
batch_normalization_2_228099:^*
batch_normalization_2_228101:^,
second_conv_228106:
^^ 
second_conv_228108:^*
batch_normalization_3_228112:^*
batch_normalization_3_228114:^*
batch_normalization_3_228116:^*
batch_normalization_3_228118:^!
linear_228123:
÷о 
linear_228125:  
dense1_228128:	 А
dense1_228130:	А!
dense2_228133:
АА
dense2_228135:	А!
dense3_228138:
АА
dense3_228140:	А!
softmax_228143:	А
softmax_228145:
identityИҐDense1/StatefulPartitionedCallҐDense2/StatefulPartitionedCallҐDense3/StatefulPartitionedCallҐ"First_Conv/StatefulPartitionedCallҐLinear/StatefulPartitionedCallҐ#Second_Conv/StatefulPartitionedCallҐSoftmax/StatefulPartitionedCallҐ-batch_normalization_2/StatefulPartitionedCallҐ-batch_normalization_3/StatefulPartitionedCallҐ!dropout_2/StatefulPartitionedCallҐ!dropout_3/StatefulPartitionedCallА
"First_Conv/StatefulPartitionedCallStatefulPartitionedCallinputsfirst_conv_228089first_conv_228091*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€2'^*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_First_Conv_layer_call_and_return_conditional_losses_227692ч
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall+First_Conv/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€2'^* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_228022О
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0batch_normalization_2_228095batch_normalization_2_228097batch_normalization_2_228099batch_normalization_2_228101*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€2'^*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_227588ф
MaxPooling/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€^* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_MaxPooling_layer_call_and_return_conditional_losses_227608е
activation_2/PartitionedCallPartitionedCall#MaxPooling/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€^* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_activation_2_layer_call_and_return_conditional_losses_227720£
#Second_Conv/StatefulPartitionedCallStatefulPartitionedCall%activation_2/PartitionedCall:output:0second_conv_228106second_conv_228108*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€^*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_Second_Conv_layer_call_and_return_conditional_losses_227732Ь
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall,Second_Conv/StatefulPartitionedCall:output:0"^dropout_2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€^* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_227983О
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0batch_normalization_3_228112batch_normalization_3_228114batch_normalization_3_228116batch_normalization_3_228118*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€^*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_227664ш
activation_3/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€^* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_activation_3_layer_call_and_return_conditional_losses_227759џ
flatten_1/PartitionedCallPartitionedCall%activation_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:€€€€€€€€€÷о* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_227767Д
Linear/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0linear_228123linear_228125*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_Linear_layer_call_and_return_conditional_losses_227779К
Dense1/StatefulPartitionedCallStatefulPartitionedCall'Linear/StatefulPartitionedCall:output:0dense1_228128dense1_228130*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_Dense1_layer_call_and_return_conditional_losses_227796К
Dense2/StatefulPartitionedCallStatefulPartitionedCall'Dense1/StatefulPartitionedCall:output:0dense2_228133dense2_228135*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_Dense2_layer_call_and_return_conditional_losses_227813К
Dense3/StatefulPartitionedCallStatefulPartitionedCall'Dense2/StatefulPartitionedCall:output:0dense3_228138dense3_228140*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_Dense3_layer_call_and_return_conditional_losses_227830Н
Softmax/StatefulPartitionedCallStatefulPartitionedCall'Dense3/StatefulPartitionedCall:output:0softmax_228143softmax_228145*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_Softmax_layer_call_and_return_conditional_losses_227847w
IdentityIdentity(Softmax/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€я
NoOpNoOp^Dense1/StatefulPartitionedCall^Dense2/StatefulPartitionedCall^Dense3/StatefulPartitionedCall#^First_Conv/StatefulPartitionedCall^Linear/StatefulPartitionedCall$^Second_Conv/StatefulPartitionedCall ^Softmax/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:€€€€€€€€€2': : : : : : : : : : : : : : : : : : : : : : 2@
Dense1/StatefulPartitionedCallDense1/StatefulPartitionedCall2@
Dense2/StatefulPartitionedCallDense2/StatefulPartitionedCall2@
Dense3/StatefulPartitionedCallDense3/StatefulPartitionedCall2H
"First_Conv/StatefulPartitionedCall"First_Conv/StatefulPartitionedCall2@
Linear/StatefulPartitionedCallLinear/StatefulPartitionedCall2J
#Second_Conv/StatefulPartitionedCall#Second_Conv/StatefulPartitionedCall2B
Softmax/StatefulPartitionedCallSoftmax/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€2'
 
_user_specified_nameinputs
С	
—
6__inference_batch_normalization_2_layer_call_fn_228765

inputs
unknown:^
	unknown_0:^
	unknown_1:^
	unknown_2:^
identityИҐStatefulPartitionedCallЪ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€^*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_227557Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€^`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€^: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€^
 
_user_specified_nameinputs
£

х
C__inference_Softmax_layer_call_and_return_conditional_losses_229062

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
√
Ц
(__inference_Softmax_layer_call_fn_229051

inputs
unknown:	А
	unknown_0:
identityИҐStatefulPartitionedCallЎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_Softmax_layer_call_and_return_conditional_losses_227847o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
≈
Ч
'__inference_Dense2_layer_call_fn_229011

inputs
unknown:
АА
	unknown_0:	А
identityИҐStatefulPartitionedCallЎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_Dense2_layer_call_and_return_conditional_losses_227813p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ќ	
х
B__inference_Linear_layer_call_and_return_conditional_losses_227779

inputs2
matmul_readvariableop_resource:
÷о -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
÷о *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€÷о: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:€€€€€€€€€÷о
 
_user_specified_nameinputs
ш
c
E__inference_dropout_2_layer_call_and_return_conditional_losses_228740

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:€€€€€€€€€2'^c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:€€€€€€€€€2'^"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€2'^:W S
/
_output_shapes
:€€€€€€€€€2'^
 
_user_specified_nameinputs
ћ
Ь
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_228924

inputs%
readvariableop_resource:^'
readvariableop_1_resource:^6
(fusedbatchnormv3_readvariableop_resource:^8
*fusedbatchnormv3_readvariableop_1_resource:^
identityИҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:^*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:^*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:^*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:^*
dtype0»
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€^:^:^:^:^:*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€^∞
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€^: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€^
 
_user_specified_nameinputs
™

А
G__inference_Second_Conv_layer_call_and_return_conditional_losses_228853

inputs8
conv2d_readvariableop_resource:
^^-
biasadd_readvariableop_resource:^
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:
^^*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€^*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:^*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€^g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€^w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€^: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€^
 
_user_specified_nameinputs
ш
c
E__inference_dropout_3_layer_call_and_return_conditional_losses_228868

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:€€€€€€€€€^c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:€€€€€€€€€^"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€^:W S
/
_output_shapes
:€€€€€€€€€^
 
_user_specified_nameinputs
√

d
E__inference_dropout_2_layer_call_and_return_conditional_losses_228022

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€2'^C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Ф
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€2'^*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>Ѓ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€2'^T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€2'^i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:€€€€€€€€€2'^"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€2'^:W S
/
_output_shapes
:€€€€€€€€€2'^
 
_user_specified_nameinputs
њ
F
*__inference_dropout_2_layer_call_fn_228730

inputs
identityЄ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€2'^* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_227703h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:€€€€€€€€€2'^"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€2'^:W S
/
_output_shapes
:€€€€€€€€€2'^
 
_user_specified_nameinputs
њ
F
*__inference_dropout_3_layer_call_fn_228858

inputs
identityЄ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€^* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_227743h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:€€€€€€€€€^"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€^:W S
/
_output_shapes
:€€€€€€€€€^
 
_user_specified_nameinputs
ЧН
ж(
"__inference__traced_restore_229479
file_prefix<
"assignvariableop_first_conv_kernel:!^0
"assignvariableop_1_first_conv_bias:^<
.assignvariableop_2_batch_normalization_2_gamma:^;
-assignvariableop_3_batch_normalization_2_beta:^B
4assignvariableop_4_batch_normalization_2_moving_mean:^F
8assignvariableop_5_batch_normalization_2_moving_variance:^?
%assignvariableop_6_second_conv_kernel:
^^1
#assignvariableop_7_second_conv_bias:^<
.assignvariableop_8_batch_normalization_3_gamma:^;
-assignvariableop_9_batch_normalization_3_beta:^C
5assignvariableop_10_batch_normalization_3_moving_mean:^G
9assignvariableop_11_batch_normalization_3_moving_variance:^5
!assignvariableop_12_linear_kernel:
÷о -
assignvariableop_13_linear_bias: 4
!assignvariableop_14_dense1_kernel:	 А.
assignvariableop_15_dense1_bias:	А5
!assignvariableop_16_dense2_kernel:
АА.
assignvariableop_17_dense2_bias:	А5
!assignvariableop_18_dense3_kernel:
АА.
assignvariableop_19_dense3_bias:	А5
"assignvariableop_20_softmax_kernel:	А.
 assignvariableop_21_softmax_bias:'
assignvariableop_22_iteration:	 +
!assignvariableop_23_learning_rate: F
,assignvariableop_24_adam_m_first_conv_kernel:!^F
,assignvariableop_25_adam_v_first_conv_kernel:!^8
*assignvariableop_26_adam_m_first_conv_bias:^8
*assignvariableop_27_adam_v_first_conv_bias:^D
6assignvariableop_28_adam_m_batch_normalization_2_gamma:^D
6assignvariableop_29_adam_v_batch_normalization_2_gamma:^C
5assignvariableop_30_adam_m_batch_normalization_2_beta:^C
5assignvariableop_31_adam_v_batch_normalization_2_beta:^G
-assignvariableop_32_adam_m_second_conv_kernel:
^^G
-assignvariableop_33_adam_v_second_conv_kernel:
^^9
+assignvariableop_34_adam_m_second_conv_bias:^9
+assignvariableop_35_adam_v_second_conv_bias:^D
6assignvariableop_36_adam_m_batch_normalization_3_gamma:^D
6assignvariableop_37_adam_v_batch_normalization_3_gamma:^C
5assignvariableop_38_adam_m_batch_normalization_3_beta:^C
5assignvariableop_39_adam_v_batch_normalization_3_beta:^<
(assignvariableop_40_adam_m_linear_kernel:
÷о <
(assignvariableop_41_adam_v_linear_kernel:
÷о 4
&assignvariableop_42_adam_m_linear_bias: 4
&assignvariableop_43_adam_v_linear_bias: ;
(assignvariableop_44_adam_m_dense1_kernel:	 А;
(assignvariableop_45_adam_v_dense1_kernel:	 А5
&assignvariableop_46_adam_m_dense1_bias:	А5
&assignvariableop_47_adam_v_dense1_bias:	А<
(assignvariableop_48_adam_m_dense2_kernel:
АА<
(assignvariableop_49_adam_v_dense2_kernel:
АА5
&assignvariableop_50_adam_m_dense2_bias:	А5
&assignvariableop_51_adam_v_dense2_bias:	А<
(assignvariableop_52_adam_m_dense3_kernel:
АА<
(assignvariableop_53_adam_v_dense3_kernel:
АА5
&assignvariableop_54_adam_m_dense3_bias:	А5
&assignvariableop_55_adam_v_dense3_bias:	А<
)assignvariableop_56_adam_m_softmax_kernel:	А<
)assignvariableop_57_adam_v_softmax_kernel:	А5
'assignvariableop_58_adam_m_softmax_bias:5
'assignvariableop_59_adam_v_softmax_bias:%
assignvariableop_60_total_1: %
assignvariableop_61_count_1: #
assignvariableop_62_total: #
assignvariableop_63_count: 
identity_65ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_39ҐAssignVariableOp_4ҐAssignVariableOp_40ҐAssignVariableOp_41ҐAssignVariableOp_42ҐAssignVariableOp_43ҐAssignVariableOp_44ҐAssignVariableOp_45ҐAssignVariableOp_46ҐAssignVariableOp_47ҐAssignVariableOp_48ҐAssignVariableOp_49ҐAssignVariableOp_5ҐAssignVariableOp_50ҐAssignVariableOp_51ҐAssignVariableOp_52ҐAssignVariableOp_53ҐAssignVariableOp_54ҐAssignVariableOp_55ҐAssignVariableOp_56ҐAssignVariableOp_57ҐAssignVariableOp_58ҐAssignVariableOp_59ҐAssignVariableOp_6ҐAssignVariableOp_60ҐAssignVariableOp_61ҐAssignVariableOp_62ҐAssignVariableOp_63ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9л
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:A*
dtype0*С
valueЗBДAB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHх
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:A*
dtype0*Ч
valueНBКAB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ж
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Ъ
_output_shapesЗ
Д:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*O
dtypesE
C2A	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:µ
AssignVariableOpAssignVariableOp"assignvariableop_first_conv_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:є
AssignVariableOp_1AssignVariableOp"assignvariableop_1_first_conv_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:≈
AssignVariableOp_2AssignVariableOp.assignvariableop_2_batch_normalization_2_gammaIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:ƒ
AssignVariableOp_3AssignVariableOp-assignvariableop_3_batch_normalization_2_betaIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_4AssignVariableOp4assignvariableop_4_batch_normalization_2_moving_meanIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:ѕ
AssignVariableOp_5AssignVariableOp8assignvariableop_5_batch_normalization_2_moving_varianceIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_6AssignVariableOp%assignvariableop_6_second_conv_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_7AssignVariableOp#assignvariableop_7_second_conv_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:≈
AssignVariableOp_8AssignVariableOp.assignvariableop_8_batch_normalization_3_gammaIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:ƒ
AssignVariableOp_9AssignVariableOp-assignvariableop_9_batch_normalization_3_betaIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_10AssignVariableOp5assignvariableop_10_batch_normalization_3_moving_meanIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:“
AssignVariableOp_11AssignVariableOp9assignvariableop_11_batch_normalization_3_moving_varianceIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_12AssignVariableOp!assignvariableop_12_linear_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_13AssignVariableOpassignvariableop_13_linear_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_14AssignVariableOp!assignvariableop_14_dense1_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_15AssignVariableOpassignvariableop_15_dense1_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_16AssignVariableOp!assignvariableop_16_dense2_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_17AssignVariableOpassignvariableop_17_dense2_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_18AssignVariableOp!assignvariableop_18_dense3_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_19AssignVariableOpassignvariableop_19_dense3_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_20AssignVariableOp"assignvariableop_20_softmax_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:є
AssignVariableOp_21AssignVariableOp assignvariableop_21_softmax_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0	*
_output_shapes
:ґ
AssignVariableOp_22AssignVariableOpassignvariableop_22_iterationIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_23AssignVariableOp!assignvariableop_23_learning_rateIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:≈
AssignVariableOp_24AssignVariableOp,assignvariableop_24_adam_m_first_conv_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:≈
AssignVariableOp_25AssignVariableOp,assignvariableop_25_adam_v_first_conv_kernelIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_m_first_conv_biasIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_v_first_conv_biasIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:ѕ
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_m_batch_normalization_2_gammaIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:ѕ
AssignVariableOp_29AssignVariableOp6assignvariableop_29_adam_v_batch_normalization_2_gammaIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_30AssignVariableOp5assignvariableop_30_adam_m_batch_normalization_2_betaIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_31AssignVariableOp5assignvariableop_31_adam_v_batch_normalization_2_betaIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:∆
AssignVariableOp_32AssignVariableOp-assignvariableop_32_adam_m_second_conv_kernelIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:∆
AssignVariableOp_33AssignVariableOp-assignvariableop_33_adam_v_second_conv_kernelIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:ƒ
AssignVariableOp_34AssignVariableOp+assignvariableop_34_adam_m_second_conv_biasIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:ƒ
AssignVariableOp_35AssignVariableOp+assignvariableop_35_adam_v_second_conv_biasIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:ѕ
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_m_batch_normalization_3_gammaIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:ѕ
AssignVariableOp_37AssignVariableOp6assignvariableop_37_adam_v_batch_normalization_3_gammaIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_38AssignVariableOp5assignvariableop_38_adam_m_batch_normalization_3_betaIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_39AssignVariableOp5assignvariableop_39_adam_v_batch_normalization_3_betaIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adam_m_linear_kernelIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_41AssignVariableOp(assignvariableop_41_adam_v_linear_kernelIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:њ
AssignVariableOp_42AssignVariableOp&assignvariableop_42_adam_m_linear_biasIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:њ
AssignVariableOp_43AssignVariableOp&assignvariableop_43_adam_v_linear_biasIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_44AssignVariableOp(assignvariableop_44_adam_m_dense1_kernelIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_45AssignVariableOp(assignvariableop_45_adam_v_dense1_kernelIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:њ
AssignVariableOp_46AssignVariableOp&assignvariableop_46_adam_m_dense1_biasIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:њ
AssignVariableOp_47AssignVariableOp&assignvariableop_47_adam_v_dense1_biasIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_48AssignVariableOp(assignvariableop_48_adam_m_dense2_kernelIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_49AssignVariableOp(assignvariableop_49_adam_v_dense2_kernelIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:њ
AssignVariableOp_50AssignVariableOp&assignvariableop_50_adam_m_dense2_biasIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:њ
AssignVariableOp_51AssignVariableOp&assignvariableop_51_adam_v_dense2_biasIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_52AssignVariableOp(assignvariableop_52_adam_m_dense3_kernelIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_53AssignVariableOp(assignvariableop_53_adam_v_dense3_kernelIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:њ
AssignVariableOp_54AssignVariableOp&assignvariableop_54_adam_m_dense3_biasIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:њ
AssignVariableOp_55AssignVariableOp&assignvariableop_55_adam_v_dense3_biasIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_56AssignVariableOp)assignvariableop_56_adam_m_softmax_kernelIdentity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_57AssignVariableOp)assignvariableop_57_adam_v_softmax_kernelIdentity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_58AssignVariableOp'assignvariableop_58_adam_m_softmax_biasIdentity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_59AssignVariableOp'assignvariableop_59_adam_v_softmax_biasIdentity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_60AssignVariableOpassignvariableop_60_total_1Identity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_61AssignVariableOpassignvariableop_61_count_1Identity_61:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_62AssignVariableOpassignvariableop_62_totalIdentity_62:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_63AssignVariableOpassignvariableop_63_countIdentity_63:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 ѕ
Identity_64Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_65IdentityIdentity_64:output:0^NoOp_1*
T0*
_output_shapes
: Љ
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_65Identity_65:output:0*Ч
_input_shapesЕ
В: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
≈
Ч
'__inference_Dense3_layer_call_fn_229031

inputs
unknown:
АА
	unknown_0:	А
identityИҐStatefulPartitionedCallЎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_Dense3_layer_call_and_return_conditional_losses_227830p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
°

х
B__inference_Dense1_layer_call_and_return_conditional_losses_229002

inputs1
matmul_readvariableop_resource:	 А.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
Ѓ
G
+__inference_MaxPooling_layer_call_fn_228819

inputs
identity‘
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_MaxPooling_layer_call_and_return_conditional_losses_227608Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ш
c
E__inference_dropout_3_layer_call_and_return_conditional_losses_227743

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:€€€€€€€€€^c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:€€€€€€€€€^"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€^:W S
/
_output_shapes
:€€€€€€€€€^
 
_user_specified_nameinputs
Ж
ј
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_227664

inputs%
readvariableop_resource:^'
readvariableop_1_resource:^6
(fusedbatchnormv3_readvariableop_resource:^8
*fusedbatchnormv3_readvariableop_1_resource:^
identityИҐAssignNewValueҐAssignNewValue_1ҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:^*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:^*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:^*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:^*
dtype0÷
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€^:^:^:^:^:*
epsilon%oГ:*
exponential_avg_factor%
„#<∆
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(–
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€^‘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€^: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€^
 
_user_specified_nameinputs
ІG
љ

C__inference_KWS_CNN_layer_call_and_return_conditional_losses_228371
input_2+
first_conv_228311:!^
first_conv_228313:^*
batch_normalization_2_228317:^*
batch_normalization_2_228319:^*
batch_normalization_2_228321:^*
batch_normalization_2_228323:^,
second_conv_228328:
^^ 
second_conv_228330:^*
batch_normalization_3_228334:^*
batch_normalization_3_228336:^*
batch_normalization_3_228338:^*
batch_normalization_3_228340:^!
linear_228345:
÷о 
linear_228347:  
dense1_228350:	 А
dense1_228352:	А!
dense2_228355:
АА
dense2_228357:	А!
dense3_228360:
АА
dense3_228362:	А!
softmax_228365:	А
softmax_228367:
identityИҐDense1/StatefulPartitionedCallҐDense2/StatefulPartitionedCallҐDense3/StatefulPartitionedCallҐ"First_Conv/StatefulPartitionedCallҐLinear/StatefulPartitionedCallҐ#Second_Conv/StatefulPartitionedCallҐSoftmax/StatefulPartitionedCallҐ-batch_normalization_2/StatefulPartitionedCallҐ-batch_normalization_3/StatefulPartitionedCallҐ!dropout_2/StatefulPartitionedCallҐ!dropout_3/StatefulPartitionedCallБ
"First_Conv/StatefulPartitionedCallStatefulPartitionedCallinput_2first_conv_228311first_conv_228313*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€2'^*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_First_Conv_layer_call_and_return_conditional_losses_227692ч
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall+First_Conv/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€2'^* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_228022О
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0batch_normalization_2_228317batch_normalization_2_228319batch_normalization_2_228321batch_normalization_2_228323*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€2'^*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_227588ф
MaxPooling/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€^* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_MaxPooling_layer_call_and_return_conditional_losses_227608е
activation_2/PartitionedCallPartitionedCall#MaxPooling/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€^* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_activation_2_layer_call_and_return_conditional_losses_227720£
#Second_Conv/StatefulPartitionedCallStatefulPartitionedCall%activation_2/PartitionedCall:output:0second_conv_228328second_conv_228330*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€^*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_Second_Conv_layer_call_and_return_conditional_losses_227732Ь
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall,Second_Conv/StatefulPartitionedCall:output:0"^dropout_2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€^* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_227983О
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0batch_normalization_3_228334batch_normalization_3_228336batch_normalization_3_228338batch_normalization_3_228340*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€^*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_227664ш
activation_3/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€^* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_activation_3_layer_call_and_return_conditional_losses_227759џ
flatten_1/PartitionedCallPartitionedCall%activation_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:€€€€€€€€€÷о* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_227767Д
Linear/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0linear_228345linear_228347*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_Linear_layer_call_and_return_conditional_losses_227779К
Dense1/StatefulPartitionedCallStatefulPartitionedCall'Linear/StatefulPartitionedCall:output:0dense1_228350dense1_228352*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_Dense1_layer_call_and_return_conditional_losses_227796К
Dense2/StatefulPartitionedCallStatefulPartitionedCall'Dense1/StatefulPartitionedCall:output:0dense2_228355dense2_228357*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_Dense2_layer_call_and_return_conditional_losses_227813К
Dense3/StatefulPartitionedCallStatefulPartitionedCall'Dense2/StatefulPartitionedCall:output:0dense3_228360dense3_228362*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_Dense3_layer_call_and_return_conditional_losses_227830Н
Softmax/StatefulPartitionedCallStatefulPartitionedCall'Dense3/StatefulPartitionedCall:output:0softmax_228365softmax_228367*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_Softmax_layer_call_and_return_conditional_losses_227847w
IdentityIdentity(Softmax/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€я
NoOpNoOp^Dense1/StatefulPartitionedCall^Dense2/StatefulPartitionedCall^Dense3/StatefulPartitionedCall#^First_Conv/StatefulPartitionedCall^Linear/StatefulPartitionedCall$^Second_Conv/StatefulPartitionedCall ^Softmax/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:€€€€€€€€€2': : : : : : : : : : : : : : : : : : : : : : 2@
Dense1/StatefulPartitionedCallDense1/StatefulPartitionedCall2@
Dense2/StatefulPartitionedCallDense2/StatefulPartitionedCall2@
Dense3/StatefulPartitionedCallDense3/StatefulPartitionedCall2H
"First_Conv/StatefulPartitionedCall"First_Conv/StatefulPartitionedCall2@
Linear/StatefulPartitionedCallLinear/StatefulPartitionedCall2J
#Second_Conv/StatefulPartitionedCall#Second_Conv/StatefulPartitionedCall2B
Softmax/StatefulPartitionedCallSoftmax/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall:X T
/
_output_shapes
:€€€€€€€€€2'
!
_user_specified_name	input_2
µ
«
(__inference_KWS_CNN_layer_call_fn_228522

inputs!
unknown:!^
	unknown_0:^
	unknown_1:^
	unknown_2:^
	unknown_3:^
	unknown_4:^#
	unknown_5:
^^
	unknown_6:^
	unknown_7:^
	unknown_8:^
	unknown_9:^

unknown_10:^

unknown_11:
÷о 

unknown_12: 

unknown_13:	 А

unknown_14:	А

unknown_15:
АА

unknown_16:	А

unknown_17:
АА

unknown_18:	А

unknown_19:	А

unknown_20:
identityИҐStatefulPartitionedCallг
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_KWS_CNN_layer_call_and_return_conditional_losses_228149o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:€€€€€€€€€2': : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€2'
 
_user_specified_nameinputs
Є
»
(__inference_KWS_CNN_layer_call_fn_228245
input_2!
unknown:!^
	unknown_0:^
	unknown_1:^
	unknown_2:^
	unknown_3:^
	unknown_4:^#
	unknown_5:
^^
	unknown_6:^
	unknown_7:^
	unknown_8:^
	unknown_9:^

unknown_10:^

unknown_11:
÷о 

unknown_12: 

unknown_13:	 А

unknown_14:	А

unknown_15:
АА

unknown_16:	А

unknown_17:
АА

unknown_18:	А

unknown_19:	А

unknown_20:
identityИҐStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_KWS_CNN_layer_call_and_return_conditional_losses_228149o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:€€€€€€€€€2': : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:€€€€€€€€€2'
!
_user_specified_name	input_2
сw
‘
__inference__traced_save_229277
file_prefix0
,savev2_first_conv_kernel_read_readvariableop.
*savev2_first_conv_bias_read_readvariableop:
6savev2_batch_normalization_2_gamma_read_readvariableop9
5savev2_batch_normalization_2_beta_read_readvariableop@
<savev2_batch_normalization_2_moving_mean_read_readvariableopD
@savev2_batch_normalization_2_moving_variance_read_readvariableop1
-savev2_second_conv_kernel_read_readvariableop/
+savev2_second_conv_bias_read_readvariableop:
6savev2_batch_normalization_3_gamma_read_readvariableop9
5savev2_batch_normalization_3_beta_read_readvariableop@
<savev2_batch_normalization_3_moving_mean_read_readvariableopD
@savev2_batch_normalization_3_moving_variance_read_readvariableop,
(savev2_linear_kernel_read_readvariableop*
&savev2_linear_bias_read_readvariableop,
(savev2_dense1_kernel_read_readvariableop*
&savev2_dense1_bias_read_readvariableop,
(savev2_dense2_kernel_read_readvariableop*
&savev2_dense2_bias_read_readvariableop,
(savev2_dense3_kernel_read_readvariableop*
&savev2_dense3_bias_read_readvariableop-
)savev2_softmax_kernel_read_readvariableop+
'savev2_softmax_bias_read_readvariableop(
$savev2_iteration_read_readvariableop	,
(savev2_learning_rate_read_readvariableop7
3savev2_adam_m_first_conv_kernel_read_readvariableop7
3savev2_adam_v_first_conv_kernel_read_readvariableop5
1savev2_adam_m_first_conv_bias_read_readvariableop5
1savev2_adam_v_first_conv_bias_read_readvariableopA
=savev2_adam_m_batch_normalization_2_gamma_read_readvariableopA
=savev2_adam_v_batch_normalization_2_gamma_read_readvariableop@
<savev2_adam_m_batch_normalization_2_beta_read_readvariableop@
<savev2_adam_v_batch_normalization_2_beta_read_readvariableop8
4savev2_adam_m_second_conv_kernel_read_readvariableop8
4savev2_adam_v_second_conv_kernel_read_readvariableop6
2savev2_adam_m_second_conv_bias_read_readvariableop6
2savev2_adam_v_second_conv_bias_read_readvariableopA
=savev2_adam_m_batch_normalization_3_gamma_read_readvariableopA
=savev2_adam_v_batch_normalization_3_gamma_read_readvariableop@
<savev2_adam_m_batch_normalization_3_beta_read_readvariableop@
<savev2_adam_v_batch_normalization_3_beta_read_readvariableop3
/savev2_adam_m_linear_kernel_read_readvariableop3
/savev2_adam_v_linear_kernel_read_readvariableop1
-savev2_adam_m_linear_bias_read_readvariableop1
-savev2_adam_v_linear_bias_read_readvariableop3
/savev2_adam_m_dense1_kernel_read_readvariableop3
/savev2_adam_v_dense1_kernel_read_readvariableop1
-savev2_adam_m_dense1_bias_read_readvariableop1
-savev2_adam_v_dense1_bias_read_readvariableop3
/savev2_adam_m_dense2_kernel_read_readvariableop3
/savev2_adam_v_dense2_kernel_read_readvariableop1
-savev2_adam_m_dense2_bias_read_readvariableop1
-savev2_adam_v_dense2_bias_read_readvariableop3
/savev2_adam_m_dense3_kernel_read_readvariableop3
/savev2_adam_v_dense3_kernel_read_readvariableop1
-savev2_adam_m_dense3_bias_read_readvariableop1
-savev2_adam_v_dense3_bias_read_readvariableop4
0savev2_adam_m_softmax_kernel_read_readvariableop4
0savev2_adam_v_softmax_kernel_read_readvariableop2
.savev2_adam_m_softmax_bias_read_readvariableop2
.savev2_adam_v_softmax_bias_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1ИҐMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: и
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:A*
dtype0*С
valueЗBДAB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHт
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:A*
dtype0*Ч
valueНBКAB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B А
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_first_conv_kernel_read_readvariableop*savev2_first_conv_bias_read_readvariableop6savev2_batch_normalization_2_gamma_read_readvariableop5savev2_batch_normalization_2_beta_read_readvariableop<savev2_batch_normalization_2_moving_mean_read_readvariableop@savev2_batch_normalization_2_moving_variance_read_readvariableop-savev2_second_conv_kernel_read_readvariableop+savev2_second_conv_bias_read_readvariableop6savev2_batch_normalization_3_gamma_read_readvariableop5savev2_batch_normalization_3_beta_read_readvariableop<savev2_batch_normalization_3_moving_mean_read_readvariableop@savev2_batch_normalization_3_moving_variance_read_readvariableop(savev2_linear_kernel_read_readvariableop&savev2_linear_bias_read_readvariableop(savev2_dense1_kernel_read_readvariableop&savev2_dense1_bias_read_readvariableop(savev2_dense2_kernel_read_readvariableop&savev2_dense2_bias_read_readvariableop(savev2_dense3_kernel_read_readvariableop&savev2_dense3_bias_read_readvariableop)savev2_softmax_kernel_read_readvariableop'savev2_softmax_bias_read_readvariableop$savev2_iteration_read_readvariableop(savev2_learning_rate_read_readvariableop3savev2_adam_m_first_conv_kernel_read_readvariableop3savev2_adam_v_first_conv_kernel_read_readvariableop1savev2_adam_m_first_conv_bias_read_readvariableop1savev2_adam_v_first_conv_bias_read_readvariableop=savev2_adam_m_batch_normalization_2_gamma_read_readvariableop=savev2_adam_v_batch_normalization_2_gamma_read_readvariableop<savev2_adam_m_batch_normalization_2_beta_read_readvariableop<savev2_adam_v_batch_normalization_2_beta_read_readvariableop4savev2_adam_m_second_conv_kernel_read_readvariableop4savev2_adam_v_second_conv_kernel_read_readvariableop2savev2_adam_m_second_conv_bias_read_readvariableop2savev2_adam_v_second_conv_bias_read_readvariableop=savev2_adam_m_batch_normalization_3_gamma_read_readvariableop=savev2_adam_v_batch_normalization_3_gamma_read_readvariableop<savev2_adam_m_batch_normalization_3_beta_read_readvariableop<savev2_adam_v_batch_normalization_3_beta_read_readvariableop/savev2_adam_m_linear_kernel_read_readvariableop/savev2_adam_v_linear_kernel_read_readvariableop-savev2_adam_m_linear_bias_read_readvariableop-savev2_adam_v_linear_bias_read_readvariableop/savev2_adam_m_dense1_kernel_read_readvariableop/savev2_adam_v_dense1_kernel_read_readvariableop-savev2_adam_m_dense1_bias_read_readvariableop-savev2_adam_v_dense1_bias_read_readvariableop/savev2_adam_m_dense2_kernel_read_readvariableop/savev2_adam_v_dense2_kernel_read_readvariableop-savev2_adam_m_dense2_bias_read_readvariableop-savev2_adam_v_dense2_bias_read_readvariableop/savev2_adam_m_dense3_kernel_read_readvariableop/savev2_adam_v_dense3_kernel_read_readvariableop-savev2_adam_m_dense3_bias_read_readvariableop-savev2_adam_v_dense3_bias_read_readvariableop0savev2_adam_m_softmax_kernel_read_readvariableop0savev2_adam_v_softmax_kernel_read_readvariableop.savev2_adam_m_softmax_bias_read_readvariableop.savev2_adam_v_softmax_bias_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *O
dtypesE
C2A	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:≥
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*¶
_input_shapesФ
С: :!^:^:^:^:^:^:
^^:^:^:^:^:^:
÷о : :	 А:А:
АА:А:
АА:А:	А:: : :!^:!^:^:^:^:^:^:^:
^^:
^^:^:^:^:^:^:^:
÷о :
÷о : : :	 А:	 А:А:А:
АА:
АА:А:А:
АА:
АА:А:А:	А:	А::: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:!^: 

_output_shapes
:^: 

_output_shapes
:^: 

_output_shapes
:^: 

_output_shapes
:^: 

_output_shapes
:^:,(
&
_output_shapes
:
^^: 

_output_shapes
:^: 	

_output_shapes
:^: 


_output_shapes
:^: 

_output_shapes
:^: 

_output_shapes
:^:&"
 
_output_shapes
:
÷о : 

_output_shapes
: :%!

_output_shapes
:	 А:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:%!

_output_shapes
:	А: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:!^:,(
&
_output_shapes
:!^: 

_output_shapes
:^: 

_output_shapes
:^: 

_output_shapes
:^: 

_output_shapes
:^: 

_output_shapes
:^:  

_output_shapes
:^:,!(
&
_output_shapes
:
^^:,"(
&
_output_shapes
:
^^: #

_output_shapes
:^: $

_output_shapes
:^: %

_output_shapes
:^: &

_output_shapes
:^: '

_output_shapes
:^: (

_output_shapes
:^:&)"
 
_output_shapes
:
÷о :&*"
 
_output_shapes
:
÷о : +

_output_shapes
: : ,

_output_shapes
: :%-!

_output_shapes
:	 А:%.!

_output_shapes
:	 А:!/

_output_shapes	
:А:!0

_output_shapes	
:А:&1"
 
_output_shapes
:
АА:&2"
 
_output_shapes
:
АА:!3

_output_shapes	
:А:!4

_output_shapes	
:А:&5"
 
_output_shapes
:
АА:&6"
 
_output_shapes
:
АА:!7

_output_shapes	
:А:!8

_output_shapes	
:А:%9!

_output_shapes
:	А:%:!

_output_shapes
:	А: ;

_output_shapes
:: <

_output_shapes
::=

_output_shapes
: :>

_output_shapes
: :?

_output_shapes
: :@

_output_shapes
: :A

_output_shapes
: 
м
d
H__inference_activation_3_layer_call_and_return_conditional_losses_227759

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:€€€€€€€€€^b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€^"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€^:W S
/
_output_shapes
:€€€€€€€€€^
 
_user_specified_nameinputs
ћ
Ь
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_227557

inputs%
readvariableop_resource:^'
readvariableop_1_resource:^6
(fusedbatchnormv3_readvariableop_resource:^8
*fusedbatchnormv3_readvariableop_1_resource:^
identityИҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:^*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:^*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:^*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:^*
dtype0»
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€^:^:^:^:^:*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€^∞
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€^: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€^
 
_user_specified_nameinputs"Ж
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*≤
serving_defaultЮ
C
input_28
serving_default_input_2:0€€€€€€€€€2';
Softmax0
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:сь
£
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer-10
layer_with_weights-4
layer-11
layer_with_weights-5
layer-12
layer_with_weights-6
layer-13
layer_with_weights-7
layer-14
layer_with_weights-8
layer-15
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
Ё
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

 kernel
!bias
 "_jit_compiled_convolution_op"
_tf_keras_layer
Љ
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses
)_random_generator"
_tf_keras_layer
к
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses
0axis
	1gamma
2beta
3moving_mean
4moving_variance"
_tf_keras_layer
•
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses"
_tf_keras_layer
•
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses"
_tf_keras_layer
Ё
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses

Gkernel
Hbias
 I_jit_compiled_convolution_op"
_tf_keras_layer
Љ
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses
P_random_generator"
_tf_keras_layer
к
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses
Waxis
	Xgamma
Ybeta
Zmoving_mean
[moving_variance"
_tf_keras_layer
•
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses"
_tf_keras_layer
•
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses"
_tf_keras_layer
ї
h	variables
itrainable_variables
jregularization_losses
k	keras_api
l__call__
*m&call_and_return_all_conditional_losses

nkernel
obias"
_tf_keras_layer
ї
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses

vkernel
wbias"
_tf_keras_layer
ї
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|__call__
*}&call_and_return_all_conditional_losses

~kernel
bias"
_tf_keras_layer
√
А	variables
Бtrainable_variables
Вregularization_losses
Г	keras_api
Д__call__
+Е&call_and_return_all_conditional_losses
Жkernel
	Зbias"
_tf_keras_layer
√
И	variables
Йtrainable_variables
Кregularization_losses
Л	keras_api
М__call__
+Н&call_and_return_all_conditional_losses
Оkernel
	Пbias"
_tf_keras_layer
 
 0
!1
12
23
34
45
G6
H7
X8
Y9
Z10
[11
n12
o13
v14
w15
~16
17
Ж18
З19
О20
П21"
trackable_list_wrapper
™
 0
!1
12
23
G4
H5
X6
Y7
n8
o9
v10
w11
~12
13
Ж14
З15
О16
П17"
trackable_list_wrapper
 "
trackable_list_wrapper
ѕ
Рnon_trainable_variables
Сlayers
Тmetrics
 Уlayer_regularization_losses
Фlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ё
Хtrace_0
Цtrace_1
Чtrace_2
Шtrace_32к
(__inference_KWS_CNN_layer_call_fn_227901
(__inference_KWS_CNN_layer_call_fn_228473
(__inference_KWS_CNN_layer_call_fn_228522
(__inference_KWS_CNN_layer_call_fn_228245њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zХtrace_0zЦtrace_1zЧtrace_2zШtrace_3
…
Щtrace_0
Ъtrace_1
Ыtrace_2
Ьtrace_32÷
C__inference_KWS_CNN_layer_call_and_return_conditional_losses_228607
C__inference_KWS_CNN_layer_call_and_return_conditional_losses_228706
C__inference_KWS_CNN_layer_call_and_return_conditional_losses_228308
C__inference_KWS_CNN_layer_call_and_return_conditional_losses_228371њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЩtrace_0zЪtrace_1zЫtrace_2zЬtrace_3
ћB…
!__inference__wrapped_model_227535input_2"Ш
С≤Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
£
Э
_variables
Ю_iterations
Я_learning_rate
†_index_dict
°
_momentums
Ґ_velocities
£_update_step_xla"
experimentalOptimizer
-
§serving_default"
signature_map
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
•non_trainable_variables
¶layers
Іmetrics
 ®layer_regularization_losses
©layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
с
™trace_02“
+__inference_First_Conv_layer_call_fn_228715Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z™trace_0
М
Ђtrace_02н
F__inference_First_Conv_layer_call_and_return_conditional_losses_228725Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЂtrace_0
+:)!^2First_Conv/kernel
:^2First_Conv/bias
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
ђnon_trainable_variables
≠layers
Ѓmetrics
 ѓlayer_regularization_losses
∞layer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
…
±trace_0
≤trace_12О
*__inference_dropout_2_layer_call_fn_228730
*__inference_dropout_2_layer_call_fn_228735≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z±trace_0z≤trace_1
€
≥trace_0
іtrace_12ƒ
E__inference_dropout_2_layer_call_and_return_conditional_losses_228740
E__inference_dropout_2_layer_call_and_return_conditional_losses_228752≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z≥trace_0zіtrace_1
"
_generic_user_object
<
10
21
32
43"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
µnon_trainable_variables
ґlayers
Јmetrics
 Єlayer_regularization_losses
єlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
б
Їtrace_0
їtrace_12¶
6__inference_batch_normalization_2_layer_call_fn_228765
6__inference_batch_normalization_2_layer_call_fn_228778≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЇtrace_0zїtrace_1
Ч
Љtrace_0
љtrace_12№
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_228796
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_228814≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЉtrace_0zљtrace_1
 "
trackable_list_wrapper
):'^2batch_normalization_2/gamma
(:&^2batch_normalization_2/beta
1:/^ (2!batch_normalization_2/moving_mean
5:3^ (2%batch_normalization_2/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Њnon_trainable_variables
њlayers
јmetrics
 Ѕlayer_regularization_losses
¬layer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses"
_generic_user_object
с
√trace_02“
+__inference_MaxPooling_layer_call_fn_228819Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z√trace_0
М
ƒtrace_02н
F__inference_MaxPooling_layer_call_and_return_conditional_losses_228824Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zƒtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
≈non_trainable_variables
∆layers
«metrics
 »layer_regularization_losses
…layer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
у
 trace_02‘
-__inference_activation_2_layer_call_fn_228829Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z trace_0
О
Ћtrace_02п
H__inference_activation_2_layer_call_and_return_conditional_losses_228834Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЋtrace_0
.
G0
H1"
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
ћnon_trainable_variables
Ќlayers
ќmetrics
 ѕlayer_regularization_losses
–layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
т
—trace_02”
,__inference_Second_Conv_layer_call_fn_228843Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z—trace_0
Н
“trace_02о
G__inference_Second_Conv_layer_call_and_return_conditional_losses_228853Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z“trace_0
,:*
^^2Second_Conv/kernel
:^2Second_Conv/bias
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
”non_trainable_variables
‘layers
’metrics
 ÷layer_regularization_losses
„layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
…
Ўtrace_0
ўtrace_12О
*__inference_dropout_3_layer_call_fn_228858
*__inference_dropout_3_layer_call_fn_228863≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЎtrace_0zўtrace_1
€
Џtrace_0
џtrace_12ƒ
E__inference_dropout_3_layer_call_and_return_conditional_losses_228868
E__inference_dropout_3_layer_call_and_return_conditional_losses_228880≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЏtrace_0zџtrace_1
"
_generic_user_object
<
X0
Y1
Z2
[3"
trackable_list_wrapper
.
X0
Y1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
№non_trainable_variables
Ёlayers
ёmetrics
 яlayer_regularization_losses
аlayer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
б
бtrace_0
вtrace_12¶
6__inference_batch_normalization_3_layer_call_fn_228893
6__inference_batch_normalization_3_layer_call_fn_228906≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zбtrace_0zвtrace_1
Ч
гtrace_0
дtrace_12№
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_228924
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_228942≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zгtrace_0zдtrace_1
 "
trackable_list_wrapper
):'^2batch_normalization_3/gamma
(:&^2batch_normalization_3/beta
1:/^ (2!batch_normalization_3/moving_mean
5:3^ (2%batch_normalization_3/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
еnon_trainable_variables
жlayers
зmetrics
 иlayer_regularization_losses
йlayer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
у
кtrace_02‘
-__inference_activation_3_layer_call_fn_228947Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zкtrace_0
О
лtrace_02п
H__inference_activation_3_layer_call_and_return_conditional_losses_228952Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zлtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
мnon_trainable_variables
нlayers
оmetrics
 пlayer_regularization_losses
рlayer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
р
сtrace_02—
*__inference_flatten_1_layer_call_fn_228957Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zсtrace_0
Л
тtrace_02м
E__inference_flatten_1_layer_call_and_return_conditional_losses_228963Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zтtrace_0
.
n0
o1"
trackable_list_wrapper
.
n0
o1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
уnon_trainable_variables
фlayers
хmetrics
 цlayer_regularization_losses
чlayer_metrics
h	variables
itrainable_variables
jregularization_losses
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses"
_generic_user_object
н
шtrace_02ќ
'__inference_Linear_layer_call_fn_228972Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zшtrace_0
И
щtrace_02й
B__inference_Linear_layer_call_and_return_conditional_losses_228982Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zщtrace_0
!:
÷о 2Linear/kernel
: 2Linear/bias
.
v0
w1"
trackable_list_wrapper
.
v0
w1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
ъnon_trainable_variables
ыlayers
ьmetrics
 эlayer_regularization_losses
юlayer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
н
€trace_02ќ
'__inference_Dense1_layer_call_fn_228991Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z€trace_0
И
Аtrace_02й
B__inference_Dense1_layer_call_and_return_conditional_losses_229002Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zАtrace_0
 :	 А2Dense1/kernel
:А2Dense1/bias
.
~0
1"
trackable_list_wrapper
.
~0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Бnon_trainable_variables
Вlayers
Гmetrics
 Дlayer_regularization_losses
Еlayer_metrics
x	variables
ytrainable_variables
zregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
н
Жtrace_02ќ
'__inference_Dense2_layer_call_fn_229011Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЖtrace_0
И
Зtrace_02й
B__inference_Dense2_layer_call_and_return_conditional_losses_229022Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЗtrace_0
!:
АА2Dense2/kernel
:А2Dense2/bias
0
Ж0
З1"
trackable_list_wrapper
0
Ж0
З1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Иnon_trainable_variables
Йlayers
Кmetrics
 Лlayer_regularization_losses
Мlayer_metrics
А	variables
Бtrainable_variables
Вregularization_losses
Д__call__
+Е&call_and_return_all_conditional_losses
'Е"call_and_return_conditional_losses"
_generic_user_object
н
Нtrace_02ќ
'__inference_Dense3_layer_call_fn_229031Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zНtrace_0
И
Оtrace_02й
B__inference_Dense3_layer_call_and_return_conditional_losses_229042Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zОtrace_0
!:
АА2Dense3/kernel
:А2Dense3/bias
0
О0
П1"
trackable_list_wrapper
0
О0
П1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Пnon_trainable_variables
Рlayers
Сmetrics
 Тlayer_regularization_losses
Уlayer_metrics
И	variables
Йtrainable_variables
Кregularization_losses
М__call__
+Н&call_and_return_all_conditional_losses
'Н"call_and_return_conditional_losses"
_generic_user_object
о
Фtrace_02ѕ
(__inference_Softmax_layer_call_fn_229051Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zФtrace_0
Й
Хtrace_02к
C__inference_Softmax_layer_call_and_return_conditional_losses_229062Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zХtrace_0
!:	А2Softmax/kernel
:2Softmax/bias
<
30
41
Z2
[3"
trackable_list_wrapper
Ц
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15"
trackable_list_wrapper
0
Ц0
Ч1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ъBч
(__inference_KWS_CNN_layer_call_fn_227901input_2"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
щBц
(__inference_KWS_CNN_layer_call_fn_228473inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
щBц
(__inference_KWS_CNN_layer_call_fn_228522inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ъBч
(__inference_KWS_CNN_layer_call_fn_228245input_2"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ФBС
C__inference_KWS_CNN_layer_call_and_return_conditional_losses_228607inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ФBС
C__inference_KWS_CNN_layer_call_and_return_conditional_losses_228706inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ХBТ
C__inference_KWS_CNN_layer_call_and_return_conditional_losses_228308input_2"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ХBТ
C__inference_KWS_CNN_layer_call_and_return_conditional_losses_228371input_2"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
г
Ю0
Ш1
Щ2
Ъ3
Ы4
Ь5
Э6
Ю7
Я8
†9
°10
Ґ11
£12
§13
•14
¶15
І16
®17
©18
™19
Ђ20
ђ21
≠22
Ѓ23
ѓ24
∞25
±26
≤27
≥28
і29
µ30
ґ31
Ј32
Є33
є34
Ї35
ї36"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
Є
Ш0
Ъ1
Ь2
Ю3
†4
Ґ5
§6
¶7
®8
™9
ђ10
Ѓ11
∞12
≤13
і14
ґ15
Є16
Ї17"
trackable_list_wrapper
Є
Щ0
Ы1
Э2
Я3
°4
£5
•6
І7
©8
Ђ9
≠10
ѓ11
±12
≥13
µ14
Ј15
є16
ї17"
trackable_list_wrapper
њ2Љє
Ѓ≤™
FullArgSpec2
args*Ъ'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
ЋB»
$__inference_signature_wrapper_228424input_2"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
яB№
+__inference_First_Conv_layer_call_fn_228715inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ъBч
F__inference_First_Conv_layer_call_and_return_conditional_losses_228725inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
пBм
*__inference_dropout_2_layer_call_fn_228730inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
пBм
*__inference_dropout_2_layer_call_fn_228735inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
КBЗ
E__inference_dropout_2_layer_call_and_return_conditional_losses_228740inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
КBЗ
E__inference_dropout_2_layer_call_and_return_conditional_losses_228752inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ыBш
6__inference_batch_normalization_2_layer_call_fn_228765inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ыBш
6__inference_batch_normalization_2_layer_call_fn_228778inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЦBУ
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_228796inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЦBУ
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_228814inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
яB№
+__inference_MaxPooling_layer_call_fn_228819inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ъBч
F__inference_MaxPooling_layer_call_and_return_conditional_losses_228824inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
бBё
-__inference_activation_2_layer_call_fn_228829inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ьBщ
H__inference_activation_2_layer_call_and_return_conditional_losses_228834inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
аBЁ
,__inference_Second_Conv_layer_call_fn_228843inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ыBш
G__inference_Second_Conv_layer_call_and_return_conditional_losses_228853inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
пBм
*__inference_dropout_3_layer_call_fn_228858inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
пBм
*__inference_dropout_3_layer_call_fn_228863inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
КBЗ
E__inference_dropout_3_layer_call_and_return_conditional_losses_228868inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
КBЗ
E__inference_dropout_3_layer_call_and_return_conditional_losses_228880inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
.
Z0
[1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ыBш
6__inference_batch_normalization_3_layer_call_fn_228893inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ыBш
6__inference_batch_normalization_3_layer_call_fn_228906inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЦBУ
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_228924inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЦBУ
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_228942inputs"≥
™≤¶
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
бBё
-__inference_activation_3_layer_call_fn_228947inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ьBщ
H__inference_activation_3_layer_call_and_return_conditional_losses_228952inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ёBџ
*__inference_flatten_1_layer_call_fn_228957inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
щBц
E__inference_flatten_1_layer_call_and_return_conditional_losses_228963inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
џBЎ
'__inference_Linear_layer_call_fn_228972inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
цBу
B__inference_Linear_layer_call_and_return_conditional_losses_228982inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
џBЎ
'__inference_Dense1_layer_call_fn_228991inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
цBу
B__inference_Dense1_layer_call_and_return_conditional_losses_229002inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
џBЎ
'__inference_Dense2_layer_call_fn_229011inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
цBу
B__inference_Dense2_layer_call_and_return_conditional_losses_229022inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
џBЎ
'__inference_Dense3_layer_call_fn_229031inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
цBу
B__inference_Dense3_layer_call_and_return_conditional_losses_229042inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
№Bў
(__inference_Softmax_layer_call_fn_229051inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
чBф
C__inference_Softmax_layer_call_and_return_conditional_losses_229062inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
R
Љ	variables
љ	keras_api

Њtotal

њcount"
_tf_keras_metric
c
ј	variables
Ѕ	keras_api

¬total

√count
ƒ
_fn_kwargs"
_tf_keras_metric
0:.!^2Adam/m/First_Conv/kernel
0:.!^2Adam/v/First_Conv/kernel
": ^2Adam/m/First_Conv/bias
": ^2Adam/v/First_Conv/bias
.:,^2"Adam/m/batch_normalization_2/gamma
.:,^2"Adam/v/batch_normalization_2/gamma
-:+^2!Adam/m/batch_normalization_2/beta
-:+^2!Adam/v/batch_normalization_2/beta
1:/
^^2Adam/m/Second_Conv/kernel
1:/
^^2Adam/v/Second_Conv/kernel
#:!^2Adam/m/Second_Conv/bias
#:!^2Adam/v/Second_Conv/bias
.:,^2"Adam/m/batch_normalization_3/gamma
.:,^2"Adam/v/batch_normalization_3/gamma
-:+^2!Adam/m/batch_normalization_3/beta
-:+^2!Adam/v/batch_normalization_3/beta
&:$
÷о 2Adam/m/Linear/kernel
&:$
÷о 2Adam/v/Linear/kernel
: 2Adam/m/Linear/bias
: 2Adam/v/Linear/bias
%:#	 А2Adam/m/Dense1/kernel
%:#	 А2Adam/v/Dense1/kernel
:А2Adam/m/Dense1/bias
:А2Adam/v/Dense1/bias
&:$
АА2Adam/m/Dense2/kernel
&:$
АА2Adam/v/Dense2/kernel
:А2Adam/m/Dense2/bias
:А2Adam/v/Dense2/bias
&:$
АА2Adam/m/Dense3/kernel
&:$
АА2Adam/v/Dense3/kernel
:А2Adam/m/Dense3/bias
:А2Adam/v/Dense3/bias
&:$	А2Adam/m/Softmax/kernel
&:$	А2Adam/v/Softmax/kernel
:2Adam/m/Softmax/bias
:2Adam/v/Softmax/bias
0
Њ0
њ1"
trackable_list_wrapper
.
Љ	variables"
_generic_user_object
:  (2total
:  (2count
0
¬0
√1"
trackable_list_wrapper
.
ј	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper™
B__inference_Dense1_layer_call_and_return_conditional_losses_229002dvw/Ґ,
%Ґ"
 К
inputs€€€€€€€€€ 
™ "-Ґ*
#К 
tensor_0€€€€€€€€€А
Ъ Д
'__inference_Dense1_layer_call_fn_228991Yvw/Ґ,
%Ґ"
 К
inputs€€€€€€€€€ 
™ ""К
unknown€€€€€€€€€АЂ
B__inference_Dense2_layer_call_and_return_conditional_losses_229022e~0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "-Ґ*
#К 
tensor_0€€€€€€€€€А
Ъ Е
'__inference_Dense2_layer_call_fn_229011Z~0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ ""К
unknown€€€€€€€€€А≠
B__inference_Dense3_layer_call_and_return_conditional_losses_229042gЖЗ0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "-Ґ*
#К 
tensor_0€€€€€€€€€А
Ъ З
'__inference_Dense3_layer_call_fn_229031\ЖЗ0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ ""К
unknown€€€€€€€€€Аљ
F__inference_First_Conv_layer_call_and_return_conditional_losses_228725s !7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€2'
™ "4Ґ1
*К'
tensor_0€€€€€€€€€2'^
Ъ Ч
+__inference_First_Conv_layer_call_fn_228715h !7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€2'
™ ")К&
unknown€€€€€€€€€2'^‘
C__inference_KWS_CNN_layer_call_and_return_conditional_losses_228308М !1234GHXYZ[novw~ЖЗОП@Ґ=
6Ґ3
)К&
input_2€€€€€€€€€2'
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ ‘
C__inference_KWS_CNN_layer_call_and_return_conditional_losses_228371М !1234GHXYZ[novw~ЖЗОП@Ґ=
6Ґ3
)К&
input_2€€€€€€€€€2'
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ ”
C__inference_KWS_CNN_layer_call_and_return_conditional_losses_228607Л !1234GHXYZ[novw~ЖЗОП?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€2'
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ ”
C__inference_KWS_CNN_layer_call_and_return_conditional_losses_228706Л !1234GHXYZ[novw~ЖЗОП?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€2'
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Ѓ
(__inference_KWS_CNN_layer_call_fn_227901Б !1234GHXYZ[novw~ЖЗОП@Ґ=
6Ґ3
)К&
input_2€€€€€€€€€2'
p 

 
™ "!К
unknown€€€€€€€€€Ѓ
(__inference_KWS_CNN_layer_call_fn_228245Б !1234GHXYZ[novw~ЖЗОП@Ґ=
6Ґ3
)К&
input_2€€€€€€€€€2'
p

 
™ "!К
unknown€€€€€€€€€≠
(__inference_KWS_CNN_layer_call_fn_228473А !1234GHXYZ[novw~ЖЗОП?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€2'
p 

 
™ "!К
unknown€€€€€€€€€≠
(__inference_KWS_CNN_layer_call_fn_228522А !1234GHXYZ[novw~ЖЗОП?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€2'
p

 
™ "!К
unknown€€€€€€€€€Ђ
B__inference_Linear_layer_call_and_return_conditional_losses_228982eno1Ґ.
'Ґ$
"К
inputs€€€€€€€€€÷о
™ ",Ґ)
"К
tensor_0€€€€€€€€€ 
Ъ Е
'__inference_Linear_layer_call_fn_228972Zno1Ґ.
'Ґ$
"К
inputs€€€€€€€€€÷о
™ "!К
unknown€€€€€€€€€ р
F__inference_MaxPooling_layer_call_and_return_conditional_losses_228824•RҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "OҐL
EКB
tensor_04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ  
+__inference_MaxPooling_layer_call_fn_228819ЪRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "DКA
unknown4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Њ
G__inference_Second_Conv_layer_call_and_return_conditional_losses_228853sGH7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€^
™ "4Ґ1
*К'
tensor_0€€€€€€€€€^
Ъ Ш
,__inference_Second_Conv_layer_call_fn_228843hGH7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€^
™ ")К&
unknown€€€€€€€€€^≠
C__inference_Softmax_layer_call_and_return_conditional_losses_229062fОП0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ З
(__inference_Softmax_layer_call_fn_229051[ОП0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "!К
unknown€€€€€€€€€ѓ
!__inference__wrapped_model_227535Й !1234GHXYZ[novw~ЖЗОП8Ґ5
.Ґ+
)К&
input_2€€€€€€€€€2'
™ "1™.
,
Softmax!К
softmax€€€€€€€€€ї
H__inference_activation_2_layer_call_and_return_conditional_losses_228834o7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€^
™ "4Ґ1
*К'
tensor_0€€€€€€€€€^
Ъ Х
-__inference_activation_2_layer_call_fn_228829d7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€^
™ ")К&
unknown€€€€€€€€€^ї
H__inference_activation_3_layer_call_and_return_conditional_losses_228952o7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€^
™ "4Ґ1
*К'
tensor_0€€€€€€€€€^
Ъ Х
-__inference_activation_3_layer_call_fn_228947d7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€^
™ ")К&
unknown€€€€€€€€€^у
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_228796Э1234MҐJ
CҐ@
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€^
p 
™ "FҐC
<К9
tensor_0+€€€€€€€€€€€€€€€€€€€€€€€€€€€^
Ъ у
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_228814Э1234MҐJ
CҐ@
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€^
p
™ "FҐC
<К9
tensor_0+€€€€€€€€€€€€€€€€€€€€€€€€€€€^
Ъ Ќ
6__inference_batch_normalization_2_layer_call_fn_228765Т1234MҐJ
CҐ@
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€^
p 
™ ";К8
unknown+€€€€€€€€€€€€€€€€€€€€€€€€€€€^Ќ
6__inference_batch_normalization_2_layer_call_fn_228778Т1234MҐJ
CҐ@
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€^
p
™ ";К8
unknown+€€€€€€€€€€€€€€€€€€€€€€€€€€€^у
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_228924ЭXYZ[MҐJ
CҐ@
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€^
p 
™ "FҐC
<К9
tensor_0+€€€€€€€€€€€€€€€€€€€€€€€€€€€^
Ъ у
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_228942ЭXYZ[MҐJ
CҐ@
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€^
p
™ "FҐC
<К9
tensor_0+€€€€€€€€€€€€€€€€€€€€€€€€€€€^
Ъ Ќ
6__inference_batch_normalization_3_layer_call_fn_228893ТXYZ[MҐJ
CҐ@
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€^
p 
™ ";К8
unknown+€€€€€€€€€€€€€€€€€€€€€€€€€€€^Ќ
6__inference_batch_normalization_3_layer_call_fn_228906ТXYZ[MҐJ
CҐ@
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€^
p
™ ";К8
unknown+€€€€€€€€€€€€€€€€€€€€€€€€€€€^Љ
E__inference_dropout_2_layer_call_and_return_conditional_losses_228740s;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€2'^
p 
™ "4Ґ1
*К'
tensor_0€€€€€€€€€2'^
Ъ Љ
E__inference_dropout_2_layer_call_and_return_conditional_losses_228752s;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€2'^
p
™ "4Ґ1
*К'
tensor_0€€€€€€€€€2'^
Ъ Ц
*__inference_dropout_2_layer_call_fn_228730h;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€2'^
p 
™ ")К&
unknown€€€€€€€€€2'^Ц
*__inference_dropout_2_layer_call_fn_228735h;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€2'^
p
™ ")К&
unknown€€€€€€€€€2'^Љ
E__inference_dropout_3_layer_call_and_return_conditional_losses_228868s;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€^
p 
™ "4Ґ1
*К'
tensor_0€€€€€€€€€^
Ъ Љ
E__inference_dropout_3_layer_call_and_return_conditional_losses_228880s;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€^
p
™ "4Ґ1
*К'
tensor_0€€€€€€€€€^
Ъ Ц
*__inference_dropout_3_layer_call_fn_228858h;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€^
p 
™ ")К&
unknown€€€€€€€€€^Ц
*__inference_dropout_3_layer_call_fn_228863h;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€^
p
™ ")К&
unknown€€€€€€€€€^≤
E__inference_flatten_1_layer_call_and_return_conditional_losses_228963i7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€^
™ ".Ґ+
$К!
tensor_0€€€€€€€€€÷о
Ъ М
*__inference_flatten_1_layer_call_fn_228957^7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€^
™ "#К 
unknown€€€€€€€€€÷ољ
$__inference_signature_wrapper_228424Ф !1234GHXYZ[novw~ЖЗОПCҐ@
Ґ 
9™6
4
input_2)К&
input_2€€€€€€€€€2'"1™.
,
Softmax!К
softmax€€€€€€€€€