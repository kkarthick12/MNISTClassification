�� 
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
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
$
DisableCopyOnRead
resource�
�
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
epsilonfloat%��8"&
exponential_avg_factorfloat%  �?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
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
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
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
dtypetype�
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.15.02v2.15.0-rc1-8-g6887368d6d48ɬ
v
countVarHandleOp*
_output_shapes
: *

debug_namecount/*
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
v
totalVarHandleOp*
_output_shapes
: *

debug_nametotal/*
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
|
count_1VarHandleOp*
_output_shapes
: *

debug_name
count_1/*
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
|
total_1VarHandleOp*
_output_shapes
: *

debug_name
total_1/*
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
�
Adam/v/dense_11/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/dense_11/bias/*
dtype0*
shape:
*%
shared_nameAdam/v/dense_11/bias
y
(Adam/v/dense_11/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_11/bias*
_output_shapes
:
*
dtype0
�
Adam/m/dense_11/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/dense_11/bias/*
dtype0*
shape:
*%
shared_nameAdam/m/dense_11/bias
y
(Adam/m/dense_11/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_11/bias*
_output_shapes
:
*
dtype0
�
Adam/v/dense_11/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/v/dense_11/kernel/*
dtype0*
shape:	�
*'
shared_nameAdam/v/dense_11/kernel
�
*Adam/v/dense_11/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_11/kernel*
_output_shapes
:	�
*
dtype0
�
Adam/m/dense_11/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/m/dense_11/kernel/*
dtype0*
shape:	�
*'
shared_nameAdam/m/dense_11/kernel
�
*Adam/m/dense_11/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_11/kernel*
_output_shapes
:	�
*
dtype0
�
Adam/v/dense_10/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/dense_10/bias/*
dtype0*
shape:�*%
shared_nameAdam/v/dense_10/bias
z
(Adam/v/dense_10/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_10/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/dense_10/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/dense_10/bias/*
dtype0*
shape:�*%
shared_nameAdam/m/dense_10/bias
z
(Adam/m/dense_10/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_10/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/dense_10/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/v/dense_10/kernel/*
dtype0*
shape:
�	�*'
shared_nameAdam/v/dense_10/kernel
�
*Adam/v/dense_10/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_10/kernel* 
_output_shapes
:
�	�*
dtype0
�
Adam/m/dense_10/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/m/dense_10/kernel/*
dtype0*
shape:
�	�*'
shared_nameAdam/m/dense_10/kernel
�
*Adam/m/dense_10/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_10/kernel* 
_output_shapes
:
�	�*
dtype0
�
"Adam/v/batch_normalization_29/betaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/v/batch_normalization_29/beta/*
dtype0*
shape:�*3
shared_name$"Adam/v/batch_normalization_29/beta
�
6Adam/v/batch_normalization_29/beta/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_29/beta*
_output_shapes	
:�*
dtype0
�
"Adam/m/batch_normalization_29/betaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/m/batch_normalization_29/beta/*
dtype0*
shape:�*3
shared_name$"Adam/m/batch_normalization_29/beta
�
6Adam/m/batch_normalization_29/beta/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_29/beta*
_output_shapes	
:�*
dtype0
�
#Adam/v/batch_normalization_29/gammaVarHandleOp*
_output_shapes
: *4

debug_name&$Adam/v/batch_normalization_29/gamma/*
dtype0*
shape:�*4
shared_name%#Adam/v/batch_normalization_29/gamma
�
7Adam/v/batch_normalization_29/gamma/Read/ReadVariableOpReadVariableOp#Adam/v/batch_normalization_29/gamma*
_output_shapes	
:�*
dtype0
�
#Adam/m/batch_normalization_29/gammaVarHandleOp*
_output_shapes
: *4

debug_name&$Adam/m/batch_normalization_29/gamma/*
dtype0*
shape:�*4
shared_name%#Adam/m/batch_normalization_29/gamma
�
7Adam/m/batch_normalization_29/gamma/Read/ReadVariableOpReadVariableOp#Adam/m/batch_normalization_29/gamma*
_output_shapes	
:�*
dtype0
�
Adam/v/conv2d_29/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/conv2d_29/bias/*
dtype0*
shape:�*&
shared_nameAdam/v/conv2d_29/bias
|
)Adam/v/conv2d_29/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_29/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/conv2d_29/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/conv2d_29/bias/*
dtype0*
shape:�*&
shared_nameAdam/m/conv2d_29/bias
|
)Adam/m/conv2d_29/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_29/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/conv2d_29/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/v/conv2d_29/kernel/*
dtype0*
shape:@�*(
shared_nameAdam/v/conv2d_29/kernel
�
+Adam/v/conv2d_29/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_29/kernel*'
_output_shapes
:@�*
dtype0
�
Adam/m/conv2d_29/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/m/conv2d_29/kernel/*
dtype0*
shape:@�*(
shared_nameAdam/m/conv2d_29/kernel
�
+Adam/m/conv2d_29/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_29/kernel*'
_output_shapes
:@�*
dtype0
�
"Adam/v/batch_normalization_28/betaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/v/batch_normalization_28/beta/*
dtype0*
shape:@*3
shared_name$"Adam/v/batch_normalization_28/beta
�
6Adam/v/batch_normalization_28/beta/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_28/beta*
_output_shapes
:@*
dtype0
�
"Adam/m/batch_normalization_28/betaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/m/batch_normalization_28/beta/*
dtype0*
shape:@*3
shared_name$"Adam/m/batch_normalization_28/beta
�
6Adam/m/batch_normalization_28/beta/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_28/beta*
_output_shapes
:@*
dtype0
�
#Adam/v/batch_normalization_28/gammaVarHandleOp*
_output_shapes
: *4

debug_name&$Adam/v/batch_normalization_28/gamma/*
dtype0*
shape:@*4
shared_name%#Adam/v/batch_normalization_28/gamma
�
7Adam/v/batch_normalization_28/gamma/Read/ReadVariableOpReadVariableOp#Adam/v/batch_normalization_28/gamma*
_output_shapes
:@*
dtype0
�
#Adam/m/batch_normalization_28/gammaVarHandleOp*
_output_shapes
: *4

debug_name&$Adam/m/batch_normalization_28/gamma/*
dtype0*
shape:@*4
shared_name%#Adam/m/batch_normalization_28/gamma
�
7Adam/m/batch_normalization_28/gamma/Read/ReadVariableOpReadVariableOp#Adam/m/batch_normalization_28/gamma*
_output_shapes
:@*
dtype0
�
Adam/v/conv2d_28/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/conv2d_28/bias/*
dtype0*
shape:@*&
shared_nameAdam/v/conv2d_28/bias
{
)Adam/v/conv2d_28/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_28/bias*
_output_shapes
:@*
dtype0
�
Adam/m/conv2d_28/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/conv2d_28/bias/*
dtype0*
shape:@*&
shared_nameAdam/m/conv2d_28/bias
{
)Adam/m/conv2d_28/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_28/bias*
_output_shapes
:@*
dtype0
�
Adam/v/conv2d_28/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/v/conv2d_28/kernel/*
dtype0*
shape:@@*(
shared_nameAdam/v/conv2d_28/kernel
�
+Adam/v/conv2d_28/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_28/kernel*&
_output_shapes
:@@*
dtype0
�
Adam/m/conv2d_28/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/m/conv2d_28/kernel/*
dtype0*
shape:@@*(
shared_nameAdam/m/conv2d_28/kernel
�
+Adam/m/conv2d_28/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_28/kernel*&
_output_shapes
:@@*
dtype0
�
"Adam/v/batch_normalization_27/betaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/v/batch_normalization_27/beta/*
dtype0*
shape:@*3
shared_name$"Adam/v/batch_normalization_27/beta
�
6Adam/v/batch_normalization_27/beta/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_27/beta*
_output_shapes
:@*
dtype0
�
"Adam/m/batch_normalization_27/betaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/m/batch_normalization_27/beta/*
dtype0*
shape:@*3
shared_name$"Adam/m/batch_normalization_27/beta
�
6Adam/m/batch_normalization_27/beta/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_27/beta*
_output_shapes
:@*
dtype0
�
#Adam/v/batch_normalization_27/gammaVarHandleOp*
_output_shapes
: *4

debug_name&$Adam/v/batch_normalization_27/gamma/*
dtype0*
shape:@*4
shared_name%#Adam/v/batch_normalization_27/gamma
�
7Adam/v/batch_normalization_27/gamma/Read/ReadVariableOpReadVariableOp#Adam/v/batch_normalization_27/gamma*
_output_shapes
:@*
dtype0
�
#Adam/m/batch_normalization_27/gammaVarHandleOp*
_output_shapes
: *4

debug_name&$Adam/m/batch_normalization_27/gamma/*
dtype0*
shape:@*4
shared_name%#Adam/m/batch_normalization_27/gamma
�
7Adam/m/batch_normalization_27/gamma/Read/ReadVariableOpReadVariableOp#Adam/m/batch_normalization_27/gamma*
_output_shapes
:@*
dtype0
�
Adam/v/conv2d_27/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/conv2d_27/bias/*
dtype0*
shape:@*&
shared_nameAdam/v/conv2d_27/bias
{
)Adam/v/conv2d_27/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_27/bias*
_output_shapes
:@*
dtype0
�
Adam/m/conv2d_27/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/conv2d_27/bias/*
dtype0*
shape:@*&
shared_nameAdam/m/conv2d_27/bias
{
)Adam/m/conv2d_27/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_27/bias*
_output_shapes
:@*
dtype0
�
Adam/v/conv2d_27/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/v/conv2d_27/kernel/*
dtype0*
shape: @*(
shared_nameAdam/v/conv2d_27/kernel
�
+Adam/v/conv2d_27/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_27/kernel*&
_output_shapes
: @*
dtype0
�
Adam/m/conv2d_27/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/m/conv2d_27/kernel/*
dtype0*
shape: @*(
shared_nameAdam/m/conv2d_27/kernel
�
+Adam/m/conv2d_27/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_27/kernel*&
_output_shapes
: @*
dtype0
�
"Adam/v/batch_normalization_26/betaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/v/batch_normalization_26/beta/*
dtype0*
shape: *3
shared_name$"Adam/v/batch_normalization_26/beta
�
6Adam/v/batch_normalization_26/beta/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_26/beta*
_output_shapes
: *
dtype0
�
"Adam/m/batch_normalization_26/betaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/m/batch_normalization_26/beta/*
dtype0*
shape: *3
shared_name$"Adam/m/batch_normalization_26/beta
�
6Adam/m/batch_normalization_26/beta/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_26/beta*
_output_shapes
: *
dtype0
�
#Adam/v/batch_normalization_26/gammaVarHandleOp*
_output_shapes
: *4

debug_name&$Adam/v/batch_normalization_26/gamma/*
dtype0*
shape: *4
shared_name%#Adam/v/batch_normalization_26/gamma
�
7Adam/v/batch_normalization_26/gamma/Read/ReadVariableOpReadVariableOp#Adam/v/batch_normalization_26/gamma*
_output_shapes
: *
dtype0
�
#Adam/m/batch_normalization_26/gammaVarHandleOp*
_output_shapes
: *4

debug_name&$Adam/m/batch_normalization_26/gamma/*
dtype0*
shape: *4
shared_name%#Adam/m/batch_normalization_26/gamma
�
7Adam/m/batch_normalization_26/gamma/Read/ReadVariableOpReadVariableOp#Adam/m/batch_normalization_26/gamma*
_output_shapes
: *
dtype0
�
Adam/v/conv2d_26/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/conv2d_26/bias/*
dtype0*
shape: *&
shared_nameAdam/v/conv2d_26/bias
{
)Adam/v/conv2d_26/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_26/bias*
_output_shapes
: *
dtype0
�
Adam/m/conv2d_26/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/conv2d_26/bias/*
dtype0*
shape: *&
shared_nameAdam/m/conv2d_26/bias
{
)Adam/m/conv2d_26/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_26/bias*
_output_shapes
: *
dtype0
�
Adam/v/conv2d_26/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/v/conv2d_26/kernel/*
dtype0*
shape:  *(
shared_nameAdam/v/conv2d_26/kernel
�
+Adam/v/conv2d_26/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_26/kernel*&
_output_shapes
:  *
dtype0
�
Adam/m/conv2d_26/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/m/conv2d_26/kernel/*
dtype0*
shape:  *(
shared_nameAdam/m/conv2d_26/kernel
�
+Adam/m/conv2d_26/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_26/kernel*&
_output_shapes
:  *
dtype0
�
"Adam/v/batch_normalization_25/betaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/v/batch_normalization_25/beta/*
dtype0*
shape: *3
shared_name$"Adam/v/batch_normalization_25/beta
�
6Adam/v/batch_normalization_25/beta/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_25/beta*
_output_shapes
: *
dtype0
�
"Adam/m/batch_normalization_25/betaVarHandleOp*
_output_shapes
: *3

debug_name%#Adam/m/batch_normalization_25/beta/*
dtype0*
shape: *3
shared_name$"Adam/m/batch_normalization_25/beta
�
6Adam/m/batch_normalization_25/beta/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_25/beta*
_output_shapes
: *
dtype0
�
#Adam/v/batch_normalization_25/gammaVarHandleOp*
_output_shapes
: *4

debug_name&$Adam/v/batch_normalization_25/gamma/*
dtype0*
shape: *4
shared_name%#Adam/v/batch_normalization_25/gamma
�
7Adam/v/batch_normalization_25/gamma/Read/ReadVariableOpReadVariableOp#Adam/v/batch_normalization_25/gamma*
_output_shapes
: *
dtype0
�
#Adam/m/batch_normalization_25/gammaVarHandleOp*
_output_shapes
: *4

debug_name&$Adam/m/batch_normalization_25/gamma/*
dtype0*
shape: *4
shared_name%#Adam/m/batch_normalization_25/gamma
�
7Adam/m/batch_normalization_25/gamma/Read/ReadVariableOpReadVariableOp#Adam/m/batch_normalization_25/gamma*
_output_shapes
: *
dtype0
�
Adam/v/conv2d_25/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/conv2d_25/bias/*
dtype0*
shape: *&
shared_nameAdam/v/conv2d_25/bias
{
)Adam/v/conv2d_25/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_25/bias*
_output_shapes
: *
dtype0
�
Adam/m/conv2d_25/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/conv2d_25/bias/*
dtype0*
shape: *&
shared_nameAdam/m/conv2d_25/bias
{
)Adam/m/conv2d_25/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_25/bias*
_output_shapes
: *
dtype0
�
Adam/v/conv2d_25/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/v/conv2d_25/kernel/*
dtype0*
shape: *(
shared_nameAdam/v/conv2d_25/kernel
�
+Adam/v/conv2d_25/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_25/kernel*&
_output_shapes
: *
dtype0
�
Adam/m/conv2d_25/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/m/conv2d_25/kernel/*
dtype0*
shape: *(
shared_nameAdam/m/conv2d_25/kernel
�
+Adam/m/conv2d_25/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_25/kernel*&
_output_shapes
: *
dtype0
�
learning_rateVarHandleOp*
_output_shapes
: *

debug_namelearning_rate/*
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
�
	iterationVarHandleOp*
_output_shapes
: *

debug_name
iteration/*
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
�
dense_11/biasVarHandleOp*
_output_shapes
: *

debug_namedense_11/bias/*
dtype0*
shape:
*
shared_namedense_11/bias
k
!dense_11/bias/Read/ReadVariableOpReadVariableOpdense_11/bias*
_output_shapes
:
*
dtype0
�
dense_11/kernelVarHandleOp*
_output_shapes
: * 

debug_namedense_11/kernel/*
dtype0*
shape:	�
* 
shared_namedense_11/kernel
t
#dense_11/kernel/Read/ReadVariableOpReadVariableOpdense_11/kernel*
_output_shapes
:	�
*
dtype0
�
dense_10/biasVarHandleOp*
_output_shapes
: *

debug_namedense_10/bias/*
dtype0*
shape:�*
shared_namedense_10/bias
l
!dense_10/bias/Read/ReadVariableOpReadVariableOpdense_10/bias*
_output_shapes	
:�*
dtype0
�
dense_10/kernelVarHandleOp*
_output_shapes
: * 

debug_namedense_10/kernel/*
dtype0*
shape:
�	�* 
shared_namedense_10/kernel
u
#dense_10/kernel/Read/ReadVariableOpReadVariableOpdense_10/kernel* 
_output_shapes
:
�	�*
dtype0
�
&batch_normalization_29/moving_varianceVarHandleOp*
_output_shapes
: *7

debug_name)'batch_normalization_29/moving_variance/*
dtype0*
shape:�*7
shared_name(&batch_normalization_29/moving_variance
�
:batch_normalization_29/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_29/moving_variance*
_output_shapes	
:�*
dtype0
�
"batch_normalization_29/moving_meanVarHandleOp*
_output_shapes
: *3

debug_name%#batch_normalization_29/moving_mean/*
dtype0*
shape:�*3
shared_name$"batch_normalization_29/moving_mean
�
6batch_normalization_29/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_29/moving_mean*
_output_shapes	
:�*
dtype0
�
batch_normalization_29/betaVarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization_29/beta/*
dtype0*
shape:�*,
shared_namebatch_normalization_29/beta
�
/batch_normalization_29/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_29/beta*
_output_shapes	
:�*
dtype0
�
batch_normalization_29/gammaVarHandleOp*
_output_shapes
: *-

debug_namebatch_normalization_29/gamma/*
dtype0*
shape:�*-
shared_namebatch_normalization_29/gamma
�
0batch_normalization_29/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_29/gamma*
_output_shapes	
:�*
dtype0
�
conv2d_29/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_29/bias/*
dtype0*
shape:�*
shared_nameconv2d_29/bias
n
"conv2d_29/bias/Read/ReadVariableOpReadVariableOpconv2d_29/bias*
_output_shapes	
:�*
dtype0
�
conv2d_29/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_29/kernel/*
dtype0*
shape:@�*!
shared_nameconv2d_29/kernel
~
$conv2d_29/kernel/Read/ReadVariableOpReadVariableOpconv2d_29/kernel*'
_output_shapes
:@�*
dtype0
�
&batch_normalization_28/moving_varianceVarHandleOp*
_output_shapes
: *7

debug_name)'batch_normalization_28/moving_variance/*
dtype0*
shape:@*7
shared_name(&batch_normalization_28/moving_variance
�
:batch_normalization_28/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_28/moving_variance*
_output_shapes
:@*
dtype0
�
"batch_normalization_28/moving_meanVarHandleOp*
_output_shapes
: *3

debug_name%#batch_normalization_28/moving_mean/*
dtype0*
shape:@*3
shared_name$"batch_normalization_28/moving_mean
�
6batch_normalization_28/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_28/moving_mean*
_output_shapes
:@*
dtype0
�
batch_normalization_28/betaVarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization_28/beta/*
dtype0*
shape:@*,
shared_namebatch_normalization_28/beta
�
/batch_normalization_28/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_28/beta*
_output_shapes
:@*
dtype0
�
batch_normalization_28/gammaVarHandleOp*
_output_shapes
: *-

debug_namebatch_normalization_28/gamma/*
dtype0*
shape:@*-
shared_namebatch_normalization_28/gamma
�
0batch_normalization_28/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_28/gamma*
_output_shapes
:@*
dtype0
�
conv2d_28/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_28/bias/*
dtype0*
shape:@*
shared_nameconv2d_28/bias
m
"conv2d_28/bias/Read/ReadVariableOpReadVariableOpconv2d_28/bias*
_output_shapes
:@*
dtype0
�
conv2d_28/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_28/kernel/*
dtype0*
shape:@@*!
shared_nameconv2d_28/kernel
}
$conv2d_28/kernel/Read/ReadVariableOpReadVariableOpconv2d_28/kernel*&
_output_shapes
:@@*
dtype0
�
&batch_normalization_27/moving_varianceVarHandleOp*
_output_shapes
: *7

debug_name)'batch_normalization_27/moving_variance/*
dtype0*
shape:@*7
shared_name(&batch_normalization_27/moving_variance
�
:batch_normalization_27/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_27/moving_variance*
_output_shapes
:@*
dtype0
�
"batch_normalization_27/moving_meanVarHandleOp*
_output_shapes
: *3

debug_name%#batch_normalization_27/moving_mean/*
dtype0*
shape:@*3
shared_name$"batch_normalization_27/moving_mean
�
6batch_normalization_27/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_27/moving_mean*
_output_shapes
:@*
dtype0
�
batch_normalization_27/betaVarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization_27/beta/*
dtype0*
shape:@*,
shared_namebatch_normalization_27/beta
�
/batch_normalization_27/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_27/beta*
_output_shapes
:@*
dtype0
�
batch_normalization_27/gammaVarHandleOp*
_output_shapes
: *-

debug_namebatch_normalization_27/gamma/*
dtype0*
shape:@*-
shared_namebatch_normalization_27/gamma
�
0batch_normalization_27/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_27/gamma*
_output_shapes
:@*
dtype0
�
conv2d_27/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_27/bias/*
dtype0*
shape:@*
shared_nameconv2d_27/bias
m
"conv2d_27/bias/Read/ReadVariableOpReadVariableOpconv2d_27/bias*
_output_shapes
:@*
dtype0
�
conv2d_27/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_27/kernel/*
dtype0*
shape: @*!
shared_nameconv2d_27/kernel
}
$conv2d_27/kernel/Read/ReadVariableOpReadVariableOpconv2d_27/kernel*&
_output_shapes
: @*
dtype0
�
&batch_normalization_26/moving_varianceVarHandleOp*
_output_shapes
: *7

debug_name)'batch_normalization_26/moving_variance/*
dtype0*
shape: *7
shared_name(&batch_normalization_26/moving_variance
�
:batch_normalization_26/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_26/moving_variance*
_output_shapes
: *
dtype0
�
"batch_normalization_26/moving_meanVarHandleOp*
_output_shapes
: *3

debug_name%#batch_normalization_26/moving_mean/*
dtype0*
shape: *3
shared_name$"batch_normalization_26/moving_mean
�
6batch_normalization_26/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_26/moving_mean*
_output_shapes
: *
dtype0
�
batch_normalization_26/betaVarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization_26/beta/*
dtype0*
shape: *,
shared_namebatch_normalization_26/beta
�
/batch_normalization_26/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_26/beta*
_output_shapes
: *
dtype0
�
batch_normalization_26/gammaVarHandleOp*
_output_shapes
: *-

debug_namebatch_normalization_26/gamma/*
dtype0*
shape: *-
shared_namebatch_normalization_26/gamma
�
0batch_normalization_26/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_26/gamma*
_output_shapes
: *
dtype0
�
conv2d_26/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_26/bias/*
dtype0*
shape: *
shared_nameconv2d_26/bias
m
"conv2d_26/bias/Read/ReadVariableOpReadVariableOpconv2d_26/bias*
_output_shapes
: *
dtype0
�
conv2d_26/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_26/kernel/*
dtype0*
shape:  *!
shared_nameconv2d_26/kernel
}
$conv2d_26/kernel/Read/ReadVariableOpReadVariableOpconv2d_26/kernel*&
_output_shapes
:  *
dtype0
�
&batch_normalization_25/moving_varianceVarHandleOp*
_output_shapes
: *7

debug_name)'batch_normalization_25/moving_variance/*
dtype0*
shape: *7
shared_name(&batch_normalization_25/moving_variance
�
:batch_normalization_25/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_25/moving_variance*
_output_shapes
: *
dtype0
�
"batch_normalization_25/moving_meanVarHandleOp*
_output_shapes
: *3

debug_name%#batch_normalization_25/moving_mean/*
dtype0*
shape: *3
shared_name$"batch_normalization_25/moving_mean
�
6batch_normalization_25/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_25/moving_mean*
_output_shapes
: *
dtype0
�
batch_normalization_25/betaVarHandleOp*
_output_shapes
: *,

debug_namebatch_normalization_25/beta/*
dtype0*
shape: *,
shared_namebatch_normalization_25/beta
�
/batch_normalization_25/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_25/beta*
_output_shapes
: *
dtype0
�
batch_normalization_25/gammaVarHandleOp*
_output_shapes
: *-

debug_namebatch_normalization_25/gamma/*
dtype0*
shape: *-
shared_namebatch_normalization_25/gamma
�
0batch_normalization_25/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_25/gamma*
_output_shapes
: *
dtype0
�
conv2d_25/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_25/bias/*
dtype0*
shape: *
shared_nameconv2d_25/bias
m
"conv2d_25/bias/Read/ReadVariableOpReadVariableOpconv2d_25/bias*
_output_shapes
: *
dtype0
�
conv2d_25/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_25/kernel/*
dtype0*
shape: *!
shared_nameconv2d_25/kernel
}
$conv2d_25/kernel/Read/ReadVariableOpReadVariableOpconv2d_25/kernel*&
_output_shapes
: *
dtype0
�
serving_default_input_1Placeholder*/
_output_shapes
:���������*
dtype0*$
shape:���������
�

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1conv2d_25/kernelconv2d_25/biasbatch_normalization_25/gammabatch_normalization_25/beta"batch_normalization_25/moving_mean&batch_normalization_25/moving_varianceconv2d_26/kernelconv2d_26/biasbatch_normalization_26/gammabatch_normalization_26/beta"batch_normalization_26/moving_mean&batch_normalization_26/moving_varianceconv2d_27/kernelconv2d_27/biasbatch_normalization_27/gammabatch_normalization_27/beta"batch_normalization_27/moving_mean&batch_normalization_27/moving_varianceconv2d_28/kernelconv2d_28/biasbatch_normalization_28/gammabatch_normalization_28/beta"batch_normalization_28/moving_mean&batch_normalization_28/moving_varianceconv2d_29/kernelconv2d_29/biasbatch_normalization_29/gammabatch_normalization_29/beta"batch_normalization_29/moving_mean&batch_normalization_29/moving_variancedense_10/kerneldense_10/biasdense_11/kerneldense_11/bias*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*D
_read_only_resource_inputs&
$"	
 !"*0
config_proto 

CPU

GPU2*0J 8� *-
f(R&
$__inference_signature_wrapper_369183

NoOpNoOp
��
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*��
value��B�� B��
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

conv_layer
	fc_layer

	optimizer

signatures*
�
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
 20
!21
"22
#23
$24
%25
&26
'27
(28
)29
*30
+31
,32
-33*
�
0
1
2
3
4
5
6
7
8
9
10
11
12
13
 14
!15
$16
%17
&18
'19
*20
+21
,22
-23*
* 
�
.non_trainable_variables

/layers
0metrics
1layer_regularization_losses
2layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

3trace_0
4trace_1* 

5trace_0
6trace_1* 
* 
�
7layer_with_weights-0
7layer-0
8layer_with_weights-1
8layer-1
9layer-2
:layer_with_weights-2
:layer-3
;layer_with_weights-3
;layer-4
<layer-5
=layer-6
>layer-7
?layer_with_weights-4
?layer-8
@layer_with_weights-5
@layer-9
Alayer-10
Blayer_with_weights-6
Blayer-11
Clayer_with_weights-7
Clayer-12
Dlayer-13
Elayer-14
Flayer-15
Glayer_with_weights-8
Glayer-16
Hlayer_with_weights-9
Hlayer-17
Ilayer-18
Jlayer-19
Klayer-20
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses*
�
Rlayer-0
Slayer_with_weights-0
Slayer-1
Tlayer-2
Ulayer_with_weights-1
Ulayer-3
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses*
�
\
_variables
]_iterations
^_learning_rate
__index_dict
`
_momentums
a_velocities
b_update_step_xla*

cserving_default* 
PJ
VARIABLE_VALUEconv2d_25/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv2d_25/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEbatch_normalization_25/gamma&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEbatch_normalization_25/beta&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE"batch_normalization_25/moving_mean&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE&batch_normalization_25/moving_variance&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEconv2d_26/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv2d_26/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEbatch_normalization_26/gamma&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEbatch_normalization_26/beta&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"batch_normalization_26/moving_mean'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE&batch_normalization_26/moving_variance'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEconv2d_27/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_27/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEbatch_normalization_27/gamma'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEbatch_normalization_27/beta'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"batch_normalization_27/moving_mean'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE&batch_normalization_27/moving_variance'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEconv2d_28/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_28/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEbatch_normalization_28/gamma'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEbatch_normalization_28/beta'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"batch_normalization_28/moving_mean'variables/22/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE&batch_normalization_28/moving_variance'variables/23/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEconv2d_29/kernel'variables/24/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_29/bias'variables/25/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEbatch_normalization_29/gamma'variables/26/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEbatch_normalization_29/beta'variables/27/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"batch_normalization_29/moving_mean'variables/28/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE&batch_normalization_29/moving_variance'variables/29/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_10/kernel'variables/30/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_10/bias'variables/31/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEdense_11/kernel'variables/32/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_11/bias'variables/33/.ATTRIBUTES/VARIABLE_VALUE*
J
0
1
2
3
4
5
"6
#7
(8
)9*

0
	1*

d0
e1*
* 
* 
* 
* 
* 
* 
�
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses

kernel
bias
 l_jit_compiled_convolution_op*
�
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
q__call__
*r&call_and_return_all_conditional_losses
saxis
	gamma
beta
moving_mean
moving_variance*
�
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses* 
�
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~__call__
*&call_and_return_all_conditional_losses

kernel
bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	gamma
beta
moving_mean
moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

kernel
bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	gamma
beta
moving_mean
moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

kernel
bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	 gamma
!beta
"moving_mean
#moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

$kernel
%bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	&gamma
'beta
(moving_mean
)moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
 20
!21
"22
#23
$24
%25
&26
'27
(28
)29*
�
0
1
2
3
4
5
6
7
8
9
10
11
12
13
 14
!15
$16
%17
&18
'19*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

*kernel
+bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

,kernel
-bias*
 
*0
+1
,2
-3*
 
*0
+1
,2
-3*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
�
]0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44
�45
�46
�47
�48*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23*
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23*
�
�trace_0
�trace_1
�trace_2
�trace_3
�trace_4
�trace_5
�trace_6
�trace_7
�trace_8
�trace_9
�trace_10
�trace_11
�trace_12
�trace_13
�trace_14
�trace_15
�trace_16
�trace_17
�trace_18
�trace_19
�trace_20
�trace_21
�trace_22
�trace_23* 
* 
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
 
0
1
2
3*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
m	variables
ntrainable_variables
oregularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
z	variables
{trainable_variables
|regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
 
0
1
2
3*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
 
0
1
2
3*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
 
 0
!1
"2
#3*

 0
!1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

$0
%1*

$0
%1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
 
&0
'1
(2
)3*

&0
'1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
J
0
1
2
3
4
5
"6
#7
(8
)9*
�
70
81
92
:3
;4
<5
=6
>7
?8
@9
A10
B11
C12
D13
E14
F15
G16
H17
I18
J19
K20*
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
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

*0
+1*

*0
+1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

,0
-1*

,0
-1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
 
R0
S1
T2
U3*
* 
* 
* 
* 
* 
* 
* 
b\
VARIABLE_VALUEAdam/m/conv2d_25/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_25/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_25/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_25/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE#Adam/m/batch_normalization_25/gamma1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE#Adam/v/batch_normalization_25/gamma1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"Adam/m/batch_normalization_25/beta1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"Adam/v/batch_normalization_25/beta1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_26/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_26/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_26/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_26/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/m/batch_normalization_26/gamma2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/v/batch_normalization_26/gamma2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_26/beta2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_26/beta2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_27/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_27/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_27/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_27/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/m/batch_normalization_27/gamma2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/v/batch_normalization_27/gamma2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_27/beta2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_27/beta2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_28/kernel2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_28/kernel2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_28/bias2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_28/bias2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/m/batch_normalization_28/gamma2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/v/batch_normalization_28/gamma2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_28/beta2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_28/beta2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_29/kernel2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_29/kernel2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_29/bias2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_29/bias2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/m/batch_normalization_29/gamma2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/v/batch_normalization_29/gamma2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_29/beta2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_29/beta2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_10/kernel2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_10/kernel2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_10/bias2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_10/bias2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_11/kernel2optimizer/_variables/45/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_11/kernel2optimizer/_variables/46/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_11/bias2optimizer/_variables/47/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_11/bias2optimizer/_variables/48/.ATTRIBUTES/VARIABLE_VALUE*
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

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 

0
1*
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
0
1*
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
0
1*
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
"0
#1*
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
(0
)1*
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
* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv2d_25/kernelconv2d_25/biasbatch_normalization_25/gammabatch_normalization_25/beta"batch_normalization_25/moving_mean&batch_normalization_25/moving_varianceconv2d_26/kernelconv2d_26/biasbatch_normalization_26/gammabatch_normalization_26/beta"batch_normalization_26/moving_mean&batch_normalization_26/moving_varianceconv2d_27/kernelconv2d_27/biasbatch_normalization_27/gammabatch_normalization_27/beta"batch_normalization_27/moving_mean&batch_normalization_27/moving_varianceconv2d_28/kernelconv2d_28/biasbatch_normalization_28/gammabatch_normalization_28/beta"batch_normalization_28/moving_mean&batch_normalization_28/moving_varianceconv2d_29/kernelconv2d_29/biasbatch_normalization_29/gammabatch_normalization_29/beta"batch_normalization_29/moving_mean&batch_normalization_29/moving_variancedense_10/kerneldense_10/biasdense_11/kerneldense_11/bias	iterationlearning_rateAdam/m/conv2d_25/kernelAdam/v/conv2d_25/kernelAdam/m/conv2d_25/biasAdam/v/conv2d_25/bias#Adam/m/batch_normalization_25/gamma#Adam/v/batch_normalization_25/gamma"Adam/m/batch_normalization_25/beta"Adam/v/batch_normalization_25/betaAdam/m/conv2d_26/kernelAdam/v/conv2d_26/kernelAdam/m/conv2d_26/biasAdam/v/conv2d_26/bias#Adam/m/batch_normalization_26/gamma#Adam/v/batch_normalization_26/gamma"Adam/m/batch_normalization_26/beta"Adam/v/batch_normalization_26/betaAdam/m/conv2d_27/kernelAdam/v/conv2d_27/kernelAdam/m/conv2d_27/biasAdam/v/conv2d_27/bias#Adam/m/batch_normalization_27/gamma#Adam/v/batch_normalization_27/gamma"Adam/m/batch_normalization_27/beta"Adam/v/batch_normalization_27/betaAdam/m/conv2d_28/kernelAdam/v/conv2d_28/kernelAdam/m/conv2d_28/biasAdam/v/conv2d_28/bias#Adam/m/batch_normalization_28/gamma#Adam/v/batch_normalization_28/gamma"Adam/m/batch_normalization_28/beta"Adam/v/batch_normalization_28/betaAdam/m/conv2d_29/kernelAdam/v/conv2d_29/kernelAdam/m/conv2d_29/biasAdam/v/conv2d_29/bias#Adam/m/batch_normalization_29/gamma#Adam/v/batch_normalization_29/gamma"Adam/m/batch_normalization_29/beta"Adam/v/batch_normalization_29/betaAdam/m/dense_10/kernelAdam/v/dense_10/kernelAdam/m/dense_10/biasAdam/v/dense_10/biasAdam/m/dense_11/kernelAdam/v/dense_11/kernelAdam/m/dense_11/biasAdam/v/dense_11/biastotal_1count_1totalcountConst*e
Tin^
\2Z*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *(
f#R!
__inference__traced_save_370497
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_25/kernelconv2d_25/biasbatch_normalization_25/gammabatch_normalization_25/beta"batch_normalization_25/moving_mean&batch_normalization_25/moving_varianceconv2d_26/kernelconv2d_26/biasbatch_normalization_26/gammabatch_normalization_26/beta"batch_normalization_26/moving_mean&batch_normalization_26/moving_varianceconv2d_27/kernelconv2d_27/biasbatch_normalization_27/gammabatch_normalization_27/beta"batch_normalization_27/moving_mean&batch_normalization_27/moving_varianceconv2d_28/kernelconv2d_28/biasbatch_normalization_28/gammabatch_normalization_28/beta"batch_normalization_28/moving_mean&batch_normalization_28/moving_varianceconv2d_29/kernelconv2d_29/biasbatch_normalization_29/gammabatch_normalization_29/beta"batch_normalization_29/moving_mean&batch_normalization_29/moving_variancedense_10/kerneldense_10/biasdense_11/kerneldense_11/bias	iterationlearning_rateAdam/m/conv2d_25/kernelAdam/v/conv2d_25/kernelAdam/m/conv2d_25/biasAdam/v/conv2d_25/bias#Adam/m/batch_normalization_25/gamma#Adam/v/batch_normalization_25/gamma"Adam/m/batch_normalization_25/beta"Adam/v/batch_normalization_25/betaAdam/m/conv2d_26/kernelAdam/v/conv2d_26/kernelAdam/m/conv2d_26/biasAdam/v/conv2d_26/bias#Adam/m/batch_normalization_26/gamma#Adam/v/batch_normalization_26/gamma"Adam/m/batch_normalization_26/beta"Adam/v/batch_normalization_26/betaAdam/m/conv2d_27/kernelAdam/v/conv2d_27/kernelAdam/m/conv2d_27/biasAdam/v/conv2d_27/bias#Adam/m/batch_normalization_27/gamma#Adam/v/batch_normalization_27/gamma"Adam/m/batch_normalization_27/beta"Adam/v/batch_normalization_27/betaAdam/m/conv2d_28/kernelAdam/v/conv2d_28/kernelAdam/m/conv2d_28/biasAdam/v/conv2d_28/bias#Adam/m/batch_normalization_28/gamma#Adam/v/batch_normalization_28/gamma"Adam/m/batch_normalization_28/beta"Adam/v/batch_normalization_28/betaAdam/m/conv2d_29/kernelAdam/v/conv2d_29/kernelAdam/m/conv2d_29/biasAdam/v/conv2d_29/bias#Adam/m/batch_normalization_29/gamma#Adam/v/batch_normalization_29/gamma"Adam/m/batch_normalization_29/beta"Adam/v/batch_normalization_29/betaAdam/m/dense_10/kernelAdam/v/dense_10/kernelAdam/m/dense_10/biasAdam/v/dense_10/biasAdam/m/dense_11/kernelAdam/v/dense_11/kernelAdam/m/dense_11/biasAdam/v/dense_11/biastotal_1count_1totalcount*d
Tin]
[2Y*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *+
f&R$
"__inference__traced_restore_370770��
�

e
F__inference_dropout_23_layer_call_and_return_conditional_losses_368714

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
L
#__inference__update_step_xla_369293
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:�: *
	_noinline(:E A

_output_shapes	
:�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
��
�:
"__inference__traced_restore_370770
file_prefix;
!assignvariableop_conv2d_25_kernel: /
!assignvariableop_1_conv2d_25_bias: =
/assignvariableop_2_batch_normalization_25_gamma: <
.assignvariableop_3_batch_normalization_25_beta: C
5assignvariableop_4_batch_normalization_25_moving_mean: G
9assignvariableop_5_batch_normalization_25_moving_variance: =
#assignvariableop_6_conv2d_26_kernel:  /
!assignvariableop_7_conv2d_26_bias: =
/assignvariableop_8_batch_normalization_26_gamma: <
.assignvariableop_9_batch_normalization_26_beta: D
6assignvariableop_10_batch_normalization_26_moving_mean: H
:assignvariableop_11_batch_normalization_26_moving_variance: >
$assignvariableop_12_conv2d_27_kernel: @0
"assignvariableop_13_conv2d_27_bias:@>
0assignvariableop_14_batch_normalization_27_gamma:@=
/assignvariableop_15_batch_normalization_27_beta:@D
6assignvariableop_16_batch_normalization_27_moving_mean:@H
:assignvariableop_17_batch_normalization_27_moving_variance:@>
$assignvariableop_18_conv2d_28_kernel:@@0
"assignvariableop_19_conv2d_28_bias:@>
0assignvariableop_20_batch_normalization_28_gamma:@=
/assignvariableop_21_batch_normalization_28_beta:@D
6assignvariableop_22_batch_normalization_28_moving_mean:@H
:assignvariableop_23_batch_normalization_28_moving_variance:@?
$assignvariableop_24_conv2d_29_kernel:@�1
"assignvariableop_25_conv2d_29_bias:	�?
0assignvariableop_26_batch_normalization_29_gamma:	�>
/assignvariableop_27_batch_normalization_29_beta:	�E
6assignvariableop_28_batch_normalization_29_moving_mean:	�I
:assignvariableop_29_batch_normalization_29_moving_variance:	�7
#assignvariableop_30_dense_10_kernel:
�	�0
!assignvariableop_31_dense_10_bias:	�6
#assignvariableop_32_dense_11_kernel:	�
/
!assignvariableop_33_dense_11_bias:
'
assignvariableop_34_iteration:	 +
!assignvariableop_35_learning_rate: E
+assignvariableop_36_adam_m_conv2d_25_kernel: E
+assignvariableop_37_adam_v_conv2d_25_kernel: 7
)assignvariableop_38_adam_m_conv2d_25_bias: 7
)assignvariableop_39_adam_v_conv2d_25_bias: E
7assignvariableop_40_adam_m_batch_normalization_25_gamma: E
7assignvariableop_41_adam_v_batch_normalization_25_gamma: D
6assignvariableop_42_adam_m_batch_normalization_25_beta: D
6assignvariableop_43_adam_v_batch_normalization_25_beta: E
+assignvariableop_44_adam_m_conv2d_26_kernel:  E
+assignvariableop_45_adam_v_conv2d_26_kernel:  7
)assignvariableop_46_adam_m_conv2d_26_bias: 7
)assignvariableop_47_adam_v_conv2d_26_bias: E
7assignvariableop_48_adam_m_batch_normalization_26_gamma: E
7assignvariableop_49_adam_v_batch_normalization_26_gamma: D
6assignvariableop_50_adam_m_batch_normalization_26_beta: D
6assignvariableop_51_adam_v_batch_normalization_26_beta: E
+assignvariableop_52_adam_m_conv2d_27_kernel: @E
+assignvariableop_53_adam_v_conv2d_27_kernel: @7
)assignvariableop_54_adam_m_conv2d_27_bias:@7
)assignvariableop_55_adam_v_conv2d_27_bias:@E
7assignvariableop_56_adam_m_batch_normalization_27_gamma:@E
7assignvariableop_57_adam_v_batch_normalization_27_gamma:@D
6assignvariableop_58_adam_m_batch_normalization_27_beta:@D
6assignvariableop_59_adam_v_batch_normalization_27_beta:@E
+assignvariableop_60_adam_m_conv2d_28_kernel:@@E
+assignvariableop_61_adam_v_conv2d_28_kernel:@@7
)assignvariableop_62_adam_m_conv2d_28_bias:@7
)assignvariableop_63_adam_v_conv2d_28_bias:@E
7assignvariableop_64_adam_m_batch_normalization_28_gamma:@E
7assignvariableop_65_adam_v_batch_normalization_28_gamma:@D
6assignvariableop_66_adam_m_batch_normalization_28_beta:@D
6assignvariableop_67_adam_v_batch_normalization_28_beta:@F
+assignvariableop_68_adam_m_conv2d_29_kernel:@�F
+assignvariableop_69_adam_v_conv2d_29_kernel:@�8
)assignvariableop_70_adam_m_conv2d_29_bias:	�8
)assignvariableop_71_adam_v_conv2d_29_bias:	�F
7assignvariableop_72_adam_m_batch_normalization_29_gamma:	�F
7assignvariableop_73_adam_v_batch_normalization_29_gamma:	�E
6assignvariableop_74_adam_m_batch_normalization_29_beta:	�E
6assignvariableop_75_adam_v_batch_normalization_29_beta:	�>
*assignvariableop_76_adam_m_dense_10_kernel:
�	�>
*assignvariableop_77_adam_v_dense_10_kernel:
�	�7
(assignvariableop_78_adam_m_dense_10_bias:	�7
(assignvariableop_79_adam_v_dense_10_bias:	�=
*assignvariableop_80_adam_m_dense_11_kernel:	�
=
*assignvariableop_81_adam_v_dense_11_kernel:	�
6
(assignvariableop_82_adam_m_dense_11_bias:
6
(assignvariableop_83_adam_v_dense_11_bias:
%
assignvariableop_84_total_1: %
assignvariableop_85_count_1: #
assignvariableop_86_total: #
assignvariableop_87_count: 
identity_89��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_63�AssignVariableOp_64�AssignVariableOp_65�AssignVariableOp_66�AssignVariableOp_67�AssignVariableOp_68�AssignVariableOp_69�AssignVariableOp_7�AssignVariableOp_70�AssignVariableOp_71�AssignVariableOp_72�AssignVariableOp_73�AssignVariableOp_74�AssignVariableOp_75�AssignVariableOp_76�AssignVariableOp_77�AssignVariableOp_78�AssignVariableOp_79�AssignVariableOp_8�AssignVariableOp_80�AssignVariableOp_81�AssignVariableOp_82�AssignVariableOp_83�AssignVariableOp_84�AssignVariableOp_85�AssignVariableOp_86�AssignVariableOp_87�AssignVariableOp_9�!
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:Y*
dtype0*�!
value�!B�!YB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/45/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/46/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/47/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/48/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:Y*
dtype0*�
value�B�YB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*g
dtypes]
[2Y	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_25_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_25_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp/assignvariableop_2_batch_normalization_25_gammaIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp.assignvariableop_3_batch_normalization_25_betaIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp5assignvariableop_4_batch_normalization_25_moving_meanIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp9assignvariableop_5_batch_normalization_25_moving_varianceIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_26_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_26_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp/assignvariableop_8_batch_normalization_26_gammaIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_26_betaIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp6assignvariableop_10_batch_normalization_26_moving_meanIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp:assignvariableop_11_batch_normalization_26_moving_varianceIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv2d_27_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv2d_27_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp0assignvariableop_14_batch_normalization_27_gammaIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp/assignvariableop_15_batch_normalization_27_betaIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp6assignvariableop_16_batch_normalization_27_moving_meanIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp:assignvariableop_17_batch_normalization_27_moving_varianceIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp$assignvariableop_18_conv2d_28_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp"assignvariableop_19_conv2d_28_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp0assignvariableop_20_batch_normalization_28_gammaIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp/assignvariableop_21_batch_normalization_28_betaIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp6assignvariableop_22_batch_normalization_28_moving_meanIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp:assignvariableop_23_batch_normalization_28_moving_varianceIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp$assignvariableop_24_conv2d_29_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp"assignvariableop_25_conv2d_29_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp0assignvariableop_26_batch_normalization_29_gammaIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp/assignvariableop_27_batch_normalization_29_betaIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp6assignvariableop_28_batch_normalization_29_moving_meanIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp:assignvariableop_29_batch_normalization_29_moving_varianceIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp#assignvariableop_30_dense_10_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp!assignvariableop_31_dense_10_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp#assignvariableop_32_dense_11_kernelIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp!assignvariableop_33_dense_11_biasIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_34AssignVariableOpassignvariableop_34_iterationIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp!assignvariableop_35_learning_rateIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp+assignvariableop_36_adam_m_conv2d_25_kernelIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp+assignvariableop_37_adam_v_conv2d_25_kernelIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adam_m_conv2d_25_biasIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp)assignvariableop_39_adam_v_conv2d_25_biasIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp7assignvariableop_40_adam_m_batch_normalization_25_gammaIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp7assignvariableop_41_adam_v_batch_normalization_25_gammaIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp6assignvariableop_42_adam_m_batch_normalization_25_betaIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp6assignvariableop_43_adam_v_batch_normalization_25_betaIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp+assignvariableop_44_adam_m_conv2d_26_kernelIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp+assignvariableop_45_adam_v_conv2d_26_kernelIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp)assignvariableop_46_adam_m_conv2d_26_biasIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp)assignvariableop_47_adam_v_conv2d_26_biasIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp7assignvariableop_48_adam_m_batch_normalization_26_gammaIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp7assignvariableop_49_adam_v_batch_normalization_26_gammaIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp6assignvariableop_50_adam_m_batch_normalization_26_betaIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp6assignvariableop_51_adam_v_batch_normalization_26_betaIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp+assignvariableop_52_adam_m_conv2d_27_kernelIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp+assignvariableop_53_adam_v_conv2d_27_kernelIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp)assignvariableop_54_adam_m_conv2d_27_biasIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp)assignvariableop_55_adam_v_conv2d_27_biasIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp7assignvariableop_56_adam_m_batch_normalization_27_gammaIdentity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp7assignvariableop_57_adam_v_batch_normalization_27_gammaIdentity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp6assignvariableop_58_adam_m_batch_normalization_27_betaIdentity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOp6assignvariableop_59_adam_v_batch_normalization_27_betaIdentity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOp+assignvariableop_60_adam_m_conv2d_28_kernelIdentity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOp+assignvariableop_61_adam_v_conv2d_28_kernelIdentity_61:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_62AssignVariableOp)assignvariableop_62_adam_m_conv2d_28_biasIdentity_62:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_63AssignVariableOp)assignvariableop_63_adam_v_conv2d_28_biasIdentity_63:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_64AssignVariableOp7assignvariableop_64_adam_m_batch_normalization_28_gammaIdentity_64:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_65AssignVariableOp7assignvariableop_65_adam_v_batch_normalization_28_gammaIdentity_65:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_66AssignVariableOp6assignvariableop_66_adam_m_batch_normalization_28_betaIdentity_66:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_67AssignVariableOp6assignvariableop_67_adam_v_batch_normalization_28_betaIdentity_67:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_68AssignVariableOp+assignvariableop_68_adam_m_conv2d_29_kernelIdentity_68:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_69AssignVariableOp+assignvariableop_69_adam_v_conv2d_29_kernelIdentity_69:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_70AssignVariableOp)assignvariableop_70_adam_m_conv2d_29_biasIdentity_70:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_71AssignVariableOp)assignvariableop_71_adam_v_conv2d_29_biasIdentity_71:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_72AssignVariableOp7assignvariableop_72_adam_m_batch_normalization_29_gammaIdentity_72:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_73AssignVariableOp7assignvariableop_73_adam_v_batch_normalization_29_gammaIdentity_73:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_74AssignVariableOp6assignvariableop_74_adam_m_batch_normalization_29_betaIdentity_74:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_75AssignVariableOp6assignvariableop_75_adam_v_batch_normalization_29_betaIdentity_75:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_76AssignVariableOp*assignvariableop_76_adam_m_dense_10_kernelIdentity_76:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_77AssignVariableOp*assignvariableop_77_adam_v_dense_10_kernelIdentity_77:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_78AssignVariableOp(assignvariableop_78_adam_m_dense_10_biasIdentity_78:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_79AssignVariableOp(assignvariableop_79_adam_v_dense_10_biasIdentity_79:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_80AssignVariableOp*assignvariableop_80_adam_m_dense_11_kernelIdentity_80:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_81AssignVariableOp*assignvariableop_81_adam_v_dense_11_kernelIdentity_81:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_82AssignVariableOp(assignvariableop_82_adam_m_dense_11_biasIdentity_82:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_83AssignVariableOp(assignvariableop_83_adam_v_dense_11_biasIdentity_83:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_84AssignVariableOpassignvariableop_84_total_1Identity_84:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_85AssignVariableOpassignvariableop_85_count_1Identity_85:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_86AssignVariableOpassignvariableop_86_totalIdentity_86:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_87AssignVariableOpassignvariableop_87_countIdentity_87:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_88Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_89IdentityIdentity_88:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_9*
_output_shapes
 "#
identity_89Identity_89:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:0,
*
_user_specified_nameconv2d_25/kernel:.*
(
_user_specified_nameconv2d_25/bias:<8
6
_user_specified_namebatch_normalization_25/gamma:;7
5
_user_specified_namebatch_normalization_25/beta:B>
<
_user_specified_name$"batch_normalization_25/moving_mean:FB
@
_user_specified_name(&batch_normalization_25/moving_variance:0,
*
_user_specified_nameconv2d_26/kernel:.*
(
_user_specified_nameconv2d_26/bias:<	8
6
_user_specified_namebatch_normalization_26/gamma:;
7
5
_user_specified_namebatch_normalization_26/beta:B>
<
_user_specified_name$"batch_normalization_26/moving_mean:FB
@
_user_specified_name(&batch_normalization_26/moving_variance:0,
*
_user_specified_nameconv2d_27/kernel:.*
(
_user_specified_nameconv2d_27/bias:<8
6
_user_specified_namebatch_normalization_27/gamma:;7
5
_user_specified_namebatch_normalization_27/beta:B>
<
_user_specified_name$"batch_normalization_27/moving_mean:FB
@
_user_specified_name(&batch_normalization_27/moving_variance:0,
*
_user_specified_nameconv2d_28/kernel:.*
(
_user_specified_nameconv2d_28/bias:<8
6
_user_specified_namebatch_normalization_28/gamma:;7
5
_user_specified_namebatch_normalization_28/beta:B>
<
_user_specified_name$"batch_normalization_28/moving_mean:FB
@
_user_specified_name(&batch_normalization_28/moving_variance:0,
*
_user_specified_nameconv2d_29/kernel:.*
(
_user_specified_nameconv2d_29/bias:<8
6
_user_specified_namebatch_normalization_29/gamma:;7
5
_user_specified_namebatch_normalization_29/beta:B>
<
_user_specified_name$"batch_normalization_29/moving_mean:FB
@
_user_specified_name(&batch_normalization_29/moving_variance:/+
)
_user_specified_namedense_10/kernel:- )
'
_user_specified_namedense_10/bias:/!+
)
_user_specified_namedense_11/kernel:-")
'
_user_specified_namedense_11/bias:)#%
#
_user_specified_name	iteration:-$)
'
_user_specified_namelearning_rate:7%3
1
_user_specified_nameAdam/m/conv2d_25/kernel:7&3
1
_user_specified_nameAdam/v/conv2d_25/kernel:5'1
/
_user_specified_nameAdam/m/conv2d_25/bias:5(1
/
_user_specified_nameAdam/v/conv2d_25/bias:C)?
=
_user_specified_name%#Adam/m/batch_normalization_25/gamma:C*?
=
_user_specified_name%#Adam/v/batch_normalization_25/gamma:B+>
<
_user_specified_name$"Adam/m/batch_normalization_25/beta:B,>
<
_user_specified_name$"Adam/v/batch_normalization_25/beta:7-3
1
_user_specified_nameAdam/m/conv2d_26/kernel:7.3
1
_user_specified_nameAdam/v/conv2d_26/kernel:5/1
/
_user_specified_nameAdam/m/conv2d_26/bias:501
/
_user_specified_nameAdam/v/conv2d_26/bias:C1?
=
_user_specified_name%#Adam/m/batch_normalization_26/gamma:C2?
=
_user_specified_name%#Adam/v/batch_normalization_26/gamma:B3>
<
_user_specified_name$"Adam/m/batch_normalization_26/beta:B4>
<
_user_specified_name$"Adam/v/batch_normalization_26/beta:753
1
_user_specified_nameAdam/m/conv2d_27/kernel:763
1
_user_specified_nameAdam/v/conv2d_27/kernel:571
/
_user_specified_nameAdam/m/conv2d_27/bias:581
/
_user_specified_nameAdam/v/conv2d_27/bias:C9?
=
_user_specified_name%#Adam/m/batch_normalization_27/gamma:C:?
=
_user_specified_name%#Adam/v/batch_normalization_27/gamma:B;>
<
_user_specified_name$"Adam/m/batch_normalization_27/beta:B<>
<
_user_specified_name$"Adam/v/batch_normalization_27/beta:7=3
1
_user_specified_nameAdam/m/conv2d_28/kernel:7>3
1
_user_specified_nameAdam/v/conv2d_28/kernel:5?1
/
_user_specified_nameAdam/m/conv2d_28/bias:5@1
/
_user_specified_nameAdam/v/conv2d_28/bias:CA?
=
_user_specified_name%#Adam/m/batch_normalization_28/gamma:CB?
=
_user_specified_name%#Adam/v/batch_normalization_28/gamma:BC>
<
_user_specified_name$"Adam/m/batch_normalization_28/beta:BD>
<
_user_specified_name$"Adam/v/batch_normalization_28/beta:7E3
1
_user_specified_nameAdam/m/conv2d_29/kernel:7F3
1
_user_specified_nameAdam/v/conv2d_29/kernel:5G1
/
_user_specified_nameAdam/m/conv2d_29/bias:5H1
/
_user_specified_nameAdam/v/conv2d_29/bias:CI?
=
_user_specified_name%#Adam/m/batch_normalization_29/gamma:CJ?
=
_user_specified_name%#Adam/v/batch_normalization_29/gamma:BK>
<
_user_specified_name$"Adam/m/batch_normalization_29/beta:BL>
<
_user_specified_name$"Adam/v/batch_normalization_29/beta:6M2
0
_user_specified_nameAdam/m/dense_10/kernel:6N2
0
_user_specified_nameAdam/v/dense_10/kernel:4O0
.
_user_specified_nameAdam/m/dense_10/bias:4P0
.
_user_specified_nameAdam/v/dense_10/bias:6Q2
0
_user_specified_nameAdam/m/dense_11/kernel:6R2
0
_user_specified_nameAdam/v/dense_11/kernel:4S0
.
_user_specified_nameAdam/m/dense_11/bias:4T0
.
_user_specified_nameAdam/v/dense_11/bias:'U#
!
_user_specified_name	total_1:'V#
!
_user_specified_name	count_1:%W!

_user_specified_nametotal:%X!

_user_specified_namecount
�

�
E__inference_conv2d_27_layer_call_and_return_conditional_losses_369541

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

�
E__inference_conv2d_25_layer_call_and_return_conditional_losses_369322

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:��������� S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
`
D__inference_re_lu_26_layer_call_and_return_conditional_losses_369485

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:��������� b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� :W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�

�
7__inference_batch_normalization_25_layer_call_fn_369335

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_25_layer_call_and_return_conditional_losses_367829�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs:&"
 
_user_specified_name369325:&"
 
_user_specified_name369327:&"
 
_user_specified_name369329:&"
 
_user_specified_name369331
�
�
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_369804

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
K
#__inference__update_step_xla_369258
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�	
�
.__inference_sequential_11_layer_call_fn_368767
flatten_5_input
unknown:
�	�
	unknown_0:	�
	unknown_1:	�

	unknown_2:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallflatten_5_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_sequential_11_layer_call_and_return_conditional_losses_368733o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
0
_output_shapes
:����������
)
_user_specified_nameflatten_5_input:&"
 
_user_specified_name368757:&"
 
_user_specified_name368759:&"
 
_user_specified_name368761:&"
 
_user_specified_name368763
�
`
D__inference_re_lu_28_layer_call_and_return_conditional_losses_369704

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:���������@b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_25_layer_call_and_return_conditional_losses_369384

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
*__inference_conv2d_25_layer_call_fn_369312

inputs!
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_25_layer_call_and_return_conditional_losses_368163w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:��������� <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs:&"
 
_user_specified_name369306:&"
 
_user_specified_name369308
�

�
E__inference_conv2d_26_layer_call_and_return_conditional_losses_369413

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:��������� S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
M
1__inference_max_pooling2d_15_layer_call_fn_369490

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_367940�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
d
F__inference_dropout_20_layer_call_and_return_conditional_losses_369522

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:��������� c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:��������� "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� :W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
E
)__inference_re_lu_25_layer_call_fn_369389

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_re_lu_25_layer_call_and_return_conditional_losses_368182h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� :W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�

�
E__inference_conv2d_25_layer_call_and_return_conditional_losses_368163

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:��������� S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
M
1__inference_max_pooling2d_16_layer_call_fn_369709

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_368074�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
W
#__inference__update_step_xla_369248
gradient"
variable:@@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:@@: *
	_noinline(:P L
&
_output_shapes
:@@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
d
+__inference_dropout_22_layer_call_fn_369847

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dropout_22_layer_call_and_return_conditional_losses_368344x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
d
F__inference_dropout_21_layer_call_and_return_conditional_losses_369741

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:���������@c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:���������@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
F
*__inference_flatten_5_layer_call_fn_369874

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_flatten_5_layer_call_and_return_conditional_losses_368685a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
E__inference_conv2d_27_layer_call_and_return_conditional_losses_368237

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
K
#__inference__update_step_xla_369193
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:D @

_output_shapes
: 
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
�
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_368025

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
R__inference_batch_normalization_25_layer_call_and_return_conditional_losses_367847

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_368115

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
d
F__inference_dropout_20_layer_call_and_return_conditional_losses_368385

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:��������� c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:��������� "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� :W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�

�
7__inference_batch_normalization_27_layer_call_fn_369554

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_367963�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs:&"
 
_user_specified_name369544:&"
 
_user_specified_name369546:&"
 
_user_specified_name369548:&"
 
_user_specified_name369550
�
�
*__inference_conv2d_27_layer_call_fn_369531

inputs!
unknown: @
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_27_layer_call_and_return_conditional_losses_368237w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs:&"
 
_user_specified_name369525:&"
 
_user_specified_name369527
�

e
F__inference_dropout_21_layer_call_and_return_conditional_losses_369736

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:���������@Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:���������@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������@T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
E__inference_conv2d_29_layer_call_and_return_conditional_losses_368311

inputs9
conv2d_readvariableop_resource:@�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

e
F__inference_dropout_22_layer_call_and_return_conditional_losses_368344

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU�?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*0
_output_shapes
:����������j
IdentityIdentitydropout/SelectV2:output:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_367981

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
.__inference_sequential_10_layer_call_fn_368577
conv2d_25_input!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11: @

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@%

unknown_23:@�

unknown_24:	�

unknown_25:	�

unknown_26:	�

unknown_27:	�

unknown_28:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_25_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*@
_read_only_resource_inputs"
 	
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_sequential_10_layer_call_and_return_conditional_losses_368447x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:���������
)
_user_specified_nameconv2d_25_input:&"
 
_user_specified_name368515:&"
 
_user_specified_name368517:&"
 
_user_specified_name368519:&"
 
_user_specified_name368521:&"
 
_user_specified_name368523:&"
 
_user_specified_name368525:&"
 
_user_specified_name368527:&"
 
_user_specified_name368529:&	"
 
_user_specified_name368531:&
"
 
_user_specified_name368533:&"
 
_user_specified_name368535:&"
 
_user_specified_name368537:&"
 
_user_specified_name368539:&"
 
_user_specified_name368541:&"
 
_user_specified_name368543:&"
 
_user_specified_name368545:&"
 
_user_specified_name368547:&"
 
_user_specified_name368549:&"
 
_user_specified_name368551:&"
 
_user_specified_name368553:&"
 
_user_specified_name368555:&"
 
_user_specified_name368557:&"
 
_user_specified_name368559:&"
 
_user_specified_name368561:&"
 
_user_specified_name368563:&"
 
_user_specified_name368565:&"
 
_user_specified_name368567:&"
 
_user_specified_name368569:&"
 
_user_specified_name368571:&"
 
_user_specified_name368573
�

�
D__inference_dense_11_layer_call_and_return_conditional_losses_368726

inputs1
matmul_readvariableop_resource:	�
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������
`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

�
7__inference_batch_normalization_26_layer_call_fn_369439

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_26_layer_call_and_return_conditional_losses_367909�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs:&"
 
_user_specified_name369429:&"
 
_user_specified_name369431:&"
 
_user_specified_name369433:&"
 
_user_specified_name369435
�

�
7__inference_batch_normalization_25_layer_call_fn_369348

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_25_layer_call_and_return_conditional_losses_367847�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs:&"
 
_user_specified_name369338:&"
 
_user_specified_name369340:&"
 
_user_specified_name369342:&"
 
_user_specified_name369344
�

�
E__inference_conv2d_28_layer_call_and_return_conditional_losses_368267

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
0__inference_cnn__modified_2_layer_call_fn_369034
input_1!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11: @

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@%

unknown_23:@�

unknown_24:	�

unknown_25:	�

unknown_26:	�

unknown_27:	�

unknown_28:	�

unknown_29:
�	�

unknown_30:	�

unknown_31:	�


unknown_32:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*:
_read_only_resource_inputs
	
 !"*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_cnn__modified_2_layer_call_and_return_conditional_losses_368887o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:���������
!
_user_specified_name	input_1:&"
 
_user_specified_name368964:&"
 
_user_specified_name368966:&"
 
_user_specified_name368968:&"
 
_user_specified_name368970:&"
 
_user_specified_name368972:&"
 
_user_specified_name368974:&"
 
_user_specified_name368976:&"
 
_user_specified_name368978:&	"
 
_user_specified_name368980:&
"
 
_user_specified_name368982:&"
 
_user_specified_name368984:&"
 
_user_specified_name368986:&"
 
_user_specified_name368988:&"
 
_user_specified_name368990:&"
 
_user_specified_name368992:&"
 
_user_specified_name368994:&"
 
_user_specified_name368996:&"
 
_user_specified_name368998:&"
 
_user_specified_name369000:&"
 
_user_specified_name369002:&"
 
_user_specified_name369004:&"
 
_user_specified_name369006:&"
 
_user_specified_name369008:&"
 
_user_specified_name369010:&"
 
_user_specified_name369012:&"
 
_user_specified_name369014:&"
 
_user_specified_name369016:&"
 
_user_specified_name369018:&"
 
_user_specified_name369020:&"
 
_user_specified_name369022:&"
 
_user_specified_name369024:& "
 
_user_specified_name369026:&!"
 
_user_specified_name369028:&""
 
_user_specified_name369030
�
�
R__inference_batch_normalization_26_layer_call_and_return_conditional_losses_367891

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
K
#__inference__update_step_xla_369213
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:D @

_output_shapes
: 
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�

�
7__inference_batch_normalization_29_layer_call_fn_369773

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_368097�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:&"
 
_user_specified_name369763:&"
 
_user_specified_name369765:&"
 
_user_specified_name369767:&"
 
_user_specified_name369769
�
d
F__inference_dropout_22_layer_call_and_return_conditional_losses_368444

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:����������d

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
d
F__inference_dropout_21_layer_call_and_return_conditional_losses_368422

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:���������@c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:���������@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
G
+__inference_dropout_20_layer_call_fn_369505

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dropout_20_layer_call_and_return_conditional_losses_368385h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� :W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
K
#__inference__update_step_xla_369253
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�

�
7__inference_batch_normalization_27_layer_call_fn_369567

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_367981�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs:&"
 
_user_specified_name369557:&"
 
_user_specified_name369559:&"
 
_user_specified_name369561:&"
 
_user_specified_name369563
�
K
#__inference__update_step_xla_369303
gradient
variable:
*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:
: *
	_noinline(:D @

_output_shapes
:

"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
K
#__inference__update_step_xla_369203
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:D @

_output_shapes
: 
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
L
#__inference__update_step_xla_369283
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:�: *
	_noinline(:E A

_output_shapes	
:�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�	
�
.__inference_sequential_11_layer_call_fn_368780
flatten_5_input
unknown:
�	�
	unknown_0:	�
	unknown_1:	�

	unknown_2:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallflatten_5_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_sequential_11_layer_call_and_return_conditional_losses_368754o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
0
_output_shapes
:����������
)
_user_specified_nameflatten_5_input:&"
 
_user_specified_name368770:&"
 
_user_specified_name368772:&"
 
_user_specified_name368774:&"
 
_user_specified_name368776
�
�
.__inference_sequential_10_layer_call_fn_368512
conv2d_25_input!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11: @

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@%

unknown_23:@�

unknown_24:	�

unknown_25:	�

unknown_26:	�

unknown_27:	�

unknown_28:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_25_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_sequential_10_layer_call_and_return_conditional_losses_368347x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:���������
)
_user_specified_nameconv2d_25_input:&"
 
_user_specified_name368450:&"
 
_user_specified_name368452:&"
 
_user_specified_name368454:&"
 
_user_specified_name368456:&"
 
_user_specified_name368458:&"
 
_user_specified_name368460:&"
 
_user_specified_name368462:&"
 
_user_specified_name368464:&	"
 
_user_specified_name368466:&
"
 
_user_specified_name368468:&"
 
_user_specified_name368470:&"
 
_user_specified_name368472:&"
 
_user_specified_name368474:&"
 
_user_specified_name368476:&"
 
_user_specified_name368478:&"
 
_user_specified_name368480:&"
 
_user_specified_name368482:&"
 
_user_specified_name368484:&"
 
_user_specified_name368486:&"
 
_user_specified_name368488:&"
 
_user_specified_name368490:&"
 
_user_specified_name368492:&"
 
_user_specified_name368494:&"
 
_user_specified_name368496:&"
 
_user_specified_name368498:&"
 
_user_specified_name368500:&"
 
_user_specified_name368502:&"
 
_user_specified_name368504:&"
 
_user_specified_name368506:&"
 
_user_specified_name368508
��
�-
!__inference__wrapped_model_367811
input_1`
Fcnn__modified_2_sequential_10_conv2d_25_conv2d_readvariableop_resource: U
Gcnn__modified_2_sequential_10_conv2d_25_biasadd_readvariableop_resource: Z
Lcnn__modified_2_sequential_10_batch_normalization_25_readvariableop_resource: \
Ncnn__modified_2_sequential_10_batch_normalization_25_readvariableop_1_resource: k
]cnn__modified_2_sequential_10_batch_normalization_25_fusedbatchnormv3_readvariableop_resource: m
_cnn__modified_2_sequential_10_batch_normalization_25_fusedbatchnormv3_readvariableop_1_resource: `
Fcnn__modified_2_sequential_10_conv2d_26_conv2d_readvariableop_resource:  U
Gcnn__modified_2_sequential_10_conv2d_26_biasadd_readvariableop_resource: Z
Lcnn__modified_2_sequential_10_batch_normalization_26_readvariableop_resource: \
Ncnn__modified_2_sequential_10_batch_normalization_26_readvariableop_1_resource: k
]cnn__modified_2_sequential_10_batch_normalization_26_fusedbatchnormv3_readvariableop_resource: m
_cnn__modified_2_sequential_10_batch_normalization_26_fusedbatchnormv3_readvariableop_1_resource: `
Fcnn__modified_2_sequential_10_conv2d_27_conv2d_readvariableop_resource: @U
Gcnn__modified_2_sequential_10_conv2d_27_biasadd_readvariableop_resource:@Z
Lcnn__modified_2_sequential_10_batch_normalization_27_readvariableop_resource:@\
Ncnn__modified_2_sequential_10_batch_normalization_27_readvariableop_1_resource:@k
]cnn__modified_2_sequential_10_batch_normalization_27_fusedbatchnormv3_readvariableop_resource:@m
_cnn__modified_2_sequential_10_batch_normalization_27_fusedbatchnormv3_readvariableop_1_resource:@`
Fcnn__modified_2_sequential_10_conv2d_28_conv2d_readvariableop_resource:@@U
Gcnn__modified_2_sequential_10_conv2d_28_biasadd_readvariableop_resource:@Z
Lcnn__modified_2_sequential_10_batch_normalization_28_readvariableop_resource:@\
Ncnn__modified_2_sequential_10_batch_normalization_28_readvariableop_1_resource:@k
]cnn__modified_2_sequential_10_batch_normalization_28_fusedbatchnormv3_readvariableop_resource:@m
_cnn__modified_2_sequential_10_batch_normalization_28_fusedbatchnormv3_readvariableop_1_resource:@a
Fcnn__modified_2_sequential_10_conv2d_29_conv2d_readvariableop_resource:@�V
Gcnn__modified_2_sequential_10_conv2d_29_biasadd_readvariableop_resource:	�[
Lcnn__modified_2_sequential_10_batch_normalization_29_readvariableop_resource:	�]
Ncnn__modified_2_sequential_10_batch_normalization_29_readvariableop_1_resource:	�l
]cnn__modified_2_sequential_10_batch_normalization_29_fusedbatchnormv3_readvariableop_resource:	�n
_cnn__modified_2_sequential_10_batch_normalization_29_fusedbatchnormv3_readvariableop_1_resource:	�Y
Ecnn__modified_2_sequential_11_dense_10_matmul_readvariableop_resource:
�	�U
Fcnn__modified_2_sequential_11_dense_10_biasadd_readvariableop_resource:	�X
Ecnn__modified_2_sequential_11_dense_11_matmul_readvariableop_resource:	�
T
Fcnn__modified_2_sequential_11_dense_11_biasadd_readvariableop_resource:

identity��Tcnn__modified_2/sequential_10/batch_normalization_25/FusedBatchNormV3/ReadVariableOp�Vcnn__modified_2/sequential_10/batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1�Ccnn__modified_2/sequential_10/batch_normalization_25/ReadVariableOp�Ecnn__modified_2/sequential_10/batch_normalization_25/ReadVariableOp_1�Tcnn__modified_2/sequential_10/batch_normalization_26/FusedBatchNormV3/ReadVariableOp�Vcnn__modified_2/sequential_10/batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1�Ccnn__modified_2/sequential_10/batch_normalization_26/ReadVariableOp�Ecnn__modified_2/sequential_10/batch_normalization_26/ReadVariableOp_1�Tcnn__modified_2/sequential_10/batch_normalization_27/FusedBatchNormV3/ReadVariableOp�Vcnn__modified_2/sequential_10/batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1�Ccnn__modified_2/sequential_10/batch_normalization_27/ReadVariableOp�Ecnn__modified_2/sequential_10/batch_normalization_27/ReadVariableOp_1�Tcnn__modified_2/sequential_10/batch_normalization_28/FusedBatchNormV3/ReadVariableOp�Vcnn__modified_2/sequential_10/batch_normalization_28/FusedBatchNormV3/ReadVariableOp_1�Ccnn__modified_2/sequential_10/batch_normalization_28/ReadVariableOp�Ecnn__modified_2/sequential_10/batch_normalization_28/ReadVariableOp_1�Tcnn__modified_2/sequential_10/batch_normalization_29/FusedBatchNormV3/ReadVariableOp�Vcnn__modified_2/sequential_10/batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1�Ccnn__modified_2/sequential_10/batch_normalization_29/ReadVariableOp�Ecnn__modified_2/sequential_10/batch_normalization_29/ReadVariableOp_1�>cnn__modified_2/sequential_10/conv2d_25/BiasAdd/ReadVariableOp�=cnn__modified_2/sequential_10/conv2d_25/Conv2D/ReadVariableOp�>cnn__modified_2/sequential_10/conv2d_26/BiasAdd/ReadVariableOp�=cnn__modified_2/sequential_10/conv2d_26/Conv2D/ReadVariableOp�>cnn__modified_2/sequential_10/conv2d_27/BiasAdd/ReadVariableOp�=cnn__modified_2/sequential_10/conv2d_27/Conv2D/ReadVariableOp�>cnn__modified_2/sequential_10/conv2d_28/BiasAdd/ReadVariableOp�=cnn__modified_2/sequential_10/conv2d_28/Conv2D/ReadVariableOp�>cnn__modified_2/sequential_10/conv2d_29/BiasAdd/ReadVariableOp�=cnn__modified_2/sequential_10/conv2d_29/Conv2D/ReadVariableOp�=cnn__modified_2/sequential_11/dense_10/BiasAdd/ReadVariableOp�<cnn__modified_2/sequential_11/dense_10/MatMul/ReadVariableOp�=cnn__modified_2/sequential_11/dense_11/BiasAdd/ReadVariableOp�<cnn__modified_2/sequential_11/dense_11/MatMul/ReadVariableOp�
=cnn__modified_2/sequential_10/conv2d_25/Conv2D/ReadVariableOpReadVariableOpFcnn__modified_2_sequential_10_conv2d_25_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
.cnn__modified_2/sequential_10/conv2d_25/Conv2DConv2Dinput_1Ecnn__modified_2/sequential_10/conv2d_25/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
�
>cnn__modified_2/sequential_10/conv2d_25/BiasAdd/ReadVariableOpReadVariableOpGcnn__modified_2_sequential_10_conv2d_25_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
/cnn__modified_2/sequential_10/conv2d_25/BiasAddBiasAdd7cnn__modified_2/sequential_10/conv2d_25/Conv2D:output:0Fcnn__modified_2/sequential_10/conv2d_25/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� �
Ccnn__modified_2/sequential_10/batch_normalization_25/ReadVariableOpReadVariableOpLcnn__modified_2_sequential_10_batch_normalization_25_readvariableop_resource*
_output_shapes
: *
dtype0�
Ecnn__modified_2/sequential_10/batch_normalization_25/ReadVariableOp_1ReadVariableOpNcnn__modified_2_sequential_10_batch_normalization_25_readvariableop_1_resource*
_output_shapes
: *
dtype0�
Tcnn__modified_2/sequential_10/batch_normalization_25/FusedBatchNormV3/ReadVariableOpReadVariableOp]cnn__modified_2_sequential_10_batch_normalization_25_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
Vcnn__modified_2/sequential_10/batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp_cnn__modified_2_sequential_10_batch_normalization_25_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
Ecnn__modified_2/sequential_10/batch_normalization_25/FusedBatchNormV3FusedBatchNormV38cnn__modified_2/sequential_10/conv2d_25/BiasAdd:output:0Kcnn__modified_2/sequential_10/batch_normalization_25/ReadVariableOp:value:0Mcnn__modified_2/sequential_10/batch_normalization_25/ReadVariableOp_1:value:0\cnn__modified_2/sequential_10/batch_normalization_25/FusedBatchNormV3/ReadVariableOp:value:0^cnn__modified_2/sequential_10/batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:��������� : : : : :*
epsilon%o�:*
is_training( �
+cnn__modified_2/sequential_10/re_lu_25/ReluReluIcnn__modified_2/sequential_10/batch_normalization_25/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:��������� �
=cnn__modified_2/sequential_10/conv2d_26/Conv2D/ReadVariableOpReadVariableOpFcnn__modified_2_sequential_10_conv2d_26_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
.cnn__modified_2/sequential_10/conv2d_26/Conv2DConv2D9cnn__modified_2/sequential_10/re_lu_25/Relu:activations:0Ecnn__modified_2/sequential_10/conv2d_26/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
�
>cnn__modified_2/sequential_10/conv2d_26/BiasAdd/ReadVariableOpReadVariableOpGcnn__modified_2_sequential_10_conv2d_26_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
/cnn__modified_2/sequential_10/conv2d_26/BiasAddBiasAdd7cnn__modified_2/sequential_10/conv2d_26/Conv2D:output:0Fcnn__modified_2/sequential_10/conv2d_26/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� �
Ccnn__modified_2/sequential_10/batch_normalization_26/ReadVariableOpReadVariableOpLcnn__modified_2_sequential_10_batch_normalization_26_readvariableop_resource*
_output_shapes
: *
dtype0�
Ecnn__modified_2/sequential_10/batch_normalization_26/ReadVariableOp_1ReadVariableOpNcnn__modified_2_sequential_10_batch_normalization_26_readvariableop_1_resource*
_output_shapes
: *
dtype0�
Tcnn__modified_2/sequential_10/batch_normalization_26/FusedBatchNormV3/ReadVariableOpReadVariableOp]cnn__modified_2_sequential_10_batch_normalization_26_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
Vcnn__modified_2/sequential_10/batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp_cnn__modified_2_sequential_10_batch_normalization_26_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
Ecnn__modified_2/sequential_10/batch_normalization_26/FusedBatchNormV3FusedBatchNormV38cnn__modified_2/sequential_10/conv2d_26/BiasAdd:output:0Kcnn__modified_2/sequential_10/batch_normalization_26/ReadVariableOp:value:0Mcnn__modified_2/sequential_10/batch_normalization_26/ReadVariableOp_1:value:0\cnn__modified_2/sequential_10/batch_normalization_26/FusedBatchNormV3/ReadVariableOp:value:0^cnn__modified_2/sequential_10/batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:��������� : : : : :*
epsilon%o�:*
is_training( �
+cnn__modified_2/sequential_10/re_lu_26/ReluReluIcnn__modified_2/sequential_10/batch_normalization_26/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:��������� �
6cnn__modified_2/sequential_10/max_pooling2d_15/MaxPoolMaxPool9cnn__modified_2/sequential_10/re_lu_26/Relu:activations:0*/
_output_shapes
:��������� *
ksize
*
paddingVALID*
strides
�
1cnn__modified_2/sequential_10/dropout_20/IdentityIdentity?cnn__modified_2/sequential_10/max_pooling2d_15/MaxPool:output:0*
T0*/
_output_shapes
:��������� �
=cnn__modified_2/sequential_10/conv2d_27/Conv2D/ReadVariableOpReadVariableOpFcnn__modified_2_sequential_10_conv2d_27_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
.cnn__modified_2/sequential_10/conv2d_27/Conv2DConv2D:cnn__modified_2/sequential_10/dropout_20/Identity:output:0Ecnn__modified_2/sequential_10/conv2d_27/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
>cnn__modified_2/sequential_10/conv2d_27/BiasAdd/ReadVariableOpReadVariableOpGcnn__modified_2_sequential_10_conv2d_27_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
/cnn__modified_2/sequential_10/conv2d_27/BiasAddBiasAdd7cnn__modified_2/sequential_10/conv2d_27/Conv2D:output:0Fcnn__modified_2/sequential_10/conv2d_27/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
Ccnn__modified_2/sequential_10/batch_normalization_27/ReadVariableOpReadVariableOpLcnn__modified_2_sequential_10_batch_normalization_27_readvariableop_resource*
_output_shapes
:@*
dtype0�
Ecnn__modified_2/sequential_10/batch_normalization_27/ReadVariableOp_1ReadVariableOpNcnn__modified_2_sequential_10_batch_normalization_27_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
Tcnn__modified_2/sequential_10/batch_normalization_27/FusedBatchNormV3/ReadVariableOpReadVariableOp]cnn__modified_2_sequential_10_batch_normalization_27_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
Vcnn__modified_2/sequential_10/batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp_cnn__modified_2_sequential_10_batch_normalization_27_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
Ecnn__modified_2/sequential_10/batch_normalization_27/FusedBatchNormV3FusedBatchNormV38cnn__modified_2/sequential_10/conv2d_27/BiasAdd:output:0Kcnn__modified_2/sequential_10/batch_normalization_27/ReadVariableOp:value:0Mcnn__modified_2/sequential_10/batch_normalization_27/ReadVariableOp_1:value:0\cnn__modified_2/sequential_10/batch_normalization_27/FusedBatchNormV3/ReadVariableOp:value:0^cnn__modified_2/sequential_10/batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@:@:@:@:@:*
epsilon%o�:*
is_training( �
+cnn__modified_2/sequential_10/re_lu_27/ReluReluIcnn__modified_2/sequential_10/batch_normalization_27/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������@�
=cnn__modified_2/sequential_10/conv2d_28/Conv2D/ReadVariableOpReadVariableOpFcnn__modified_2_sequential_10_conv2d_28_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
.cnn__modified_2/sequential_10/conv2d_28/Conv2DConv2D9cnn__modified_2/sequential_10/re_lu_27/Relu:activations:0Ecnn__modified_2/sequential_10/conv2d_28/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
>cnn__modified_2/sequential_10/conv2d_28/BiasAdd/ReadVariableOpReadVariableOpGcnn__modified_2_sequential_10_conv2d_28_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
/cnn__modified_2/sequential_10/conv2d_28/BiasAddBiasAdd7cnn__modified_2/sequential_10/conv2d_28/Conv2D:output:0Fcnn__modified_2/sequential_10/conv2d_28/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
Ccnn__modified_2/sequential_10/batch_normalization_28/ReadVariableOpReadVariableOpLcnn__modified_2_sequential_10_batch_normalization_28_readvariableop_resource*
_output_shapes
:@*
dtype0�
Ecnn__modified_2/sequential_10/batch_normalization_28/ReadVariableOp_1ReadVariableOpNcnn__modified_2_sequential_10_batch_normalization_28_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
Tcnn__modified_2/sequential_10/batch_normalization_28/FusedBatchNormV3/ReadVariableOpReadVariableOp]cnn__modified_2_sequential_10_batch_normalization_28_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
Vcnn__modified_2/sequential_10/batch_normalization_28/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp_cnn__modified_2_sequential_10_batch_normalization_28_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
Ecnn__modified_2/sequential_10/batch_normalization_28/FusedBatchNormV3FusedBatchNormV38cnn__modified_2/sequential_10/conv2d_28/BiasAdd:output:0Kcnn__modified_2/sequential_10/batch_normalization_28/ReadVariableOp:value:0Mcnn__modified_2/sequential_10/batch_normalization_28/ReadVariableOp_1:value:0\cnn__modified_2/sequential_10/batch_normalization_28/FusedBatchNormV3/ReadVariableOp:value:0^cnn__modified_2/sequential_10/batch_normalization_28/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@:@:@:@:@:*
epsilon%o�:*
is_training( �
+cnn__modified_2/sequential_10/re_lu_28/ReluReluIcnn__modified_2/sequential_10/batch_normalization_28/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������@�
6cnn__modified_2/sequential_10/max_pooling2d_16/MaxPoolMaxPool9cnn__modified_2/sequential_10/re_lu_28/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
�
1cnn__modified_2/sequential_10/dropout_21/IdentityIdentity?cnn__modified_2/sequential_10/max_pooling2d_16/MaxPool:output:0*
T0*/
_output_shapes
:���������@�
=cnn__modified_2/sequential_10/conv2d_29/Conv2D/ReadVariableOpReadVariableOpFcnn__modified_2_sequential_10_conv2d_29_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
.cnn__modified_2/sequential_10/conv2d_29/Conv2DConv2D:cnn__modified_2/sequential_10/dropout_21/Identity:output:0Ecnn__modified_2/sequential_10/conv2d_29/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
>cnn__modified_2/sequential_10/conv2d_29/BiasAdd/ReadVariableOpReadVariableOpGcnn__modified_2_sequential_10_conv2d_29_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
/cnn__modified_2/sequential_10/conv2d_29/BiasAddBiasAdd7cnn__modified_2/sequential_10/conv2d_29/Conv2D:output:0Fcnn__modified_2/sequential_10/conv2d_29/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
Ccnn__modified_2/sequential_10/batch_normalization_29/ReadVariableOpReadVariableOpLcnn__modified_2_sequential_10_batch_normalization_29_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Ecnn__modified_2/sequential_10/batch_normalization_29/ReadVariableOp_1ReadVariableOpNcnn__modified_2_sequential_10_batch_normalization_29_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
Tcnn__modified_2/sequential_10/batch_normalization_29/FusedBatchNormV3/ReadVariableOpReadVariableOp]cnn__modified_2_sequential_10_batch_normalization_29_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Vcnn__modified_2/sequential_10/batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp_cnn__modified_2_sequential_10_batch_normalization_29_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
Ecnn__modified_2/sequential_10/batch_normalization_29/FusedBatchNormV3FusedBatchNormV38cnn__modified_2/sequential_10/conv2d_29/BiasAdd:output:0Kcnn__modified_2/sequential_10/batch_normalization_29/ReadVariableOp:value:0Mcnn__modified_2/sequential_10/batch_normalization_29/ReadVariableOp_1:value:0\cnn__modified_2/sequential_10/batch_normalization_29/FusedBatchNormV3/ReadVariableOp:value:0^cnn__modified_2/sequential_10/batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
is_training( �
+cnn__modified_2/sequential_10/re_lu_29/ReluReluIcnn__modified_2/sequential_10/batch_normalization_29/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:�����������
6cnn__modified_2/sequential_10/max_pooling2d_17/MaxPoolMaxPool9cnn__modified_2/sequential_10/re_lu_29/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
1cnn__modified_2/sequential_10/dropout_22/IdentityIdentity?cnn__modified_2/sequential_10/max_pooling2d_17/MaxPool:output:0*
T0*0
_output_shapes
:����������~
-cnn__modified_2/sequential_11/flatten_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  �
/cnn__modified_2/sequential_11/flatten_5/ReshapeReshape:cnn__modified_2/sequential_10/dropout_22/Identity:output:06cnn__modified_2/sequential_11/flatten_5/Const:output:0*
T0*(
_output_shapes
:����������	�
<cnn__modified_2/sequential_11/dense_10/MatMul/ReadVariableOpReadVariableOpEcnn__modified_2_sequential_11_dense_10_matmul_readvariableop_resource* 
_output_shapes
:
�	�*
dtype0�
-cnn__modified_2/sequential_11/dense_10/MatMulMatMul8cnn__modified_2/sequential_11/flatten_5/Reshape:output:0Dcnn__modified_2/sequential_11/dense_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
=cnn__modified_2/sequential_11/dense_10/BiasAdd/ReadVariableOpReadVariableOpFcnn__modified_2_sequential_11_dense_10_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
.cnn__modified_2/sequential_11/dense_10/BiasAddBiasAdd7cnn__modified_2/sequential_11/dense_10/MatMul:product:0Ecnn__modified_2/sequential_11/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+cnn__modified_2/sequential_11/dense_10/ReluRelu7cnn__modified_2/sequential_11/dense_10/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
1cnn__modified_2/sequential_11/dropout_23/IdentityIdentity9cnn__modified_2/sequential_11/dense_10/Relu:activations:0*
T0*(
_output_shapes
:�����������
<cnn__modified_2/sequential_11/dense_11/MatMul/ReadVariableOpReadVariableOpEcnn__modified_2_sequential_11_dense_11_matmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0�
-cnn__modified_2/sequential_11/dense_11/MatMulMatMul:cnn__modified_2/sequential_11/dropout_23/Identity:output:0Dcnn__modified_2/sequential_11/dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
=cnn__modified_2/sequential_11/dense_11/BiasAdd/ReadVariableOpReadVariableOpFcnn__modified_2_sequential_11_dense_11_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
.cnn__modified_2/sequential_11/dense_11/BiasAddBiasAdd7cnn__modified_2/sequential_11/dense_11/MatMul:product:0Ecnn__modified_2/sequential_11/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
.cnn__modified_2/sequential_11/dense_11/SoftmaxSoftmax7cnn__modified_2/sequential_11/dense_11/BiasAdd:output:0*
T0*'
_output_shapes
:���������
�
IdentityIdentity8cnn__modified_2/sequential_11/dense_11/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOpU^cnn__modified_2/sequential_10/batch_normalization_25/FusedBatchNormV3/ReadVariableOpW^cnn__modified_2/sequential_10/batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1D^cnn__modified_2/sequential_10/batch_normalization_25/ReadVariableOpF^cnn__modified_2/sequential_10/batch_normalization_25/ReadVariableOp_1U^cnn__modified_2/sequential_10/batch_normalization_26/FusedBatchNormV3/ReadVariableOpW^cnn__modified_2/sequential_10/batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1D^cnn__modified_2/sequential_10/batch_normalization_26/ReadVariableOpF^cnn__modified_2/sequential_10/batch_normalization_26/ReadVariableOp_1U^cnn__modified_2/sequential_10/batch_normalization_27/FusedBatchNormV3/ReadVariableOpW^cnn__modified_2/sequential_10/batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1D^cnn__modified_2/sequential_10/batch_normalization_27/ReadVariableOpF^cnn__modified_2/sequential_10/batch_normalization_27/ReadVariableOp_1U^cnn__modified_2/sequential_10/batch_normalization_28/FusedBatchNormV3/ReadVariableOpW^cnn__modified_2/sequential_10/batch_normalization_28/FusedBatchNormV3/ReadVariableOp_1D^cnn__modified_2/sequential_10/batch_normalization_28/ReadVariableOpF^cnn__modified_2/sequential_10/batch_normalization_28/ReadVariableOp_1U^cnn__modified_2/sequential_10/batch_normalization_29/FusedBatchNormV3/ReadVariableOpW^cnn__modified_2/sequential_10/batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1D^cnn__modified_2/sequential_10/batch_normalization_29/ReadVariableOpF^cnn__modified_2/sequential_10/batch_normalization_29/ReadVariableOp_1?^cnn__modified_2/sequential_10/conv2d_25/BiasAdd/ReadVariableOp>^cnn__modified_2/sequential_10/conv2d_25/Conv2D/ReadVariableOp?^cnn__modified_2/sequential_10/conv2d_26/BiasAdd/ReadVariableOp>^cnn__modified_2/sequential_10/conv2d_26/Conv2D/ReadVariableOp?^cnn__modified_2/sequential_10/conv2d_27/BiasAdd/ReadVariableOp>^cnn__modified_2/sequential_10/conv2d_27/Conv2D/ReadVariableOp?^cnn__modified_2/sequential_10/conv2d_28/BiasAdd/ReadVariableOp>^cnn__modified_2/sequential_10/conv2d_28/Conv2D/ReadVariableOp?^cnn__modified_2/sequential_10/conv2d_29/BiasAdd/ReadVariableOp>^cnn__modified_2/sequential_10/conv2d_29/Conv2D/ReadVariableOp>^cnn__modified_2/sequential_11/dense_10/BiasAdd/ReadVariableOp=^cnn__modified_2/sequential_11/dense_10/MatMul/ReadVariableOp>^cnn__modified_2/sequential_11/dense_11/BiasAdd/ReadVariableOp=^cnn__modified_2/sequential_11/dense_11/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2�
Tcnn__modified_2/sequential_10/batch_normalization_25/FusedBatchNormV3/ReadVariableOpTcnn__modified_2/sequential_10/batch_normalization_25/FusedBatchNormV3/ReadVariableOp2�
Vcnn__modified_2/sequential_10/batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1Vcnn__modified_2/sequential_10/batch_normalization_25/FusedBatchNormV3/ReadVariableOp_12�
Ccnn__modified_2/sequential_10/batch_normalization_25/ReadVariableOpCcnn__modified_2/sequential_10/batch_normalization_25/ReadVariableOp2�
Ecnn__modified_2/sequential_10/batch_normalization_25/ReadVariableOp_1Ecnn__modified_2/sequential_10/batch_normalization_25/ReadVariableOp_12�
Tcnn__modified_2/sequential_10/batch_normalization_26/FusedBatchNormV3/ReadVariableOpTcnn__modified_2/sequential_10/batch_normalization_26/FusedBatchNormV3/ReadVariableOp2�
Vcnn__modified_2/sequential_10/batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1Vcnn__modified_2/sequential_10/batch_normalization_26/FusedBatchNormV3/ReadVariableOp_12�
Ccnn__modified_2/sequential_10/batch_normalization_26/ReadVariableOpCcnn__modified_2/sequential_10/batch_normalization_26/ReadVariableOp2�
Ecnn__modified_2/sequential_10/batch_normalization_26/ReadVariableOp_1Ecnn__modified_2/sequential_10/batch_normalization_26/ReadVariableOp_12�
Tcnn__modified_2/sequential_10/batch_normalization_27/FusedBatchNormV3/ReadVariableOpTcnn__modified_2/sequential_10/batch_normalization_27/FusedBatchNormV3/ReadVariableOp2�
Vcnn__modified_2/sequential_10/batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1Vcnn__modified_2/sequential_10/batch_normalization_27/FusedBatchNormV3/ReadVariableOp_12�
Ccnn__modified_2/sequential_10/batch_normalization_27/ReadVariableOpCcnn__modified_2/sequential_10/batch_normalization_27/ReadVariableOp2�
Ecnn__modified_2/sequential_10/batch_normalization_27/ReadVariableOp_1Ecnn__modified_2/sequential_10/batch_normalization_27/ReadVariableOp_12�
Tcnn__modified_2/sequential_10/batch_normalization_28/FusedBatchNormV3/ReadVariableOpTcnn__modified_2/sequential_10/batch_normalization_28/FusedBatchNormV3/ReadVariableOp2�
Vcnn__modified_2/sequential_10/batch_normalization_28/FusedBatchNormV3/ReadVariableOp_1Vcnn__modified_2/sequential_10/batch_normalization_28/FusedBatchNormV3/ReadVariableOp_12�
Ccnn__modified_2/sequential_10/batch_normalization_28/ReadVariableOpCcnn__modified_2/sequential_10/batch_normalization_28/ReadVariableOp2�
Ecnn__modified_2/sequential_10/batch_normalization_28/ReadVariableOp_1Ecnn__modified_2/sequential_10/batch_normalization_28/ReadVariableOp_12�
Tcnn__modified_2/sequential_10/batch_normalization_29/FusedBatchNormV3/ReadVariableOpTcnn__modified_2/sequential_10/batch_normalization_29/FusedBatchNormV3/ReadVariableOp2�
Vcnn__modified_2/sequential_10/batch_normalization_29/FusedBatchNormV3/ReadVariableOp_1Vcnn__modified_2/sequential_10/batch_normalization_29/FusedBatchNormV3/ReadVariableOp_12�
Ccnn__modified_2/sequential_10/batch_normalization_29/ReadVariableOpCcnn__modified_2/sequential_10/batch_normalization_29/ReadVariableOp2�
Ecnn__modified_2/sequential_10/batch_normalization_29/ReadVariableOp_1Ecnn__modified_2/sequential_10/batch_normalization_29/ReadVariableOp_12�
>cnn__modified_2/sequential_10/conv2d_25/BiasAdd/ReadVariableOp>cnn__modified_2/sequential_10/conv2d_25/BiasAdd/ReadVariableOp2~
=cnn__modified_2/sequential_10/conv2d_25/Conv2D/ReadVariableOp=cnn__modified_2/sequential_10/conv2d_25/Conv2D/ReadVariableOp2�
>cnn__modified_2/sequential_10/conv2d_26/BiasAdd/ReadVariableOp>cnn__modified_2/sequential_10/conv2d_26/BiasAdd/ReadVariableOp2~
=cnn__modified_2/sequential_10/conv2d_26/Conv2D/ReadVariableOp=cnn__modified_2/sequential_10/conv2d_26/Conv2D/ReadVariableOp2�
>cnn__modified_2/sequential_10/conv2d_27/BiasAdd/ReadVariableOp>cnn__modified_2/sequential_10/conv2d_27/BiasAdd/ReadVariableOp2~
=cnn__modified_2/sequential_10/conv2d_27/Conv2D/ReadVariableOp=cnn__modified_2/sequential_10/conv2d_27/Conv2D/ReadVariableOp2�
>cnn__modified_2/sequential_10/conv2d_28/BiasAdd/ReadVariableOp>cnn__modified_2/sequential_10/conv2d_28/BiasAdd/ReadVariableOp2~
=cnn__modified_2/sequential_10/conv2d_28/Conv2D/ReadVariableOp=cnn__modified_2/sequential_10/conv2d_28/Conv2D/ReadVariableOp2�
>cnn__modified_2/sequential_10/conv2d_29/BiasAdd/ReadVariableOp>cnn__modified_2/sequential_10/conv2d_29/BiasAdd/ReadVariableOp2~
=cnn__modified_2/sequential_10/conv2d_29/Conv2D/ReadVariableOp=cnn__modified_2/sequential_10/conv2d_29/Conv2D/ReadVariableOp2~
=cnn__modified_2/sequential_11/dense_10/BiasAdd/ReadVariableOp=cnn__modified_2/sequential_11/dense_10/BiasAdd/ReadVariableOp2|
<cnn__modified_2/sequential_11/dense_10/MatMul/ReadVariableOp<cnn__modified_2/sequential_11/dense_10/MatMul/ReadVariableOp2~
=cnn__modified_2/sequential_11/dense_11/BiasAdd/ReadVariableOp=cnn__modified_2/sequential_11/dense_11/BiasAdd/ReadVariableOp2|
<cnn__modified_2/sequential_11/dense_11/MatMul/ReadVariableOp<cnn__modified_2/sequential_11/dense_11/MatMul/ReadVariableOp:X T
/
_output_shapes
:���������
!
_user_specified_name	input_1:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:( $
"
_user_specified_name
resource:(!$
"
_user_specified_name
resource:("$
"
_user_specified_name
resource
�
`
D__inference_re_lu_29_layer_call_and_return_conditional_losses_369832

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:����������c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
K
#__inference__update_step_xla_369233
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
�
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_367963

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
a
E__inference_flatten_5_layer_call_and_return_conditional_losses_368685

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������	Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�

e
F__inference_dropout_21_layer_call_and_return_conditional_losses_368300

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:���������@Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:���������@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������@T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
0__inference_cnn__modified_2_layer_call_fn_369107
input_1!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11: @

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@%

unknown_23:@�

unknown_24:	�

unknown_25:	�

unknown_26:	�

unknown_27:	�

unknown_28:	�

unknown_29:
�	�

unknown_30:	�

unknown_31:	�


unknown_32:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*D
_read_only_resource_inputs&
$"	
 !"*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_cnn__modified_2_layer_call_and_return_conditional_losses_368961o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:���������
!
_user_specified_name	input_1:&"
 
_user_specified_name369037:&"
 
_user_specified_name369039:&"
 
_user_specified_name369041:&"
 
_user_specified_name369043:&"
 
_user_specified_name369045:&"
 
_user_specified_name369047:&"
 
_user_specified_name369049:&"
 
_user_specified_name369051:&	"
 
_user_specified_name369053:&
"
 
_user_specified_name369055:&"
 
_user_specified_name369057:&"
 
_user_specified_name369059:&"
 
_user_specified_name369061:&"
 
_user_specified_name369063:&"
 
_user_specified_name369065:&"
 
_user_specified_name369067:&"
 
_user_specified_name369069:&"
 
_user_specified_name369071:&"
 
_user_specified_name369073:&"
 
_user_specified_name369075:&"
 
_user_specified_name369077:&"
 
_user_specified_name369079:&"
 
_user_specified_name369081:&"
 
_user_specified_name369083:&"
 
_user_specified_name369085:&"
 
_user_specified_name369087:&"
 
_user_specified_name369089:&"
 
_user_specified_name369091:&"
 
_user_specified_name369093:&"
 
_user_specified_name369095:&"
 
_user_specified_name369097:& "
 
_user_specified_name369099:&!"
 
_user_specified_name369101:&""
 
_user_specified_name369103
�

e
F__inference_dropout_22_layer_call_and_return_conditional_losses_369864

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU�?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*0
_output_shapes
:����������j
IdentityIdentitydropout/SelectV2:output:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
d
+__inference_dropout_20_layer_call_fn_369500

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dropout_20_layer_call_and_return_conditional_losses_368226w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:��������� <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
K
#__inference__update_step_xla_369243
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
h
L__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_369495

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
I__inference_sequential_11_layer_call_and_return_conditional_losses_368733
flatten_5_input#
dense_10_368698:
�	�
dense_10_368700:	�"
dense_11_368727:	�

dense_11_368729:

identity�� dense_10/StatefulPartitionedCall� dense_11/StatefulPartitionedCall�"dropout_23/StatefulPartitionedCall�
flatten_5/PartitionedCallPartitionedCallflatten_5_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_flatten_5_layer_call_and_return_conditional_losses_368685�
 dense_10/StatefulPartitionedCallStatefulPartitionedCall"flatten_5/PartitionedCall:output:0dense_10_368698dense_10_368700*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_368697�
"dropout_23/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dropout_23_layer_call_and_return_conditional_losses_368714�
 dense_11/StatefulPartitionedCallStatefulPartitionedCall+dropout_23/StatefulPartitionedCall:output:0dense_11_368727dense_11_368729*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_368726x
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall#^dropout_23/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2H
"dropout_23/StatefulPartitionedCall"dropout_23/StatefulPartitionedCall:a ]
0
_output_shapes
:����������
)
_user_specified_nameflatten_5_input:&"
 
_user_specified_name368698:&"
 
_user_specified_name368700:&"
 
_user_specified_name368727:&"
 
_user_specified_name368729
�
G
+__inference_dropout_21_layer_call_fn_369724

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dropout_21_layer_call_and_return_conditional_losses_368422h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_369585

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
*__inference_conv2d_29_layer_call_fn_369750

inputs"
unknown:@�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_29_layer_call_and_return_conditional_losses_368311x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:&"
 
_user_specified_name369744:&"
 
_user_specified_name369746
�

�
E__inference_conv2d_26_layer_call_and_return_conditional_losses_368193

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:��������� S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
h
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_369842

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
P
#__inference__update_step_xla_369298
gradient
variable:	�
*
_XlaMustCompile(*(
_construction_contextkEagerRuntime* 
_input_shapes
:	�
: *
	_noinline(:I E

_output_shapes
:	�

"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�

�
7__inference_batch_normalization_26_layer_call_fn_369426

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_26_layer_call_and_return_conditional_losses_367891�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs:&"
 
_user_specified_name369416:&"
 
_user_specified_name369418:&"
 
_user_specified_name369420:&"
 
_user_specified_name369422
�j
�
I__inference_sequential_10_layer_call_and_return_conditional_losses_368447
conv2d_25_input*
conv2d_25_368350: 
conv2d_25_368352: +
batch_normalization_25_368355: +
batch_normalization_25_368357: +
batch_normalization_25_368359: +
batch_normalization_25_368361: *
conv2d_26_368365:  
conv2d_26_368367: +
batch_normalization_26_368370: +
batch_normalization_26_368372: +
batch_normalization_26_368374: +
batch_normalization_26_368376: *
conv2d_27_368387: @
conv2d_27_368389:@+
batch_normalization_27_368392:@+
batch_normalization_27_368394:@+
batch_normalization_27_368396:@+
batch_normalization_27_368398:@*
conv2d_28_368402:@@
conv2d_28_368404:@+
batch_normalization_28_368407:@+
batch_normalization_28_368409:@+
batch_normalization_28_368411:@+
batch_normalization_28_368413:@+
conv2d_29_368424:@�
conv2d_29_368426:	�,
batch_normalization_29_368429:	�,
batch_normalization_29_368431:	�,
batch_normalization_29_368433:	�,
batch_normalization_29_368435:	�
identity��.batch_normalization_25/StatefulPartitionedCall�.batch_normalization_26/StatefulPartitionedCall�.batch_normalization_27/StatefulPartitionedCall�.batch_normalization_28/StatefulPartitionedCall�.batch_normalization_29/StatefulPartitionedCall�!conv2d_25/StatefulPartitionedCall�!conv2d_26/StatefulPartitionedCall�!conv2d_27/StatefulPartitionedCall�!conv2d_28/StatefulPartitionedCall�!conv2d_29/StatefulPartitionedCall�
!conv2d_25/StatefulPartitionedCallStatefulPartitionedCallconv2d_25_inputconv2d_25_368350conv2d_25_368352*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_25_layer_call_and_return_conditional_losses_368163�
.batch_normalization_25/StatefulPartitionedCallStatefulPartitionedCall*conv2d_25/StatefulPartitionedCall:output:0batch_normalization_25_368355batch_normalization_25_368357batch_normalization_25_368359batch_normalization_25_368361*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_25_layer_call_and_return_conditional_losses_367847�
re_lu_25/PartitionedCallPartitionedCall7batch_normalization_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_re_lu_25_layer_call_and_return_conditional_losses_368182�
!conv2d_26/StatefulPartitionedCallStatefulPartitionedCall!re_lu_25/PartitionedCall:output:0conv2d_26_368365conv2d_26_368367*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_26_layer_call_and_return_conditional_losses_368193�
.batch_normalization_26/StatefulPartitionedCallStatefulPartitionedCall*conv2d_26/StatefulPartitionedCall:output:0batch_normalization_26_368370batch_normalization_26_368372batch_normalization_26_368374batch_normalization_26_368376*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_26_layer_call_and_return_conditional_losses_367909�
re_lu_26/PartitionedCallPartitionedCall7batch_normalization_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_re_lu_26_layer_call_and_return_conditional_losses_368212�
 max_pooling2d_15/PartitionedCallPartitionedCall!re_lu_26/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_367940�
dropout_20/PartitionedCallPartitionedCall)max_pooling2d_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dropout_20_layer_call_and_return_conditional_losses_368385�
!conv2d_27/StatefulPartitionedCallStatefulPartitionedCall#dropout_20/PartitionedCall:output:0conv2d_27_368387conv2d_27_368389*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_27_layer_call_and_return_conditional_losses_368237�
.batch_normalization_27/StatefulPartitionedCallStatefulPartitionedCall*conv2d_27/StatefulPartitionedCall:output:0batch_normalization_27_368392batch_normalization_27_368394batch_normalization_27_368396batch_normalization_27_368398*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_367981�
re_lu_27/PartitionedCallPartitionedCall7batch_normalization_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_re_lu_27_layer_call_and_return_conditional_losses_368256�
!conv2d_28/StatefulPartitionedCallStatefulPartitionedCall!re_lu_27/PartitionedCall:output:0conv2d_28_368402conv2d_28_368404*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_28_layer_call_and_return_conditional_losses_368267�
.batch_normalization_28/StatefulPartitionedCallStatefulPartitionedCall*conv2d_28/StatefulPartitionedCall:output:0batch_normalization_28_368407batch_normalization_28_368409batch_normalization_28_368411batch_normalization_28_368413*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_368043�
re_lu_28/PartitionedCallPartitionedCall7batch_normalization_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_re_lu_28_layer_call_and_return_conditional_losses_368286�
 max_pooling2d_16/PartitionedCallPartitionedCall!re_lu_28/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_368074�
dropout_21/PartitionedCallPartitionedCall)max_pooling2d_16/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dropout_21_layer_call_and_return_conditional_losses_368422�
!conv2d_29/StatefulPartitionedCallStatefulPartitionedCall#dropout_21/PartitionedCall:output:0conv2d_29_368424conv2d_29_368426*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_29_layer_call_and_return_conditional_losses_368311�
.batch_normalization_29/StatefulPartitionedCallStatefulPartitionedCall*conv2d_29/StatefulPartitionedCall:output:0batch_normalization_29_368429batch_normalization_29_368431batch_normalization_29_368433batch_normalization_29_368435*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_368115�
re_lu_29/PartitionedCallPartitionedCall7batch_normalization_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_re_lu_29_layer_call_and_return_conditional_losses_368330�
 max_pooling2d_17/PartitionedCallPartitionedCall!re_lu_29/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_368146�
dropout_22/PartitionedCallPartitionedCall)max_pooling2d_17/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dropout_22_layer_call_and_return_conditional_losses_368444{
IdentityIdentity#dropout_22/PartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:�����������
NoOpNoOp/^batch_normalization_25/StatefulPartitionedCall/^batch_normalization_26/StatefulPartitionedCall/^batch_normalization_27/StatefulPartitionedCall/^batch_normalization_28/StatefulPartitionedCall/^batch_normalization_29/StatefulPartitionedCall"^conv2d_25/StatefulPartitionedCall"^conv2d_26/StatefulPartitionedCall"^conv2d_27/StatefulPartitionedCall"^conv2d_28/StatefulPartitionedCall"^conv2d_29/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_25/StatefulPartitionedCall.batch_normalization_25/StatefulPartitionedCall2`
.batch_normalization_26/StatefulPartitionedCall.batch_normalization_26/StatefulPartitionedCall2`
.batch_normalization_27/StatefulPartitionedCall.batch_normalization_27/StatefulPartitionedCall2`
.batch_normalization_28/StatefulPartitionedCall.batch_normalization_28/StatefulPartitionedCall2`
.batch_normalization_29/StatefulPartitionedCall.batch_normalization_29/StatefulPartitionedCall2F
!conv2d_25/StatefulPartitionedCall!conv2d_25/StatefulPartitionedCall2F
!conv2d_26/StatefulPartitionedCall!conv2d_26/StatefulPartitionedCall2F
!conv2d_27/StatefulPartitionedCall!conv2d_27/StatefulPartitionedCall2F
!conv2d_28/StatefulPartitionedCall!conv2d_28/StatefulPartitionedCall2F
!conv2d_29/StatefulPartitionedCall!conv2d_29/StatefulPartitionedCall:` \
/
_output_shapes
:���������
)
_user_specified_nameconv2d_25_input:&"
 
_user_specified_name368350:&"
 
_user_specified_name368352:&"
 
_user_specified_name368355:&"
 
_user_specified_name368357:&"
 
_user_specified_name368359:&"
 
_user_specified_name368361:&"
 
_user_specified_name368365:&"
 
_user_specified_name368367:&	"
 
_user_specified_name368370:&
"
 
_user_specified_name368372:&"
 
_user_specified_name368374:&"
 
_user_specified_name368376:&"
 
_user_specified_name368387:&"
 
_user_specified_name368389:&"
 
_user_specified_name368392:&"
 
_user_specified_name368394:&"
 
_user_specified_name368396:&"
 
_user_specified_name368398:&"
 
_user_specified_name368402:&"
 
_user_specified_name368404:&"
 
_user_specified_name368407:&"
 
_user_specified_name368409:&"
 
_user_specified_name368411:&"
 
_user_specified_name368413:&"
 
_user_specified_name368424:&"
 
_user_specified_name368426:&"
 
_user_specified_name368429:&"
 
_user_specified_name368431:&"
 
_user_specified_name368433:&"
 
_user_specified_name368435
�
�
)__inference_dense_10_layer_call_fn_369889

inputs
unknown:
�	�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_368697p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������	: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������	
 
_user_specified_nameinputs:&"
 
_user_specified_name369883:&"
 
_user_specified_name369885
�
�
$__inference_signature_wrapper_369183
input_1!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11: @

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@%

unknown_23:@�

unknown_24:	�

unknown_25:	�

unknown_26:	�

unknown_27:	�

unknown_28:	�

unknown_29:
�	�

unknown_30:	�

unknown_31:	�


unknown_32:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*D
_read_only_resource_inputs&
$"	
 !"*0
config_proto 

CPU

GPU2*0J 8� **
f%R#
!__inference__wrapped_model_367811o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:���������
!
_user_specified_name	input_1:&"
 
_user_specified_name369113:&"
 
_user_specified_name369115:&"
 
_user_specified_name369117:&"
 
_user_specified_name369119:&"
 
_user_specified_name369121:&"
 
_user_specified_name369123:&"
 
_user_specified_name369125:&"
 
_user_specified_name369127:&	"
 
_user_specified_name369129:&
"
 
_user_specified_name369131:&"
 
_user_specified_name369133:&"
 
_user_specified_name369135:&"
 
_user_specified_name369137:&"
 
_user_specified_name369139:&"
 
_user_specified_name369141:&"
 
_user_specified_name369143:&"
 
_user_specified_name369145:&"
 
_user_specified_name369147:&"
 
_user_specified_name369149:&"
 
_user_specified_name369151:&"
 
_user_specified_name369153:&"
 
_user_specified_name369155:&"
 
_user_specified_name369157:&"
 
_user_specified_name369159:&"
 
_user_specified_name369161:&"
 
_user_specified_name369163:&"
 
_user_specified_name369165:&"
 
_user_specified_name369167:&"
 
_user_specified_name369169:&"
 
_user_specified_name369171:&"
 
_user_specified_name369173:& "
 
_user_specified_name369175:&!"
 
_user_specified_name369177:&""
 
_user_specified_name369179
�
L
#__inference__update_step_xla_369273
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:�: *
	_noinline(:E A

_output_shapes	
:�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
d
+__inference_dropout_23_layer_call_fn_369905

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dropout_23_layer_call_and_return_conditional_losses_368714p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
E__inference_conv2d_28_layer_call_and_return_conditional_losses_369632

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@g
IdentityIdentityBiasAdd:output:0^NoOp*
T0*/
_output_shapes
:���������@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
d
F__inference_dropout_23_layer_call_and_return_conditional_losses_368746

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
7__inference_batch_normalization_28_layer_call_fn_369658

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_368043�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs:&"
 
_user_specified_name369648:&"
 
_user_specified_name369650:&"
 
_user_specified_name369652:&"
 
_user_specified_name369654
�
`
D__inference_re_lu_26_layer_call_and_return_conditional_losses_368212

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:��������� b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� :W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_26_layer_call_and_return_conditional_losses_369475

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
W
#__inference__update_step_xla_369228
gradient"
variable: @*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
: @: *
	_noinline(:P L
&
_output_shapes
: @
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
K
#__inference__update_step_xla_369238
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
K
#__inference__update_step_xla_369223
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:D @

_output_shapes
: 
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
�
*__inference_conv2d_26_layer_call_fn_369403

inputs!
unknown:  
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_26_layer_call_and_return_conditional_losses_368193w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:��������� <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs:&"
 
_user_specified_name369397:&"
 
_user_specified_name369399
�
Q
#__inference__update_step_xla_369288
gradient
variable:
�	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*!
_input_shapes
:
�	�: *
	_noinline(:J F
 
_output_shapes
:
�	�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
E
)__inference_re_lu_28_layer_call_fn_369699

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_re_lu_28_layer_call_and_return_conditional_losses_368286h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
7__inference_batch_normalization_28_layer_call_fn_369645

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_368025�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs:&"
 
_user_specified_name369635:&"
 
_user_specified_name369637:&"
 
_user_specified_name369639:&"
 
_user_specified_name369641
�
`
D__inference_re_lu_25_layer_call_and_return_conditional_losses_368182

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:��������� b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� :W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_25_layer_call_and_return_conditional_losses_367829

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
d
F__inference_dropout_22_layer_call_and_return_conditional_losses_369869

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:����������d

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
G
+__inference_dropout_22_layer_call_fn_369852

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dropout_22_layer_call_and_return_conditional_losses_368444i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
`
D__inference_re_lu_29_layer_call_and_return_conditional_losses_368330

inputs
identityO
ReluReluinputs*
T0*0
_output_shapes
:����������c
IdentityIdentityRelu:activations:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
h
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_368074

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_25_layer_call_and_return_conditional_losses_369366

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
d
+__inference_dropout_21_layer_call_fn_369719

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dropout_21_layer_call_and_return_conditional_losses_368300w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
D__inference_dense_10_layer_call_and_return_conditional_losses_368697

inputs2
matmul_readvariableop_resource:
�	�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
�	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������	
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�'
�
K__inference_cnn__modified_2_layer_call_and_return_conditional_losses_368961
input_1.
sequential_10_368890: "
sequential_10_368892: "
sequential_10_368894: "
sequential_10_368896: "
sequential_10_368898: "
sequential_10_368900: .
sequential_10_368902:  "
sequential_10_368904: "
sequential_10_368906: "
sequential_10_368908: "
sequential_10_368910: "
sequential_10_368912: .
sequential_10_368914: @"
sequential_10_368916:@"
sequential_10_368918:@"
sequential_10_368920:@"
sequential_10_368922:@"
sequential_10_368924:@.
sequential_10_368926:@@"
sequential_10_368928:@"
sequential_10_368930:@"
sequential_10_368932:@"
sequential_10_368934:@"
sequential_10_368936:@/
sequential_10_368938:@�#
sequential_10_368940:	�#
sequential_10_368942:	�#
sequential_10_368944:	�#
sequential_10_368946:	�#
sequential_10_368948:	�(
sequential_11_368951:
�	�#
sequential_11_368953:	�'
sequential_11_368955:	�
"
sequential_11_368957:

identity��%sequential_10/StatefulPartitionedCall�%sequential_11/StatefulPartitionedCall�
%sequential_10/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_10_368890sequential_10_368892sequential_10_368894sequential_10_368896sequential_10_368898sequential_10_368900sequential_10_368902sequential_10_368904sequential_10_368906sequential_10_368908sequential_10_368910sequential_10_368912sequential_10_368914sequential_10_368916sequential_10_368918sequential_10_368920sequential_10_368922sequential_10_368924sequential_10_368926sequential_10_368928sequential_10_368930sequential_10_368932sequential_10_368934sequential_10_368936sequential_10_368938sequential_10_368940sequential_10_368942sequential_10_368944sequential_10_368946sequential_10_368948**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*@
_read_only_resource_inputs"
 	
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_sequential_10_layer_call_and_return_conditional_losses_368447�
%sequential_11/StatefulPartitionedCallStatefulPartitionedCall.sequential_10/StatefulPartitionedCall:output:0sequential_11_368951sequential_11_368953sequential_11_368955sequential_11_368957*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_sequential_11_layer_call_and_return_conditional_losses_368754}
IdentityIdentity.sequential_11/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
r
NoOpNoOp&^sequential_10/StatefulPartitionedCall&^sequential_11/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2N
%sequential_10/StatefulPartitionedCall%sequential_10/StatefulPartitionedCall2N
%sequential_11/StatefulPartitionedCall%sequential_11/StatefulPartitionedCall:X T
/
_output_shapes
:���������
!
_user_specified_name	input_1:&"
 
_user_specified_name368890:&"
 
_user_specified_name368892:&"
 
_user_specified_name368894:&"
 
_user_specified_name368896:&"
 
_user_specified_name368898:&"
 
_user_specified_name368900:&"
 
_user_specified_name368902:&"
 
_user_specified_name368904:&	"
 
_user_specified_name368906:&
"
 
_user_specified_name368908:&"
 
_user_specified_name368910:&"
 
_user_specified_name368912:&"
 
_user_specified_name368914:&"
 
_user_specified_name368916:&"
 
_user_specified_name368918:&"
 
_user_specified_name368920:&"
 
_user_specified_name368922:&"
 
_user_specified_name368924:&"
 
_user_specified_name368926:&"
 
_user_specified_name368928:&"
 
_user_specified_name368930:&"
 
_user_specified_name368932:&"
 
_user_specified_name368934:&"
 
_user_specified_name368936:&"
 
_user_specified_name368938:&"
 
_user_specified_name368940:&"
 
_user_specified_name368942:&"
 
_user_specified_name368944:&"
 
_user_specified_name368946:&"
 
_user_specified_name368948:&"
 
_user_specified_name368951:& "
 
_user_specified_name368953:&!"
 
_user_specified_name368955:&""
 
_user_specified_name368957
�
�
I__inference_sequential_11_layer_call_and_return_conditional_losses_368754
flatten_5_input#
dense_10_368737:
�	�
dense_10_368739:	�"
dense_11_368748:	�

dense_11_368750:

identity�� dense_10/StatefulPartitionedCall� dense_11/StatefulPartitionedCall�
flatten_5/PartitionedCallPartitionedCallflatten_5_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������	* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_flatten_5_layer_call_and_return_conditional_losses_368685�
 dense_10/StatefulPartitionedCallStatefulPartitionedCall"flatten_5/PartitionedCall:output:0dense_10_368737dense_10_368739*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_368697�
dropout_23/PartitionedCallPartitionedCall)dense_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dropout_23_layer_call_and_return_conditional_losses_368746�
 dense_11/StatefulPartitionedCallStatefulPartitionedCall#dropout_23/PartitionedCall:output:0dense_11_368748dense_11_368750*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_368726x
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
h
NoOpNoOp!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall:a ]
0
_output_shapes
:����������
)
_user_specified_nameflatten_5_input:&"
 
_user_specified_name368737:&"
 
_user_specified_name368739:&"
 
_user_specified_name368748:&"
 
_user_specified_name368750
�

�
D__inference_dense_11_layer_call_and_return_conditional_losses_369947

inputs1
matmul_readvariableop_resource:	�
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������
`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ӝ
�T
__inference__traced_save_370497
file_prefixA
'read_disablecopyonread_conv2d_25_kernel: 5
'read_1_disablecopyonread_conv2d_25_bias: C
5read_2_disablecopyonread_batch_normalization_25_gamma: B
4read_3_disablecopyonread_batch_normalization_25_beta: I
;read_4_disablecopyonread_batch_normalization_25_moving_mean: M
?read_5_disablecopyonread_batch_normalization_25_moving_variance: C
)read_6_disablecopyonread_conv2d_26_kernel:  5
'read_7_disablecopyonread_conv2d_26_bias: C
5read_8_disablecopyonread_batch_normalization_26_gamma: B
4read_9_disablecopyonread_batch_normalization_26_beta: J
<read_10_disablecopyonread_batch_normalization_26_moving_mean: N
@read_11_disablecopyonread_batch_normalization_26_moving_variance: D
*read_12_disablecopyonread_conv2d_27_kernel: @6
(read_13_disablecopyonread_conv2d_27_bias:@D
6read_14_disablecopyonread_batch_normalization_27_gamma:@C
5read_15_disablecopyonread_batch_normalization_27_beta:@J
<read_16_disablecopyonread_batch_normalization_27_moving_mean:@N
@read_17_disablecopyonread_batch_normalization_27_moving_variance:@D
*read_18_disablecopyonread_conv2d_28_kernel:@@6
(read_19_disablecopyonread_conv2d_28_bias:@D
6read_20_disablecopyonread_batch_normalization_28_gamma:@C
5read_21_disablecopyonread_batch_normalization_28_beta:@J
<read_22_disablecopyonread_batch_normalization_28_moving_mean:@N
@read_23_disablecopyonread_batch_normalization_28_moving_variance:@E
*read_24_disablecopyonread_conv2d_29_kernel:@�7
(read_25_disablecopyonread_conv2d_29_bias:	�E
6read_26_disablecopyonread_batch_normalization_29_gamma:	�D
5read_27_disablecopyonread_batch_normalization_29_beta:	�K
<read_28_disablecopyonread_batch_normalization_29_moving_mean:	�O
@read_29_disablecopyonread_batch_normalization_29_moving_variance:	�=
)read_30_disablecopyonread_dense_10_kernel:
�	�6
'read_31_disablecopyonread_dense_10_bias:	�<
)read_32_disablecopyonread_dense_11_kernel:	�
5
'read_33_disablecopyonread_dense_11_bias:
-
#read_34_disablecopyonread_iteration:	 1
'read_35_disablecopyonread_learning_rate: K
1read_36_disablecopyonread_adam_m_conv2d_25_kernel: K
1read_37_disablecopyonread_adam_v_conv2d_25_kernel: =
/read_38_disablecopyonread_adam_m_conv2d_25_bias: =
/read_39_disablecopyonread_adam_v_conv2d_25_bias: K
=read_40_disablecopyonread_adam_m_batch_normalization_25_gamma: K
=read_41_disablecopyonread_adam_v_batch_normalization_25_gamma: J
<read_42_disablecopyonread_adam_m_batch_normalization_25_beta: J
<read_43_disablecopyonread_adam_v_batch_normalization_25_beta: K
1read_44_disablecopyonread_adam_m_conv2d_26_kernel:  K
1read_45_disablecopyonread_adam_v_conv2d_26_kernel:  =
/read_46_disablecopyonread_adam_m_conv2d_26_bias: =
/read_47_disablecopyonread_adam_v_conv2d_26_bias: K
=read_48_disablecopyonread_adam_m_batch_normalization_26_gamma: K
=read_49_disablecopyonread_adam_v_batch_normalization_26_gamma: J
<read_50_disablecopyonread_adam_m_batch_normalization_26_beta: J
<read_51_disablecopyonread_adam_v_batch_normalization_26_beta: K
1read_52_disablecopyonread_adam_m_conv2d_27_kernel: @K
1read_53_disablecopyonread_adam_v_conv2d_27_kernel: @=
/read_54_disablecopyonread_adam_m_conv2d_27_bias:@=
/read_55_disablecopyonread_adam_v_conv2d_27_bias:@K
=read_56_disablecopyonread_adam_m_batch_normalization_27_gamma:@K
=read_57_disablecopyonread_adam_v_batch_normalization_27_gamma:@J
<read_58_disablecopyonread_adam_m_batch_normalization_27_beta:@J
<read_59_disablecopyonread_adam_v_batch_normalization_27_beta:@K
1read_60_disablecopyonread_adam_m_conv2d_28_kernel:@@K
1read_61_disablecopyonread_adam_v_conv2d_28_kernel:@@=
/read_62_disablecopyonread_adam_m_conv2d_28_bias:@=
/read_63_disablecopyonread_adam_v_conv2d_28_bias:@K
=read_64_disablecopyonread_adam_m_batch_normalization_28_gamma:@K
=read_65_disablecopyonread_adam_v_batch_normalization_28_gamma:@J
<read_66_disablecopyonread_adam_m_batch_normalization_28_beta:@J
<read_67_disablecopyonread_adam_v_batch_normalization_28_beta:@L
1read_68_disablecopyonread_adam_m_conv2d_29_kernel:@�L
1read_69_disablecopyonread_adam_v_conv2d_29_kernel:@�>
/read_70_disablecopyonread_adam_m_conv2d_29_bias:	�>
/read_71_disablecopyonread_adam_v_conv2d_29_bias:	�L
=read_72_disablecopyonread_adam_m_batch_normalization_29_gamma:	�L
=read_73_disablecopyonread_adam_v_batch_normalization_29_gamma:	�K
<read_74_disablecopyonread_adam_m_batch_normalization_29_beta:	�K
<read_75_disablecopyonread_adam_v_batch_normalization_29_beta:	�D
0read_76_disablecopyonread_adam_m_dense_10_kernel:
�	�D
0read_77_disablecopyonread_adam_v_dense_10_kernel:
�	�=
.read_78_disablecopyonread_adam_m_dense_10_bias:	�=
.read_79_disablecopyonread_adam_v_dense_10_bias:	�C
0read_80_disablecopyonread_adam_m_dense_11_kernel:	�
C
0read_81_disablecopyonread_adam_v_dense_11_kernel:	�
<
.read_82_disablecopyonread_adam_m_dense_11_bias:
<
.read_83_disablecopyonread_adam_v_dense_11_bias:
+
!read_84_disablecopyonread_total_1: +
!read_85_disablecopyonread_count_1: )
read_86_disablecopyonread_total: )
read_87_disablecopyonread_count: 
savev2_const
identity_177��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_35/DisableCopyOnRead�Read_35/ReadVariableOp�Read_36/DisableCopyOnRead�Read_36/ReadVariableOp�Read_37/DisableCopyOnRead�Read_37/ReadVariableOp�Read_38/DisableCopyOnRead�Read_38/ReadVariableOp�Read_39/DisableCopyOnRead�Read_39/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_40/DisableCopyOnRead�Read_40/ReadVariableOp�Read_41/DisableCopyOnRead�Read_41/ReadVariableOp�Read_42/DisableCopyOnRead�Read_42/ReadVariableOp�Read_43/DisableCopyOnRead�Read_43/ReadVariableOp�Read_44/DisableCopyOnRead�Read_44/ReadVariableOp�Read_45/DisableCopyOnRead�Read_45/ReadVariableOp�Read_46/DisableCopyOnRead�Read_46/ReadVariableOp�Read_47/DisableCopyOnRead�Read_47/ReadVariableOp�Read_48/DisableCopyOnRead�Read_48/ReadVariableOp�Read_49/DisableCopyOnRead�Read_49/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_50/DisableCopyOnRead�Read_50/ReadVariableOp�Read_51/DisableCopyOnRead�Read_51/ReadVariableOp�Read_52/DisableCopyOnRead�Read_52/ReadVariableOp�Read_53/DisableCopyOnRead�Read_53/ReadVariableOp�Read_54/DisableCopyOnRead�Read_54/ReadVariableOp�Read_55/DisableCopyOnRead�Read_55/ReadVariableOp�Read_56/DisableCopyOnRead�Read_56/ReadVariableOp�Read_57/DisableCopyOnRead�Read_57/ReadVariableOp�Read_58/DisableCopyOnRead�Read_58/ReadVariableOp�Read_59/DisableCopyOnRead�Read_59/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_60/DisableCopyOnRead�Read_60/ReadVariableOp�Read_61/DisableCopyOnRead�Read_61/ReadVariableOp�Read_62/DisableCopyOnRead�Read_62/ReadVariableOp�Read_63/DisableCopyOnRead�Read_63/ReadVariableOp�Read_64/DisableCopyOnRead�Read_64/ReadVariableOp�Read_65/DisableCopyOnRead�Read_65/ReadVariableOp�Read_66/DisableCopyOnRead�Read_66/ReadVariableOp�Read_67/DisableCopyOnRead�Read_67/ReadVariableOp�Read_68/DisableCopyOnRead�Read_68/ReadVariableOp�Read_69/DisableCopyOnRead�Read_69/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_70/DisableCopyOnRead�Read_70/ReadVariableOp�Read_71/DisableCopyOnRead�Read_71/ReadVariableOp�Read_72/DisableCopyOnRead�Read_72/ReadVariableOp�Read_73/DisableCopyOnRead�Read_73/ReadVariableOp�Read_74/DisableCopyOnRead�Read_74/ReadVariableOp�Read_75/DisableCopyOnRead�Read_75/ReadVariableOp�Read_76/DisableCopyOnRead�Read_76/ReadVariableOp�Read_77/DisableCopyOnRead�Read_77/ReadVariableOp�Read_78/DisableCopyOnRead�Read_78/ReadVariableOp�Read_79/DisableCopyOnRead�Read_79/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_80/DisableCopyOnRead�Read_80/ReadVariableOp�Read_81/DisableCopyOnRead�Read_81/ReadVariableOp�Read_82/DisableCopyOnRead�Read_82/ReadVariableOp�Read_83/DisableCopyOnRead�Read_83/ReadVariableOp�Read_84/DisableCopyOnRead�Read_84/ReadVariableOp�Read_85/DisableCopyOnRead�Read_85/ReadVariableOp�Read_86/DisableCopyOnRead�Read_86/ReadVariableOp�Read_87/DisableCopyOnRead�Read_87/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: y
Read/DisableCopyOnReadDisableCopyOnRead'read_disablecopyonread_conv2d_25_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp'read_disablecopyonread_conv2d_25_kernel^Read/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
: {
Read_1/DisableCopyOnReadDisableCopyOnRead'read_1_disablecopyonread_conv2d_25_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp'read_1_disablecopyonread_conv2d_25_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_2/DisableCopyOnReadDisableCopyOnRead5read_2_disablecopyonread_batch_normalization_25_gamma"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp5read_2_disablecopyonread_batch_normalization_25_gamma^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_3/DisableCopyOnReadDisableCopyOnRead4read_3_disablecopyonread_batch_normalization_25_beta"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp4read_3_disablecopyonread_batch_normalization_25_beta^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_4/DisableCopyOnReadDisableCopyOnRead;read_4_disablecopyonread_batch_normalization_25_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp;read_4_disablecopyonread_batch_normalization_25_moving_mean^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_5/DisableCopyOnReadDisableCopyOnRead?read_5_disablecopyonread_batch_normalization_25_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp?read_5_disablecopyonread_batch_normalization_25_moving_variance^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
: }
Read_6/DisableCopyOnReadDisableCopyOnRead)read_6_disablecopyonread_conv2d_26_kernel"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp)read_6_disablecopyonread_conv2d_26_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0v
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  m
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*&
_output_shapes
:  {
Read_7/DisableCopyOnReadDisableCopyOnRead'read_7_disablecopyonread_conv2d_26_bias"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp'read_7_disablecopyonread_conv2d_26_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_8/DisableCopyOnReadDisableCopyOnRead5read_8_disablecopyonread_batch_normalization_26_gamma"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp5read_8_disablecopyonread_batch_normalization_26_gamma^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0j
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_9/DisableCopyOnReadDisableCopyOnRead4read_9_disablecopyonread_batch_normalization_26_beta"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp4read_9_disablecopyonread_batch_normalization_26_beta^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_10/DisableCopyOnReadDisableCopyOnRead<read_10_disablecopyonread_batch_normalization_26_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp<read_10_disablecopyonread_batch_normalization_26_moving_mean^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_11/DisableCopyOnReadDisableCopyOnRead@read_11_disablecopyonread_batch_normalization_26_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp@read_11_disablecopyonread_batch_normalization_26_moving_variance^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_12/DisableCopyOnReadDisableCopyOnRead*read_12_disablecopyonread_conv2d_27_kernel"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp*read_12_disablecopyonread_conv2d_27_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*&
_output_shapes
: @}
Read_13/DisableCopyOnReadDisableCopyOnRead(read_13_disablecopyonread_conv2d_27_bias"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp(read_13_disablecopyonread_conv2d_27_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_14/DisableCopyOnReadDisableCopyOnRead6read_14_disablecopyonread_batch_normalization_27_gamma"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp6read_14_disablecopyonread_batch_normalization_27_gamma^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_15/DisableCopyOnReadDisableCopyOnRead5read_15_disablecopyonread_batch_normalization_27_beta"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp5read_15_disablecopyonread_batch_normalization_27_beta^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_16/DisableCopyOnReadDisableCopyOnRead<read_16_disablecopyonread_batch_normalization_27_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp<read_16_disablecopyonread_batch_normalization_27_moving_mean^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_17/DisableCopyOnReadDisableCopyOnRead@read_17_disablecopyonread_batch_normalization_27_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp@read_17_disablecopyonread_batch_normalization_27_moving_variance^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_18/DisableCopyOnReadDisableCopyOnRead*read_18_disablecopyonread_conv2d_28_kernel"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp*read_18_disablecopyonread_conv2d_28_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@}
Read_19/DisableCopyOnReadDisableCopyOnRead(read_19_disablecopyonread_conv2d_28_bias"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp(read_19_disablecopyonread_conv2d_28_bias^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_20/DisableCopyOnReadDisableCopyOnRead6read_20_disablecopyonread_batch_normalization_28_gamma"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp6read_20_disablecopyonread_batch_normalization_28_gamma^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_21/DisableCopyOnReadDisableCopyOnRead5read_21_disablecopyonread_batch_normalization_28_beta"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp5read_21_disablecopyonread_batch_normalization_28_beta^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_22/DisableCopyOnReadDisableCopyOnRead<read_22_disablecopyonread_batch_normalization_28_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp<read_22_disablecopyonread_batch_normalization_28_moving_mean^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_23/DisableCopyOnReadDisableCopyOnRead@read_23_disablecopyonread_batch_normalization_28_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp@read_23_disablecopyonread_batch_normalization_28_moving_variance^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_24/DisableCopyOnReadDisableCopyOnRead*read_24_disablecopyonread_conv2d_29_kernel"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp*read_24_disablecopyonread_conv2d_29_kernel^Read_24/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:@�*
dtype0x
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:@�n
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*'
_output_shapes
:@�}
Read_25/DisableCopyOnReadDisableCopyOnRead(read_25_disablecopyonread_conv2d_29_bias"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp(read_25_disablecopyonread_conv2d_29_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_26/DisableCopyOnReadDisableCopyOnRead6read_26_disablecopyonread_batch_normalization_29_gamma"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp6read_26_disablecopyonread_batch_normalization_29_gamma^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_27/DisableCopyOnReadDisableCopyOnRead5read_27_disablecopyonread_batch_normalization_29_beta"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp5read_27_disablecopyonread_batch_normalization_29_beta^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_28/DisableCopyOnReadDisableCopyOnRead<read_28_disablecopyonread_batch_normalization_29_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp<read_28_disablecopyonread_batch_normalization_29_moving_mean^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_29/DisableCopyOnReadDisableCopyOnRead@read_29_disablecopyonread_batch_normalization_29_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp@read_29_disablecopyonread_batch_normalization_29_moving_variance^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes	
:�~
Read_30/DisableCopyOnReadDisableCopyOnRead)read_30_disablecopyonread_dense_10_kernel"/device:CPU:0*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp)read_30_disablecopyonread_dense_10_kernel^Read_30/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
�	�*
dtype0q
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
�	�g
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0* 
_output_shapes
:
�	�|
Read_31/DisableCopyOnReadDisableCopyOnRead'read_31_disablecopyonread_dense_10_bias"/device:CPU:0*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp'read_31_disablecopyonread_dense_10_bias^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes	
:�~
Read_32/DisableCopyOnReadDisableCopyOnRead)read_32_disablecopyonread_dense_11_kernel"/device:CPU:0*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp)read_32_disablecopyonread_dense_11_kernel^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�
*
dtype0p
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�
f
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes
:	�
|
Read_33/DisableCopyOnReadDisableCopyOnRead'read_33_disablecopyonread_dense_11_bias"/device:CPU:0*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOp'read_33_disablecopyonread_dense_11_bias^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0k
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
a
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes
:
x
Read_34/DisableCopyOnReadDisableCopyOnRead#read_34_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOp#read_34_disablecopyonread_iteration^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_35/DisableCopyOnReadDisableCopyOnRead'read_35_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOp'read_35_disablecopyonread_learning_rate^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_36/DisableCopyOnReadDisableCopyOnRead1read_36_disablecopyonread_adam_m_conv2d_25_kernel"/device:CPU:0*
_output_shapes
 �
Read_36/ReadVariableOpReadVariableOp1read_36_disablecopyonread_adam_m_conv2d_25_kernel^Read_36/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*&
_output_shapes
: �
Read_37/DisableCopyOnReadDisableCopyOnRead1read_37_disablecopyonread_adam_v_conv2d_25_kernel"/device:CPU:0*
_output_shapes
 �
Read_37/ReadVariableOpReadVariableOp1read_37_disablecopyonread_adam_v_conv2d_25_kernel^Read_37/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*&
_output_shapes
: �
Read_38/DisableCopyOnReadDisableCopyOnRead/read_38_disablecopyonread_adam_m_conv2d_25_bias"/device:CPU:0*
_output_shapes
 �
Read_38/ReadVariableOpReadVariableOp/read_38_disablecopyonread_adam_m_conv2d_25_bias^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_39/DisableCopyOnReadDisableCopyOnRead/read_39_disablecopyonread_adam_v_conv2d_25_bias"/device:CPU:0*
_output_shapes
 �
Read_39/ReadVariableOpReadVariableOp/read_39_disablecopyonread_adam_v_conv2d_25_bias^Read_39/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_40/DisableCopyOnReadDisableCopyOnRead=read_40_disablecopyonread_adam_m_batch_normalization_25_gamma"/device:CPU:0*
_output_shapes
 �
Read_40/ReadVariableOpReadVariableOp=read_40_disablecopyonread_adam_m_batch_normalization_25_gamma^Read_40/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_41/DisableCopyOnReadDisableCopyOnRead=read_41_disablecopyonread_adam_v_batch_normalization_25_gamma"/device:CPU:0*
_output_shapes
 �
Read_41/ReadVariableOpReadVariableOp=read_41_disablecopyonread_adam_v_batch_normalization_25_gamma^Read_41/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_42/DisableCopyOnReadDisableCopyOnRead<read_42_disablecopyonread_adam_m_batch_normalization_25_beta"/device:CPU:0*
_output_shapes
 �
Read_42/ReadVariableOpReadVariableOp<read_42_disablecopyonread_adam_m_batch_normalization_25_beta^Read_42/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_43/DisableCopyOnReadDisableCopyOnRead<read_43_disablecopyonread_adam_v_batch_normalization_25_beta"/device:CPU:0*
_output_shapes
 �
Read_43/ReadVariableOpReadVariableOp<read_43_disablecopyonread_adam_v_batch_normalization_25_beta^Read_43/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_44/DisableCopyOnReadDisableCopyOnRead1read_44_disablecopyonread_adam_m_conv2d_26_kernel"/device:CPU:0*
_output_shapes
 �
Read_44/ReadVariableOpReadVariableOp1read_44_disablecopyonread_adam_m_conv2d_26_kernel^Read_44/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0w
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  m
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*&
_output_shapes
:  �
Read_45/DisableCopyOnReadDisableCopyOnRead1read_45_disablecopyonread_adam_v_conv2d_26_kernel"/device:CPU:0*
_output_shapes
 �
Read_45/ReadVariableOpReadVariableOp1read_45_disablecopyonread_adam_v_conv2d_26_kernel^Read_45/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0w
Identity_90IdentityRead_45/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  m
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*&
_output_shapes
:  �
Read_46/DisableCopyOnReadDisableCopyOnRead/read_46_disablecopyonread_adam_m_conv2d_26_bias"/device:CPU:0*
_output_shapes
 �
Read_46/ReadVariableOpReadVariableOp/read_46_disablecopyonread_adam_m_conv2d_26_bias^Read_46/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_92IdentityRead_46/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_47/DisableCopyOnReadDisableCopyOnRead/read_47_disablecopyonread_adam_v_conv2d_26_bias"/device:CPU:0*
_output_shapes
 �
Read_47/ReadVariableOpReadVariableOp/read_47_disablecopyonread_adam_v_conv2d_26_bias^Read_47/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_94IdentityRead_47/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_48/DisableCopyOnReadDisableCopyOnRead=read_48_disablecopyonread_adam_m_batch_normalization_26_gamma"/device:CPU:0*
_output_shapes
 �
Read_48/ReadVariableOpReadVariableOp=read_48_disablecopyonread_adam_m_batch_normalization_26_gamma^Read_48/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_96IdentityRead_48/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_97IdentityIdentity_96:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_49/DisableCopyOnReadDisableCopyOnRead=read_49_disablecopyonread_adam_v_batch_normalization_26_gamma"/device:CPU:0*
_output_shapes
 �
Read_49/ReadVariableOpReadVariableOp=read_49_disablecopyonread_adam_v_batch_normalization_26_gamma^Read_49/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_98IdentityRead_49/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_50/DisableCopyOnReadDisableCopyOnRead<read_50_disablecopyonread_adam_m_batch_normalization_26_beta"/device:CPU:0*
_output_shapes
 �
Read_50/ReadVariableOpReadVariableOp<read_50_disablecopyonread_adam_m_batch_normalization_26_beta^Read_50/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_100IdentityRead_50/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_101IdentityIdentity_100:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_51/DisableCopyOnReadDisableCopyOnRead<read_51_disablecopyonread_adam_v_batch_normalization_26_beta"/device:CPU:0*
_output_shapes
 �
Read_51/ReadVariableOpReadVariableOp<read_51_disablecopyonread_adam_v_batch_normalization_26_beta^Read_51/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_102IdentityRead_51/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_103IdentityIdentity_102:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_52/DisableCopyOnReadDisableCopyOnRead1read_52_disablecopyonread_adam_m_conv2d_27_kernel"/device:CPU:0*
_output_shapes
 �
Read_52/ReadVariableOpReadVariableOp1read_52_disablecopyonread_adam_m_conv2d_27_kernel^Read_52/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0x
Identity_104IdentityRead_52/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @o
Identity_105IdentityIdentity_104:output:0"/device:CPU:0*
T0*&
_output_shapes
: @�
Read_53/DisableCopyOnReadDisableCopyOnRead1read_53_disablecopyonread_adam_v_conv2d_27_kernel"/device:CPU:0*
_output_shapes
 �
Read_53/ReadVariableOpReadVariableOp1read_53_disablecopyonread_adam_v_conv2d_27_kernel^Read_53/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0x
Identity_106IdentityRead_53/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @o
Identity_107IdentityIdentity_106:output:0"/device:CPU:0*
T0*&
_output_shapes
: @�
Read_54/DisableCopyOnReadDisableCopyOnRead/read_54_disablecopyonread_adam_m_conv2d_27_bias"/device:CPU:0*
_output_shapes
 �
Read_54/ReadVariableOpReadVariableOp/read_54_disablecopyonread_adam_m_conv2d_27_bias^Read_54/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_108IdentityRead_54/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_109IdentityIdentity_108:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_55/DisableCopyOnReadDisableCopyOnRead/read_55_disablecopyonread_adam_v_conv2d_27_bias"/device:CPU:0*
_output_shapes
 �
Read_55/ReadVariableOpReadVariableOp/read_55_disablecopyonread_adam_v_conv2d_27_bias^Read_55/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_110IdentityRead_55/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_111IdentityIdentity_110:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_56/DisableCopyOnReadDisableCopyOnRead=read_56_disablecopyonread_adam_m_batch_normalization_27_gamma"/device:CPU:0*
_output_shapes
 �
Read_56/ReadVariableOpReadVariableOp=read_56_disablecopyonread_adam_m_batch_normalization_27_gamma^Read_56/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_112IdentityRead_56/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_113IdentityIdentity_112:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_57/DisableCopyOnReadDisableCopyOnRead=read_57_disablecopyonread_adam_v_batch_normalization_27_gamma"/device:CPU:0*
_output_shapes
 �
Read_57/ReadVariableOpReadVariableOp=read_57_disablecopyonread_adam_v_batch_normalization_27_gamma^Read_57/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_114IdentityRead_57/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_115IdentityIdentity_114:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_58/DisableCopyOnReadDisableCopyOnRead<read_58_disablecopyonread_adam_m_batch_normalization_27_beta"/device:CPU:0*
_output_shapes
 �
Read_58/ReadVariableOpReadVariableOp<read_58_disablecopyonread_adam_m_batch_normalization_27_beta^Read_58/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_116IdentityRead_58/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_117IdentityIdentity_116:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_59/DisableCopyOnReadDisableCopyOnRead<read_59_disablecopyonread_adam_v_batch_normalization_27_beta"/device:CPU:0*
_output_shapes
 �
Read_59/ReadVariableOpReadVariableOp<read_59_disablecopyonread_adam_v_batch_normalization_27_beta^Read_59/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_118IdentityRead_59/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_119IdentityIdentity_118:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_60/DisableCopyOnReadDisableCopyOnRead1read_60_disablecopyonread_adam_m_conv2d_28_kernel"/device:CPU:0*
_output_shapes
 �
Read_60/ReadVariableOpReadVariableOp1read_60_disablecopyonread_adam_m_conv2d_28_kernel^Read_60/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0x
Identity_120IdentityRead_60/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_121IdentityIdentity_120:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_61/DisableCopyOnReadDisableCopyOnRead1read_61_disablecopyonread_adam_v_conv2d_28_kernel"/device:CPU:0*
_output_shapes
 �
Read_61/ReadVariableOpReadVariableOp1read_61_disablecopyonread_adam_v_conv2d_28_kernel^Read_61/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0x
Identity_122IdentityRead_61/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_123IdentityIdentity_122:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_62/DisableCopyOnReadDisableCopyOnRead/read_62_disablecopyonread_adam_m_conv2d_28_bias"/device:CPU:0*
_output_shapes
 �
Read_62/ReadVariableOpReadVariableOp/read_62_disablecopyonread_adam_m_conv2d_28_bias^Read_62/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_124IdentityRead_62/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_125IdentityIdentity_124:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_63/DisableCopyOnReadDisableCopyOnRead/read_63_disablecopyonread_adam_v_conv2d_28_bias"/device:CPU:0*
_output_shapes
 �
Read_63/ReadVariableOpReadVariableOp/read_63_disablecopyonread_adam_v_conv2d_28_bias^Read_63/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_126IdentityRead_63/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_127IdentityIdentity_126:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_64/DisableCopyOnReadDisableCopyOnRead=read_64_disablecopyonread_adam_m_batch_normalization_28_gamma"/device:CPU:0*
_output_shapes
 �
Read_64/ReadVariableOpReadVariableOp=read_64_disablecopyonread_adam_m_batch_normalization_28_gamma^Read_64/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_128IdentityRead_64/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_129IdentityIdentity_128:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_65/DisableCopyOnReadDisableCopyOnRead=read_65_disablecopyonread_adam_v_batch_normalization_28_gamma"/device:CPU:0*
_output_shapes
 �
Read_65/ReadVariableOpReadVariableOp=read_65_disablecopyonread_adam_v_batch_normalization_28_gamma^Read_65/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_130IdentityRead_65/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_131IdentityIdentity_130:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_66/DisableCopyOnReadDisableCopyOnRead<read_66_disablecopyonread_adam_m_batch_normalization_28_beta"/device:CPU:0*
_output_shapes
 �
Read_66/ReadVariableOpReadVariableOp<read_66_disablecopyonread_adam_m_batch_normalization_28_beta^Read_66/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_132IdentityRead_66/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_133IdentityIdentity_132:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_67/DisableCopyOnReadDisableCopyOnRead<read_67_disablecopyonread_adam_v_batch_normalization_28_beta"/device:CPU:0*
_output_shapes
 �
Read_67/ReadVariableOpReadVariableOp<read_67_disablecopyonread_adam_v_batch_normalization_28_beta^Read_67/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_134IdentityRead_67/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_135IdentityIdentity_134:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_68/DisableCopyOnReadDisableCopyOnRead1read_68_disablecopyonread_adam_m_conv2d_29_kernel"/device:CPU:0*
_output_shapes
 �
Read_68/ReadVariableOpReadVariableOp1read_68_disablecopyonread_adam_m_conv2d_29_kernel^Read_68/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:@�*
dtype0y
Identity_136IdentityRead_68/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:@�p
Identity_137IdentityIdentity_136:output:0"/device:CPU:0*
T0*'
_output_shapes
:@��
Read_69/DisableCopyOnReadDisableCopyOnRead1read_69_disablecopyonread_adam_v_conv2d_29_kernel"/device:CPU:0*
_output_shapes
 �
Read_69/ReadVariableOpReadVariableOp1read_69_disablecopyonread_adam_v_conv2d_29_kernel^Read_69/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:@�*
dtype0y
Identity_138IdentityRead_69/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:@�p
Identity_139IdentityIdentity_138:output:0"/device:CPU:0*
T0*'
_output_shapes
:@��
Read_70/DisableCopyOnReadDisableCopyOnRead/read_70_disablecopyonread_adam_m_conv2d_29_bias"/device:CPU:0*
_output_shapes
 �
Read_70/ReadVariableOpReadVariableOp/read_70_disablecopyonread_adam_m_conv2d_29_bias^Read_70/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_140IdentityRead_70/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_141IdentityIdentity_140:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_71/DisableCopyOnReadDisableCopyOnRead/read_71_disablecopyonread_adam_v_conv2d_29_bias"/device:CPU:0*
_output_shapes
 �
Read_71/ReadVariableOpReadVariableOp/read_71_disablecopyonread_adam_v_conv2d_29_bias^Read_71/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_142IdentityRead_71/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_143IdentityIdentity_142:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_72/DisableCopyOnReadDisableCopyOnRead=read_72_disablecopyonread_adam_m_batch_normalization_29_gamma"/device:CPU:0*
_output_shapes
 �
Read_72/ReadVariableOpReadVariableOp=read_72_disablecopyonread_adam_m_batch_normalization_29_gamma^Read_72/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_144IdentityRead_72/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_145IdentityIdentity_144:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_73/DisableCopyOnReadDisableCopyOnRead=read_73_disablecopyonread_adam_v_batch_normalization_29_gamma"/device:CPU:0*
_output_shapes
 �
Read_73/ReadVariableOpReadVariableOp=read_73_disablecopyonread_adam_v_batch_normalization_29_gamma^Read_73/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_146IdentityRead_73/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_147IdentityIdentity_146:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_74/DisableCopyOnReadDisableCopyOnRead<read_74_disablecopyonread_adam_m_batch_normalization_29_beta"/device:CPU:0*
_output_shapes
 �
Read_74/ReadVariableOpReadVariableOp<read_74_disablecopyonread_adam_m_batch_normalization_29_beta^Read_74/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_148IdentityRead_74/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_149IdentityIdentity_148:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_75/DisableCopyOnReadDisableCopyOnRead<read_75_disablecopyonread_adam_v_batch_normalization_29_beta"/device:CPU:0*
_output_shapes
 �
Read_75/ReadVariableOpReadVariableOp<read_75_disablecopyonread_adam_v_batch_normalization_29_beta^Read_75/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_150IdentityRead_75/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_151IdentityIdentity_150:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_76/DisableCopyOnReadDisableCopyOnRead0read_76_disablecopyonread_adam_m_dense_10_kernel"/device:CPU:0*
_output_shapes
 �
Read_76/ReadVariableOpReadVariableOp0read_76_disablecopyonread_adam_m_dense_10_kernel^Read_76/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
�	�*
dtype0r
Identity_152IdentityRead_76/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
�	�i
Identity_153IdentityIdentity_152:output:0"/device:CPU:0*
T0* 
_output_shapes
:
�	��
Read_77/DisableCopyOnReadDisableCopyOnRead0read_77_disablecopyonread_adam_v_dense_10_kernel"/device:CPU:0*
_output_shapes
 �
Read_77/ReadVariableOpReadVariableOp0read_77_disablecopyonread_adam_v_dense_10_kernel^Read_77/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
�	�*
dtype0r
Identity_154IdentityRead_77/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
�	�i
Identity_155IdentityIdentity_154:output:0"/device:CPU:0*
T0* 
_output_shapes
:
�	��
Read_78/DisableCopyOnReadDisableCopyOnRead.read_78_disablecopyonread_adam_m_dense_10_bias"/device:CPU:0*
_output_shapes
 �
Read_78/ReadVariableOpReadVariableOp.read_78_disablecopyonread_adam_m_dense_10_bias^Read_78/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_156IdentityRead_78/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_157IdentityIdentity_156:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_79/DisableCopyOnReadDisableCopyOnRead.read_79_disablecopyonread_adam_v_dense_10_bias"/device:CPU:0*
_output_shapes
 �
Read_79/ReadVariableOpReadVariableOp.read_79_disablecopyonread_adam_v_dense_10_bias^Read_79/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_158IdentityRead_79/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_159IdentityIdentity_158:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_80/DisableCopyOnReadDisableCopyOnRead0read_80_disablecopyonread_adam_m_dense_11_kernel"/device:CPU:0*
_output_shapes
 �
Read_80/ReadVariableOpReadVariableOp0read_80_disablecopyonread_adam_m_dense_11_kernel^Read_80/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�
*
dtype0q
Identity_160IdentityRead_80/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�
h
Identity_161IdentityIdentity_160:output:0"/device:CPU:0*
T0*
_output_shapes
:	�
�
Read_81/DisableCopyOnReadDisableCopyOnRead0read_81_disablecopyonread_adam_v_dense_11_kernel"/device:CPU:0*
_output_shapes
 �
Read_81/ReadVariableOpReadVariableOp0read_81_disablecopyonread_adam_v_dense_11_kernel^Read_81/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�
*
dtype0q
Identity_162IdentityRead_81/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�
h
Identity_163IdentityIdentity_162:output:0"/device:CPU:0*
T0*
_output_shapes
:	�
�
Read_82/DisableCopyOnReadDisableCopyOnRead.read_82_disablecopyonread_adam_m_dense_11_bias"/device:CPU:0*
_output_shapes
 �
Read_82/ReadVariableOpReadVariableOp.read_82_disablecopyonread_adam_m_dense_11_bias^Read_82/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0l
Identity_164IdentityRead_82/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
c
Identity_165IdentityIdentity_164:output:0"/device:CPU:0*
T0*
_output_shapes
:
�
Read_83/DisableCopyOnReadDisableCopyOnRead.read_83_disablecopyonread_adam_v_dense_11_bias"/device:CPU:0*
_output_shapes
 �
Read_83/ReadVariableOpReadVariableOp.read_83_disablecopyonread_adam_v_dense_11_bias^Read_83/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0l
Identity_166IdentityRead_83/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
c
Identity_167IdentityIdentity_166:output:0"/device:CPU:0*
T0*
_output_shapes
:
v
Read_84/DisableCopyOnReadDisableCopyOnRead!read_84_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_84/ReadVariableOpReadVariableOp!read_84_disablecopyonread_total_1^Read_84/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_168IdentityRead_84/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_169IdentityIdentity_168:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_85/DisableCopyOnReadDisableCopyOnRead!read_85_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_85/ReadVariableOpReadVariableOp!read_85_disablecopyonread_count_1^Read_85/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_170IdentityRead_85/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_171IdentityIdentity_170:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_86/DisableCopyOnReadDisableCopyOnReadread_86_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_86/ReadVariableOpReadVariableOpread_86_disablecopyonread_total^Read_86/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_172IdentityRead_86/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_173IdentityIdentity_172:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_87/DisableCopyOnReadDisableCopyOnReadread_87_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_87/ReadVariableOpReadVariableOpread_87_disablecopyonread_count^Read_87/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_174IdentityRead_87/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_175IdentityIdentity_174:output:0"/device:CPU:0*
T0*
_output_shapes
: �!
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:Y*
dtype0*�!
value�!B�!YB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/45/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/46/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/47/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/48/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:Y*
dtype0*�
value�B�YB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0Identity_101:output:0Identity_103:output:0Identity_105:output:0Identity_107:output:0Identity_109:output:0Identity_111:output:0Identity_113:output:0Identity_115:output:0Identity_117:output:0Identity_119:output:0Identity_121:output:0Identity_123:output:0Identity_125:output:0Identity_127:output:0Identity_129:output:0Identity_131:output:0Identity_133:output:0Identity_135:output:0Identity_137:output:0Identity_139:output:0Identity_141:output:0Identity_143:output:0Identity_145:output:0Identity_147:output:0Identity_149:output:0Identity_151:output:0Identity_153:output:0Identity_155:output:0Identity_157:output:0Identity_159:output:0Identity_161:output:0Identity_163:output:0Identity_165:output:0Identity_167:output:0Identity_169:output:0Identity_171:output:0Identity_173:output:0Identity_175:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *g
dtypes]
[2Y	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_176Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_177IdentityIdentity_176:output:0^NoOp*
T0*
_output_shapes
: �$
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_50/DisableCopyOnRead^Read_50/ReadVariableOp^Read_51/DisableCopyOnRead^Read_51/ReadVariableOp^Read_52/DisableCopyOnRead^Read_52/ReadVariableOp^Read_53/DisableCopyOnRead^Read_53/ReadVariableOp^Read_54/DisableCopyOnRead^Read_54/ReadVariableOp^Read_55/DisableCopyOnRead^Read_55/ReadVariableOp^Read_56/DisableCopyOnRead^Read_56/ReadVariableOp^Read_57/DisableCopyOnRead^Read_57/ReadVariableOp^Read_58/DisableCopyOnRead^Read_58/ReadVariableOp^Read_59/DisableCopyOnRead^Read_59/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_60/DisableCopyOnRead^Read_60/ReadVariableOp^Read_61/DisableCopyOnRead^Read_61/ReadVariableOp^Read_62/DisableCopyOnRead^Read_62/ReadVariableOp^Read_63/DisableCopyOnRead^Read_63/ReadVariableOp^Read_64/DisableCopyOnRead^Read_64/ReadVariableOp^Read_65/DisableCopyOnRead^Read_65/ReadVariableOp^Read_66/DisableCopyOnRead^Read_66/ReadVariableOp^Read_67/DisableCopyOnRead^Read_67/ReadVariableOp^Read_68/DisableCopyOnRead^Read_68/ReadVariableOp^Read_69/DisableCopyOnRead^Read_69/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_70/DisableCopyOnRead^Read_70/ReadVariableOp^Read_71/DisableCopyOnRead^Read_71/ReadVariableOp^Read_72/DisableCopyOnRead^Read_72/ReadVariableOp^Read_73/DisableCopyOnRead^Read_73/ReadVariableOp^Read_74/DisableCopyOnRead^Read_74/ReadVariableOp^Read_75/DisableCopyOnRead^Read_75/ReadVariableOp^Read_76/DisableCopyOnRead^Read_76/ReadVariableOp^Read_77/DisableCopyOnRead^Read_77/ReadVariableOp^Read_78/DisableCopyOnRead^Read_78/ReadVariableOp^Read_79/DisableCopyOnRead^Read_79/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_80/DisableCopyOnRead^Read_80/ReadVariableOp^Read_81/DisableCopyOnRead^Read_81/ReadVariableOp^Read_82/DisableCopyOnRead^Read_82/ReadVariableOp^Read_83/DisableCopyOnRead^Read_83/ReadVariableOp^Read_84/DisableCopyOnRead^Read_84/ReadVariableOp^Read_85/DisableCopyOnRead^Read_85/ReadVariableOp^Read_86/DisableCopyOnRead^Read_86/ReadVariableOp^Read_87/DisableCopyOnRead^Read_87/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "%
identity_177Identity_177:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp26
Read_45/DisableCopyOnReadRead_45/DisableCopyOnRead20
Read_45/ReadVariableOpRead_45/ReadVariableOp26
Read_46/DisableCopyOnReadRead_46/DisableCopyOnRead20
Read_46/ReadVariableOpRead_46/ReadVariableOp26
Read_47/DisableCopyOnReadRead_47/DisableCopyOnRead20
Read_47/ReadVariableOpRead_47/ReadVariableOp26
Read_48/DisableCopyOnReadRead_48/DisableCopyOnRead20
Read_48/ReadVariableOpRead_48/ReadVariableOp26
Read_49/DisableCopyOnReadRead_49/DisableCopyOnRead20
Read_49/ReadVariableOpRead_49/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp26
Read_50/DisableCopyOnReadRead_50/DisableCopyOnRead20
Read_50/ReadVariableOpRead_50/ReadVariableOp26
Read_51/DisableCopyOnReadRead_51/DisableCopyOnRead20
Read_51/ReadVariableOpRead_51/ReadVariableOp26
Read_52/DisableCopyOnReadRead_52/DisableCopyOnRead20
Read_52/ReadVariableOpRead_52/ReadVariableOp26
Read_53/DisableCopyOnReadRead_53/DisableCopyOnRead20
Read_53/ReadVariableOpRead_53/ReadVariableOp26
Read_54/DisableCopyOnReadRead_54/DisableCopyOnRead20
Read_54/ReadVariableOpRead_54/ReadVariableOp26
Read_55/DisableCopyOnReadRead_55/DisableCopyOnRead20
Read_55/ReadVariableOpRead_55/ReadVariableOp26
Read_56/DisableCopyOnReadRead_56/DisableCopyOnRead20
Read_56/ReadVariableOpRead_56/ReadVariableOp26
Read_57/DisableCopyOnReadRead_57/DisableCopyOnRead20
Read_57/ReadVariableOpRead_57/ReadVariableOp26
Read_58/DisableCopyOnReadRead_58/DisableCopyOnRead20
Read_58/ReadVariableOpRead_58/ReadVariableOp26
Read_59/DisableCopyOnReadRead_59/DisableCopyOnRead20
Read_59/ReadVariableOpRead_59/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp26
Read_60/DisableCopyOnReadRead_60/DisableCopyOnRead20
Read_60/ReadVariableOpRead_60/ReadVariableOp26
Read_61/DisableCopyOnReadRead_61/DisableCopyOnRead20
Read_61/ReadVariableOpRead_61/ReadVariableOp26
Read_62/DisableCopyOnReadRead_62/DisableCopyOnRead20
Read_62/ReadVariableOpRead_62/ReadVariableOp26
Read_63/DisableCopyOnReadRead_63/DisableCopyOnRead20
Read_63/ReadVariableOpRead_63/ReadVariableOp26
Read_64/DisableCopyOnReadRead_64/DisableCopyOnRead20
Read_64/ReadVariableOpRead_64/ReadVariableOp26
Read_65/DisableCopyOnReadRead_65/DisableCopyOnRead20
Read_65/ReadVariableOpRead_65/ReadVariableOp26
Read_66/DisableCopyOnReadRead_66/DisableCopyOnRead20
Read_66/ReadVariableOpRead_66/ReadVariableOp26
Read_67/DisableCopyOnReadRead_67/DisableCopyOnRead20
Read_67/ReadVariableOpRead_67/ReadVariableOp26
Read_68/DisableCopyOnReadRead_68/DisableCopyOnRead20
Read_68/ReadVariableOpRead_68/ReadVariableOp26
Read_69/DisableCopyOnReadRead_69/DisableCopyOnRead20
Read_69/ReadVariableOpRead_69/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp26
Read_70/DisableCopyOnReadRead_70/DisableCopyOnRead20
Read_70/ReadVariableOpRead_70/ReadVariableOp26
Read_71/DisableCopyOnReadRead_71/DisableCopyOnRead20
Read_71/ReadVariableOpRead_71/ReadVariableOp26
Read_72/DisableCopyOnReadRead_72/DisableCopyOnRead20
Read_72/ReadVariableOpRead_72/ReadVariableOp26
Read_73/DisableCopyOnReadRead_73/DisableCopyOnRead20
Read_73/ReadVariableOpRead_73/ReadVariableOp26
Read_74/DisableCopyOnReadRead_74/DisableCopyOnRead20
Read_74/ReadVariableOpRead_74/ReadVariableOp26
Read_75/DisableCopyOnReadRead_75/DisableCopyOnRead20
Read_75/ReadVariableOpRead_75/ReadVariableOp26
Read_76/DisableCopyOnReadRead_76/DisableCopyOnRead20
Read_76/ReadVariableOpRead_76/ReadVariableOp26
Read_77/DisableCopyOnReadRead_77/DisableCopyOnRead20
Read_77/ReadVariableOpRead_77/ReadVariableOp26
Read_78/DisableCopyOnReadRead_78/DisableCopyOnRead20
Read_78/ReadVariableOpRead_78/ReadVariableOp26
Read_79/DisableCopyOnReadRead_79/DisableCopyOnRead20
Read_79/ReadVariableOpRead_79/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp26
Read_80/DisableCopyOnReadRead_80/DisableCopyOnRead20
Read_80/ReadVariableOpRead_80/ReadVariableOp26
Read_81/DisableCopyOnReadRead_81/DisableCopyOnRead20
Read_81/ReadVariableOpRead_81/ReadVariableOp26
Read_82/DisableCopyOnReadRead_82/DisableCopyOnRead20
Read_82/ReadVariableOpRead_82/ReadVariableOp26
Read_83/DisableCopyOnReadRead_83/DisableCopyOnRead20
Read_83/ReadVariableOpRead_83/ReadVariableOp26
Read_84/DisableCopyOnReadRead_84/DisableCopyOnRead20
Read_84/ReadVariableOpRead_84/ReadVariableOp26
Read_85/DisableCopyOnReadRead_85/DisableCopyOnRead20
Read_85/ReadVariableOpRead_85/ReadVariableOp26
Read_86/DisableCopyOnReadRead_86/DisableCopyOnRead20
Read_86/ReadVariableOpRead_86/ReadVariableOp26
Read_87/DisableCopyOnReadRead_87/DisableCopyOnRead20
Read_87/ReadVariableOpRead_87/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:0,
*
_user_specified_nameconv2d_25/kernel:.*
(
_user_specified_nameconv2d_25/bias:<8
6
_user_specified_namebatch_normalization_25/gamma:;7
5
_user_specified_namebatch_normalization_25/beta:B>
<
_user_specified_name$"batch_normalization_25/moving_mean:FB
@
_user_specified_name(&batch_normalization_25/moving_variance:0,
*
_user_specified_nameconv2d_26/kernel:.*
(
_user_specified_nameconv2d_26/bias:<	8
6
_user_specified_namebatch_normalization_26/gamma:;
7
5
_user_specified_namebatch_normalization_26/beta:B>
<
_user_specified_name$"batch_normalization_26/moving_mean:FB
@
_user_specified_name(&batch_normalization_26/moving_variance:0,
*
_user_specified_nameconv2d_27/kernel:.*
(
_user_specified_nameconv2d_27/bias:<8
6
_user_specified_namebatch_normalization_27/gamma:;7
5
_user_specified_namebatch_normalization_27/beta:B>
<
_user_specified_name$"batch_normalization_27/moving_mean:FB
@
_user_specified_name(&batch_normalization_27/moving_variance:0,
*
_user_specified_nameconv2d_28/kernel:.*
(
_user_specified_nameconv2d_28/bias:<8
6
_user_specified_namebatch_normalization_28/gamma:;7
5
_user_specified_namebatch_normalization_28/beta:B>
<
_user_specified_name$"batch_normalization_28/moving_mean:FB
@
_user_specified_name(&batch_normalization_28/moving_variance:0,
*
_user_specified_nameconv2d_29/kernel:.*
(
_user_specified_nameconv2d_29/bias:<8
6
_user_specified_namebatch_normalization_29/gamma:;7
5
_user_specified_namebatch_normalization_29/beta:B>
<
_user_specified_name$"batch_normalization_29/moving_mean:FB
@
_user_specified_name(&batch_normalization_29/moving_variance:/+
)
_user_specified_namedense_10/kernel:- )
'
_user_specified_namedense_10/bias:/!+
)
_user_specified_namedense_11/kernel:-")
'
_user_specified_namedense_11/bias:)#%
#
_user_specified_name	iteration:-$)
'
_user_specified_namelearning_rate:7%3
1
_user_specified_nameAdam/m/conv2d_25/kernel:7&3
1
_user_specified_nameAdam/v/conv2d_25/kernel:5'1
/
_user_specified_nameAdam/m/conv2d_25/bias:5(1
/
_user_specified_nameAdam/v/conv2d_25/bias:C)?
=
_user_specified_name%#Adam/m/batch_normalization_25/gamma:C*?
=
_user_specified_name%#Adam/v/batch_normalization_25/gamma:B+>
<
_user_specified_name$"Adam/m/batch_normalization_25/beta:B,>
<
_user_specified_name$"Adam/v/batch_normalization_25/beta:7-3
1
_user_specified_nameAdam/m/conv2d_26/kernel:7.3
1
_user_specified_nameAdam/v/conv2d_26/kernel:5/1
/
_user_specified_nameAdam/m/conv2d_26/bias:501
/
_user_specified_nameAdam/v/conv2d_26/bias:C1?
=
_user_specified_name%#Adam/m/batch_normalization_26/gamma:C2?
=
_user_specified_name%#Adam/v/batch_normalization_26/gamma:B3>
<
_user_specified_name$"Adam/m/batch_normalization_26/beta:B4>
<
_user_specified_name$"Adam/v/batch_normalization_26/beta:753
1
_user_specified_nameAdam/m/conv2d_27/kernel:763
1
_user_specified_nameAdam/v/conv2d_27/kernel:571
/
_user_specified_nameAdam/m/conv2d_27/bias:581
/
_user_specified_nameAdam/v/conv2d_27/bias:C9?
=
_user_specified_name%#Adam/m/batch_normalization_27/gamma:C:?
=
_user_specified_name%#Adam/v/batch_normalization_27/gamma:B;>
<
_user_specified_name$"Adam/m/batch_normalization_27/beta:B<>
<
_user_specified_name$"Adam/v/batch_normalization_27/beta:7=3
1
_user_specified_nameAdam/m/conv2d_28/kernel:7>3
1
_user_specified_nameAdam/v/conv2d_28/kernel:5?1
/
_user_specified_nameAdam/m/conv2d_28/bias:5@1
/
_user_specified_nameAdam/v/conv2d_28/bias:CA?
=
_user_specified_name%#Adam/m/batch_normalization_28/gamma:CB?
=
_user_specified_name%#Adam/v/batch_normalization_28/gamma:BC>
<
_user_specified_name$"Adam/m/batch_normalization_28/beta:BD>
<
_user_specified_name$"Adam/v/batch_normalization_28/beta:7E3
1
_user_specified_nameAdam/m/conv2d_29/kernel:7F3
1
_user_specified_nameAdam/v/conv2d_29/kernel:5G1
/
_user_specified_nameAdam/m/conv2d_29/bias:5H1
/
_user_specified_nameAdam/v/conv2d_29/bias:CI?
=
_user_specified_name%#Adam/m/batch_normalization_29/gamma:CJ?
=
_user_specified_name%#Adam/v/batch_normalization_29/gamma:BK>
<
_user_specified_name$"Adam/m/batch_normalization_29/beta:BL>
<
_user_specified_name$"Adam/v/batch_normalization_29/beta:6M2
0
_user_specified_nameAdam/m/dense_10/kernel:6N2
0
_user_specified_nameAdam/v/dense_10/kernel:4O0
.
_user_specified_nameAdam/m/dense_10/bias:4P0
.
_user_specified_nameAdam/v/dense_10/bias:6Q2
0
_user_specified_nameAdam/m/dense_11/kernel:6R2
0
_user_specified_nameAdam/v/dense_11/kernel:4S0
.
_user_specified_nameAdam/m/dense_11/bias:4T0
.
_user_specified_nameAdam/v/dense_11/bias:'U#
!
_user_specified_name	total_1:'V#
!
_user_specified_name	count_1:%W!

_user_specified_nametotal:%X!

_user_specified_namecount:=Y9

_output_shapes
: 

_user_specified_nameConst
�
E
)__inference_re_lu_26_layer_call_fn_369480

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_re_lu_26_layer_call_and_return_conditional_losses_368212h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� :W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�

e
F__inference_dropout_23_layer_call_and_return_conditional_losses_369922

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_26_layer_call_and_return_conditional_losses_369457

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
G
+__inference_dropout_23_layer_call_fn_369910

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dropout_23_layer_call_and_return_conditional_losses_368746a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
M
1__inference_max_pooling2d_17_layer_call_fn_369837

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_368146�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
K
#__inference__update_step_xla_369263
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
d
F__inference_dropout_23_layer_call_and_return_conditional_losses_369927

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
`
D__inference_re_lu_28_layer_call_and_return_conditional_losses_368286

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:���������@b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_368043

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
)__inference_dense_11_layer_call_fn_369936

inputs
unknown:	�

	unknown_0:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_368726o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:&"
 
_user_specified_name369930:&"
 
_user_specified_name369932
�
K
#__inference__update_step_xla_369198
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:D @

_output_shapes
: 
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
W
#__inference__update_step_xla_369188
gradient"
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
: : *
	_noinline(:P L
&
_output_shapes
: 
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�'
�
K__inference_cnn__modified_2_layer_call_and_return_conditional_losses_368887
input_1.
sequential_10_368816: "
sequential_10_368818: "
sequential_10_368820: "
sequential_10_368822: "
sequential_10_368824: "
sequential_10_368826: .
sequential_10_368828:  "
sequential_10_368830: "
sequential_10_368832: "
sequential_10_368834: "
sequential_10_368836: "
sequential_10_368838: .
sequential_10_368840: @"
sequential_10_368842:@"
sequential_10_368844:@"
sequential_10_368846:@"
sequential_10_368848:@"
sequential_10_368850:@.
sequential_10_368852:@@"
sequential_10_368854:@"
sequential_10_368856:@"
sequential_10_368858:@"
sequential_10_368860:@"
sequential_10_368862:@/
sequential_10_368864:@�#
sequential_10_368866:	�#
sequential_10_368868:	�#
sequential_10_368870:	�#
sequential_10_368872:	�#
sequential_10_368874:	�(
sequential_11_368877:
�	�#
sequential_11_368879:	�'
sequential_11_368881:	�
"
sequential_11_368883:

identity��%sequential_10/StatefulPartitionedCall�%sequential_11/StatefulPartitionedCall�
%sequential_10/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_10_368816sequential_10_368818sequential_10_368820sequential_10_368822sequential_10_368824sequential_10_368826sequential_10_368828sequential_10_368830sequential_10_368832sequential_10_368834sequential_10_368836sequential_10_368838sequential_10_368840sequential_10_368842sequential_10_368844sequential_10_368846sequential_10_368848sequential_10_368850sequential_10_368852sequential_10_368854sequential_10_368856sequential_10_368858sequential_10_368860sequential_10_368862sequential_10_368864sequential_10_368866sequential_10_368868sequential_10_368870sequential_10_368872sequential_10_368874**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_sequential_10_layer_call_and_return_conditional_losses_368347�
%sequential_11/StatefulPartitionedCallStatefulPartitionedCall.sequential_10/StatefulPartitionedCall:output:0sequential_11_368877sequential_11_368879sequential_11_368881sequential_11_368883*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_sequential_11_layer_call_and_return_conditional_losses_368733}
IdentityIdentity.sequential_11/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
r
NoOpNoOp&^sequential_10/StatefulPartitionedCall&^sequential_11/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2N
%sequential_10/StatefulPartitionedCall%sequential_10/StatefulPartitionedCall2N
%sequential_11/StatefulPartitionedCall%sequential_11/StatefulPartitionedCall:X T
/
_output_shapes
:���������
!
_user_specified_name	input_1:&"
 
_user_specified_name368816:&"
 
_user_specified_name368818:&"
 
_user_specified_name368820:&"
 
_user_specified_name368822:&"
 
_user_specified_name368824:&"
 
_user_specified_name368826:&"
 
_user_specified_name368828:&"
 
_user_specified_name368830:&	"
 
_user_specified_name368832:&
"
 
_user_specified_name368834:&"
 
_user_specified_name368836:&"
 
_user_specified_name368838:&"
 
_user_specified_name368840:&"
 
_user_specified_name368842:&"
 
_user_specified_name368844:&"
 
_user_specified_name368846:&"
 
_user_specified_name368848:&"
 
_user_specified_name368850:&"
 
_user_specified_name368852:&"
 
_user_specified_name368854:&"
 
_user_specified_name368856:&"
 
_user_specified_name368858:&"
 
_user_specified_name368860:&"
 
_user_specified_name368862:&"
 
_user_specified_name368864:&"
 
_user_specified_name368866:&"
 
_user_specified_name368868:&"
 
_user_specified_name368870:&"
 
_user_specified_name368872:&"
 
_user_specified_name368874:&"
 
_user_specified_name368877:& "
 
_user_specified_name368879:&!"
 
_user_specified_name368881:&""
 
_user_specified_name368883
�
`
D__inference_re_lu_27_layer_call_and_return_conditional_losses_368256

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:���������@b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�

e
F__inference_dropout_20_layer_call_and_return_conditional_losses_369517

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:��������� Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:��������� *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:��������� T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:��������� i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� :W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
W
#__inference__update_step_xla_369208
gradient"
variable:  *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:  : *
	_noinline(:P L
&
_output_shapes
:  
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
E
)__inference_re_lu_29_layer_call_fn_369827

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_re_lu_29_layer_call_and_return_conditional_losses_368330i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
7__inference_batch_normalization_29_layer_call_fn_369786

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_368115�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:&"
 
_user_specified_name369776:&"
 
_user_specified_name369778:&"
 
_user_specified_name369780:&"
 
_user_specified_name369782
�

e
F__inference_dropout_20_layer_call_and_return_conditional_losses_368226

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:��������� Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:��������� *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:��������� T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:��������� i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� :W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
h
L__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_367940

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
`
D__inference_re_lu_25_layer_call_and_return_conditional_losses_369394

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:��������� b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� :W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
X
#__inference__update_step_xla_369268
gradient#
variable:@�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*(
_input_shapes
:@�: *
	_noinline(:Q M
'
_output_shapes
:@�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�n
�
I__inference_sequential_10_layer_call_and_return_conditional_losses_368347
conv2d_25_input*
conv2d_25_368164: 
conv2d_25_368166: +
batch_normalization_25_368169: +
batch_normalization_25_368171: +
batch_normalization_25_368173: +
batch_normalization_25_368175: *
conv2d_26_368194:  
conv2d_26_368196: +
batch_normalization_26_368199: +
batch_normalization_26_368201: +
batch_normalization_26_368203: +
batch_normalization_26_368205: *
conv2d_27_368238: @
conv2d_27_368240:@+
batch_normalization_27_368243:@+
batch_normalization_27_368245:@+
batch_normalization_27_368247:@+
batch_normalization_27_368249:@*
conv2d_28_368268:@@
conv2d_28_368270:@+
batch_normalization_28_368273:@+
batch_normalization_28_368275:@+
batch_normalization_28_368277:@+
batch_normalization_28_368279:@+
conv2d_29_368312:@�
conv2d_29_368314:	�,
batch_normalization_29_368317:	�,
batch_normalization_29_368319:	�,
batch_normalization_29_368321:	�,
batch_normalization_29_368323:	�
identity��.batch_normalization_25/StatefulPartitionedCall�.batch_normalization_26/StatefulPartitionedCall�.batch_normalization_27/StatefulPartitionedCall�.batch_normalization_28/StatefulPartitionedCall�.batch_normalization_29/StatefulPartitionedCall�!conv2d_25/StatefulPartitionedCall�!conv2d_26/StatefulPartitionedCall�!conv2d_27/StatefulPartitionedCall�!conv2d_28/StatefulPartitionedCall�!conv2d_29/StatefulPartitionedCall�"dropout_20/StatefulPartitionedCall�"dropout_21/StatefulPartitionedCall�"dropout_22/StatefulPartitionedCall�
!conv2d_25/StatefulPartitionedCallStatefulPartitionedCallconv2d_25_inputconv2d_25_368164conv2d_25_368166*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_25_layer_call_and_return_conditional_losses_368163�
.batch_normalization_25/StatefulPartitionedCallStatefulPartitionedCall*conv2d_25/StatefulPartitionedCall:output:0batch_normalization_25_368169batch_normalization_25_368171batch_normalization_25_368173batch_normalization_25_368175*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_25_layer_call_and_return_conditional_losses_367829�
re_lu_25/PartitionedCallPartitionedCall7batch_normalization_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_re_lu_25_layer_call_and_return_conditional_losses_368182�
!conv2d_26/StatefulPartitionedCallStatefulPartitionedCall!re_lu_25/PartitionedCall:output:0conv2d_26_368194conv2d_26_368196*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_26_layer_call_and_return_conditional_losses_368193�
.batch_normalization_26/StatefulPartitionedCallStatefulPartitionedCall*conv2d_26/StatefulPartitionedCall:output:0batch_normalization_26_368199batch_normalization_26_368201batch_normalization_26_368203batch_normalization_26_368205*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_26_layer_call_and_return_conditional_losses_367891�
re_lu_26/PartitionedCallPartitionedCall7batch_normalization_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_re_lu_26_layer_call_and_return_conditional_losses_368212�
 max_pooling2d_15/PartitionedCallPartitionedCall!re_lu_26/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_367940�
"dropout_20/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dropout_20_layer_call_and_return_conditional_losses_368226�
!conv2d_27/StatefulPartitionedCallStatefulPartitionedCall+dropout_20/StatefulPartitionedCall:output:0conv2d_27_368238conv2d_27_368240*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_27_layer_call_and_return_conditional_losses_368237�
.batch_normalization_27/StatefulPartitionedCallStatefulPartitionedCall*conv2d_27/StatefulPartitionedCall:output:0batch_normalization_27_368243batch_normalization_27_368245batch_normalization_27_368247batch_normalization_27_368249*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_367963�
re_lu_27/PartitionedCallPartitionedCall7batch_normalization_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_re_lu_27_layer_call_and_return_conditional_losses_368256�
!conv2d_28/StatefulPartitionedCallStatefulPartitionedCall!re_lu_27/PartitionedCall:output:0conv2d_28_368268conv2d_28_368270*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_28_layer_call_and_return_conditional_losses_368267�
.batch_normalization_28/StatefulPartitionedCallStatefulPartitionedCall*conv2d_28/StatefulPartitionedCall:output:0batch_normalization_28_368273batch_normalization_28_368275batch_normalization_28_368277batch_normalization_28_368279*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_368025�
re_lu_28/PartitionedCallPartitionedCall7batch_normalization_28/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_re_lu_28_layer_call_and_return_conditional_losses_368286�
 max_pooling2d_16/PartitionedCallPartitionedCall!re_lu_28/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_368074�
"dropout_21/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_16/PartitionedCall:output:0#^dropout_20/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dropout_21_layer_call_and_return_conditional_losses_368300�
!conv2d_29/StatefulPartitionedCallStatefulPartitionedCall+dropout_21/StatefulPartitionedCall:output:0conv2d_29_368312conv2d_29_368314*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_29_layer_call_and_return_conditional_losses_368311�
.batch_normalization_29/StatefulPartitionedCallStatefulPartitionedCall*conv2d_29/StatefulPartitionedCall:output:0batch_normalization_29_368317batch_normalization_29_368319batch_normalization_29_368321batch_normalization_29_368323*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_368097�
re_lu_29/PartitionedCallPartitionedCall7batch_normalization_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_re_lu_29_layer_call_and_return_conditional_losses_368330�
 max_pooling2d_17/PartitionedCallPartitionedCall!re_lu_29/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_368146�
"dropout_22/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_17/PartitionedCall:output:0#^dropout_21/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dropout_22_layer_call_and_return_conditional_losses_368344�
IdentityIdentity+dropout_22/StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:�����������
NoOpNoOp/^batch_normalization_25/StatefulPartitionedCall/^batch_normalization_26/StatefulPartitionedCall/^batch_normalization_27/StatefulPartitionedCall/^batch_normalization_28/StatefulPartitionedCall/^batch_normalization_29/StatefulPartitionedCall"^conv2d_25/StatefulPartitionedCall"^conv2d_26/StatefulPartitionedCall"^conv2d_27/StatefulPartitionedCall"^conv2d_28/StatefulPartitionedCall"^conv2d_29/StatefulPartitionedCall#^dropout_20/StatefulPartitionedCall#^dropout_21/StatefulPartitionedCall#^dropout_22/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_25/StatefulPartitionedCall.batch_normalization_25/StatefulPartitionedCall2`
.batch_normalization_26/StatefulPartitionedCall.batch_normalization_26/StatefulPartitionedCall2`
.batch_normalization_27/StatefulPartitionedCall.batch_normalization_27/StatefulPartitionedCall2`
.batch_normalization_28/StatefulPartitionedCall.batch_normalization_28/StatefulPartitionedCall2`
.batch_normalization_29/StatefulPartitionedCall.batch_normalization_29/StatefulPartitionedCall2F
!conv2d_25/StatefulPartitionedCall!conv2d_25/StatefulPartitionedCall2F
!conv2d_26/StatefulPartitionedCall!conv2d_26/StatefulPartitionedCall2F
!conv2d_27/StatefulPartitionedCall!conv2d_27/StatefulPartitionedCall2F
!conv2d_28/StatefulPartitionedCall!conv2d_28/StatefulPartitionedCall2F
!conv2d_29/StatefulPartitionedCall!conv2d_29/StatefulPartitionedCall2H
"dropout_20/StatefulPartitionedCall"dropout_20/StatefulPartitionedCall2H
"dropout_21/StatefulPartitionedCall"dropout_21/StatefulPartitionedCall2H
"dropout_22/StatefulPartitionedCall"dropout_22/StatefulPartitionedCall:` \
/
_output_shapes
:���������
)
_user_specified_nameconv2d_25_input:&"
 
_user_specified_name368164:&"
 
_user_specified_name368166:&"
 
_user_specified_name368169:&"
 
_user_specified_name368171:&"
 
_user_specified_name368173:&"
 
_user_specified_name368175:&"
 
_user_specified_name368194:&"
 
_user_specified_name368196:&	"
 
_user_specified_name368199:&
"
 
_user_specified_name368201:&"
 
_user_specified_name368203:&"
 
_user_specified_name368205:&"
 
_user_specified_name368238:&"
 
_user_specified_name368240:&"
 
_user_specified_name368243:&"
 
_user_specified_name368245:&"
 
_user_specified_name368247:&"
 
_user_specified_name368249:&"
 
_user_specified_name368268:&"
 
_user_specified_name368270:&"
 
_user_specified_name368273:&"
 
_user_specified_name368275:&"
 
_user_specified_name368277:&"
 
_user_specified_name368279:&"
 
_user_specified_name368312:&"
 
_user_specified_name368314:&"
 
_user_specified_name368317:&"
 
_user_specified_name368319:&"
 
_user_specified_name368321:&"
 
_user_specified_name368323
�
h
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_368146

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
`
D__inference_re_lu_27_layer_call_and_return_conditional_losses_369613

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:���������@b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_369694

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
K
#__inference__update_step_xla_369218
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:D @

_output_shapes
: 
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�
�
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_369603

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
h
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_369714

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_369822

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

�
D__inference_dense_10_layer_call_and_return_conditional_losses_369900

inputs2
matmul_readvariableop_resource:
�	�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
�	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������	
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
a
E__inference_flatten_5_layer_call_and_return_conditional_losses_369880

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������	Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
E
)__inference_re_lu_27_layer_call_fn_369608

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_re_lu_27_layer_call_and_return_conditional_losses_368256h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
L
#__inference__update_step_xla_369278
gradient
variable:	�*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
	:�: *
	_noinline(:E A

_output_shapes	
:�
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
�

�
E__inference_conv2d_29_layer_call_and_return_conditional_losses_369760

inputs9
conv2d_readvariableop_resource:@�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������h
IdentityIdentityBiasAdd:output:0^NoOp*
T0*0
_output_shapes
:����������S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_368097

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_369676

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
*__inference_conv2d_28_layer_call_fn_369622

inputs!
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_28_layer_call_and_return_conditional_losses_368267w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs:&"
 
_user_specified_name369616:&"
 
_user_specified_name369618
�
�
R__inference_batch_normalization_26_layer_call_and_return_conditional_losses_367909

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
C
input_18
serving_default_input_1:0���������<
output_10
StatefulPartitionedCall:0���������
tensorflow/serving/predict:��
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

conv_layer
	fc_layer

	optimizer

signatures"
_tf_keras_model
�
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
 20
!21
"22
#23
$24
%25
&26
'27
(28
)29
*30
+31
,32
-33"
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
8
9
10
11
12
13
 14
!15
$16
%17
&18
'19
*20
+21
,22
-23"
trackable_list_wrapper
 "
trackable_list_wrapper
�
.non_trainable_variables

/layers
0metrics
1layer_regularization_losses
2layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
3trace_0
4trace_12�
0__inference_cnn__modified_2_layer_call_fn_369034
0__inference_cnn__modified_2_layer_call_fn_369107�
���
FullArgSpec
args�
jx
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z3trace_0z4trace_1
�
5trace_0
6trace_12�
K__inference_cnn__modified_2_layer_call_and_return_conditional_losses_368887
K__inference_cnn__modified_2_layer_call_and_return_conditional_losses_368961�
���
FullArgSpec
args�
jx
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z5trace_0z6trace_1
�B�
!__inference__wrapped_model_367811input_1"�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
7layer_with_weights-0
7layer-0
8layer_with_weights-1
8layer-1
9layer-2
:layer_with_weights-2
:layer-3
;layer_with_weights-3
;layer-4
<layer-5
=layer-6
>layer-7
?layer_with_weights-4
?layer-8
@layer_with_weights-5
@layer-9
Alayer-10
Blayer_with_weights-6
Blayer-11
Clayer_with_weights-7
Clayer-12
Dlayer-13
Elayer-14
Flayer-15
Glayer_with_weights-8
Glayer-16
Hlayer_with_weights-9
Hlayer-17
Ilayer-18
Jlayer-19
Klayer-20
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses"
_tf_keras_sequential
�
Rlayer-0
Slayer_with_weights-0
Slayer-1
Tlayer-2
Ulayer_with_weights-1
Ulayer-3
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses"
_tf_keras_sequential
�
\
_variables
]_iterations
^_learning_rate
__index_dict
`
_momentums
a_velocities
b_update_step_xla"
experimentalOptimizer
,
cserving_default"
signature_map
*:( 2conv2d_25/kernel
: 2conv2d_25/bias
*:( 2batch_normalization_25/gamma
):' 2batch_normalization_25/beta
2:0  (2"batch_normalization_25/moving_mean
6:4  (2&batch_normalization_25/moving_variance
*:(  2conv2d_26/kernel
: 2conv2d_26/bias
*:( 2batch_normalization_26/gamma
):' 2batch_normalization_26/beta
2:0  (2"batch_normalization_26/moving_mean
6:4  (2&batch_normalization_26/moving_variance
*:( @2conv2d_27/kernel
:@2conv2d_27/bias
*:(@2batch_normalization_27/gamma
):'@2batch_normalization_27/beta
2:0@ (2"batch_normalization_27/moving_mean
6:4@ (2&batch_normalization_27/moving_variance
*:(@@2conv2d_28/kernel
:@2conv2d_28/bias
*:(@2batch_normalization_28/gamma
):'@2batch_normalization_28/beta
2:0@ (2"batch_normalization_28/moving_mean
6:4@ (2&batch_normalization_28/moving_variance
+:)@�2conv2d_29/kernel
:�2conv2d_29/bias
+:)�2batch_normalization_29/gamma
*:(�2batch_normalization_29/beta
3:1� (2"batch_normalization_29/moving_mean
7:5� (2&batch_normalization_29/moving_variance
#:!
�	�2dense_10/kernel
:�2dense_10/bias
": 	�
2dense_11/kernel
:
2dense_11/bias
f
0
1
2
3
4
5
"6
#7
(8
)9"
trackable_list_wrapper
.
0
	1"
trackable_list_wrapper
.
d0
e1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
0__inference_cnn__modified_2_layer_call_fn_369034input_1"�
���
FullArgSpec
args�
jx
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining
kwonlydefaults
 
annotations� *
 
�B�
0__inference_cnn__modified_2_layer_call_fn_369107input_1"�
���
FullArgSpec
args�
jx
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining
kwonlydefaults
 
annotations� *
 
�B�
K__inference_cnn__modified_2_layer_call_and_return_conditional_losses_368887input_1"�
���
FullArgSpec
args�
jx
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining
kwonlydefaults
 
annotations� *
 
�B�
K__inference_cnn__modified_2_layer_call_and_return_conditional_losses_368961input_1"�
���
FullArgSpec
args�
jx
varargs
 
varkw
 
defaults
 

kwonlyargs�

jtraining
kwonlydefaults
 
annotations� *
 
�
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses

kernel
bias
 l_jit_compiled_convolution_op"
_tf_keras_layer
�
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
q__call__
*r&call_and_return_all_conditional_losses
saxis
	gamma
beta
moving_mean
moving_variance"
_tf_keras_layer
�
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses"
_tf_keras_layer
�
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~__call__
*&call_and_return_all_conditional_losses

kernel
bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	gamma
beta
moving_mean
moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

kernel
bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	gamma
beta
moving_mean
moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

kernel
bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	 gamma
!beta
"moving_mean
#moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

$kernel
%bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	&gamma
'beta
(moving_mean
)moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
 20
!21
"22
#23
$24
%25
&26
'27
(28
)29"
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
8
9
10
11
12
13
 14
!15
$16
%17
&18
'19"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
.__inference_sequential_10_layer_call_fn_368512
.__inference_sequential_10_layer_call_fn_368577�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
I__inference_sequential_10_layer_call_and_return_conditional_losses_368347
I__inference_sequential_10_layer_call_and_return_conditional_losses_368447�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

*kernel
+bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

,kernel
-bias"
_tf_keras_layer
<
*0
+1
,2
-3"
trackable_list_wrapper
<
*0
+1
,2
-3"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
.__inference_sequential_11_layer_call_fn_368767
.__inference_sequential_11_layer_call_fn_368780�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
I__inference_sequential_11_layer_call_and_return_conditional_losses_368733
I__inference_sequential_11_layer_call_and_return_conditional_losses_368754�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
]0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44
�45
�46
�47
�48"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23"
trackable_list_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23"
trackable_list_wrapper
�
�trace_0
�trace_1
�trace_2
�trace_3
�trace_4
�trace_5
�trace_6
�trace_7
�trace_8
�trace_9
�trace_10
�trace_11
�trace_12
�trace_13
�trace_14
�trace_15
�trace_16
�trace_17
�trace_18
�trace_19
�trace_20
�trace_21
�trace_22
�trace_232�
#__inference__update_step_xla_369188
#__inference__update_step_xla_369193
#__inference__update_step_xla_369198
#__inference__update_step_xla_369203
#__inference__update_step_xla_369208
#__inference__update_step_xla_369213
#__inference__update_step_xla_369218
#__inference__update_step_xla_369223
#__inference__update_step_xla_369228
#__inference__update_step_xla_369233
#__inference__update_step_xla_369238
#__inference__update_step_xla_369243
#__inference__update_step_xla_369248
#__inference__update_step_xla_369253
#__inference__update_step_xla_369258
#__inference__update_step_xla_369263
#__inference__update_step_xla_369268
#__inference__update_step_xla_369273
#__inference__update_step_xla_369278
#__inference__update_step_xla_369283
#__inference__update_step_xla_369288
#__inference__update_step_xla_369293
#__inference__update_step_xla_369298
#__inference__update_step_xla_369303�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0z�trace_0z�trace_1z�trace_2z�trace_3z�trace_4z�trace_5z�trace_6z�trace_7z�trace_8z�trace_9z�trace_10z�trace_11z�trace_12z�trace_13z�trace_14z�trace_15z�trace_16z�trace_17z�trace_18z�trace_19z�trace_20z�trace_21z�trace_22z�trace_23
�B�
$__inference_signature_wrapper_369183input_1"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs�
	jinput_1
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_25_layer_call_fn_369312�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_conv2d_25_layer_call_and_return_conditional_losses_369322�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
<
0
1
2
3"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
m	variables
ntrainable_variables
oregularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
7__inference_batch_normalization_25_layer_call_fn_369335
7__inference_batch_normalization_25_layer_call_fn_369348�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
R__inference_batch_normalization_25_layer_call_and_return_conditional_losses_369366
R__inference_batch_normalization_25_layer_call_and_return_conditional_losses_369384�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_re_lu_25_layer_call_fn_369389�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_re_lu_25_layer_call_and_return_conditional_losses_369394�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
z	variables
{trainable_variables
|regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_26_layer_call_fn_369403�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_conv2d_26_layer_call_and_return_conditional_losses_369413�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
<
0
1
2
3"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
7__inference_batch_normalization_26_layer_call_fn_369426
7__inference_batch_normalization_26_layer_call_fn_369439�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
R__inference_batch_normalization_26_layer_call_and_return_conditional_losses_369457
R__inference_batch_normalization_26_layer_call_and_return_conditional_losses_369475�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_re_lu_26_layer_call_fn_369480�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_re_lu_26_layer_call_and_return_conditional_losses_369485�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
1__inference_max_pooling2d_15_layer_call_fn_369490�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
L__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_369495�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
+__inference_dropout_20_layer_call_fn_369500
+__inference_dropout_20_layer_call_fn_369505�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
F__inference_dropout_20_layer_call_and_return_conditional_losses_369517
F__inference_dropout_20_layer_call_and_return_conditional_losses_369522�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_27_layer_call_fn_369531�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_conv2d_27_layer_call_and_return_conditional_losses_369541�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
<
0
1
2
3"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
7__inference_batch_normalization_27_layer_call_fn_369554
7__inference_batch_normalization_27_layer_call_fn_369567�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_369585
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_369603�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_re_lu_27_layer_call_fn_369608�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_re_lu_27_layer_call_and_return_conditional_losses_369613�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_28_layer_call_fn_369622�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_conv2d_28_layer_call_and_return_conditional_losses_369632�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
<
 0
!1
"2
#3"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
7__inference_batch_normalization_28_layer_call_fn_369645
7__inference_batch_normalization_28_layer_call_fn_369658�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_369676
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_369694�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_re_lu_28_layer_call_fn_369699�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_re_lu_28_layer_call_and_return_conditional_losses_369704�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
1__inference_max_pooling2d_16_layer_call_fn_369709�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_369714�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
+__inference_dropout_21_layer_call_fn_369719
+__inference_dropout_21_layer_call_fn_369724�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
F__inference_dropout_21_layer_call_and_return_conditional_losses_369736
F__inference_dropout_21_layer_call_and_return_conditional_losses_369741�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_29_layer_call_fn_369750�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_conv2d_29_layer_call_and_return_conditional_losses_369760�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
<
&0
'1
(2
)3"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
7__inference_batch_normalization_29_layer_call_fn_369773
7__inference_batch_normalization_29_layer_call_fn_369786�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_369804
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_369822�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_re_lu_29_layer_call_fn_369827�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_re_lu_29_layer_call_and_return_conditional_losses_369832�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
1__inference_max_pooling2d_17_layer_call_fn_369837�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_369842�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
+__inference_dropout_22_layer_call_fn_369847
+__inference_dropout_22_layer_call_fn_369852�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
F__inference_dropout_22_layer_call_and_return_conditional_losses_369864
F__inference_dropout_22_layer_call_and_return_conditional_losses_369869�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
f
0
1
2
3
4
5
"6
#7
(8
)9"
trackable_list_wrapper
�
70
81
92
:3
;4
<5
=6
>7
?8
@9
A10
B11
C12
D13
E14
F15
G16
H17
I18
J19
K20"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
.__inference_sequential_10_layer_call_fn_368512conv2d_25_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
.__inference_sequential_10_layer_call_fn_368577conv2d_25_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_sequential_10_layer_call_and_return_conditional_losses_368347conv2d_25_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_sequential_10_layer_call_and_return_conditional_losses_368447conv2d_25_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_flatten_5_layer_call_fn_369874�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_flatten_5_layer_call_and_return_conditional_losses_369880�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_10_layer_call_fn_369889�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_dense_10_layer_call_and_return_conditional_losses_369900�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
+__inference_dropout_23_layer_call_fn_369905
+__inference_dropout_23_layer_call_fn_369910�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
F__inference_dropout_23_layer_call_and_return_conditional_losses_369922
F__inference_dropout_23_layer_call_and_return_conditional_losses_369927�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
.
,0
-1"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_11_layer_call_fn_369936�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_dense_11_layer_call_and_return_conditional_losses_369947�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
<
R0
S1
T2
U3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
.__inference_sequential_11_layer_call_fn_368767flatten_5_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
.__inference_sequential_11_layer_call_fn_368780flatten_5_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_sequential_11_layer_call_and_return_conditional_losses_368733flatten_5_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_sequential_11_layer_call_and_return_conditional_losses_368754flatten_5_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
/:- 2Adam/m/conv2d_25/kernel
/:- 2Adam/v/conv2d_25/kernel
!: 2Adam/m/conv2d_25/bias
!: 2Adam/v/conv2d_25/bias
/:- 2#Adam/m/batch_normalization_25/gamma
/:- 2#Adam/v/batch_normalization_25/gamma
.:, 2"Adam/m/batch_normalization_25/beta
.:, 2"Adam/v/batch_normalization_25/beta
/:-  2Adam/m/conv2d_26/kernel
/:-  2Adam/v/conv2d_26/kernel
!: 2Adam/m/conv2d_26/bias
!: 2Adam/v/conv2d_26/bias
/:- 2#Adam/m/batch_normalization_26/gamma
/:- 2#Adam/v/batch_normalization_26/gamma
.:, 2"Adam/m/batch_normalization_26/beta
.:, 2"Adam/v/batch_normalization_26/beta
/:- @2Adam/m/conv2d_27/kernel
/:- @2Adam/v/conv2d_27/kernel
!:@2Adam/m/conv2d_27/bias
!:@2Adam/v/conv2d_27/bias
/:-@2#Adam/m/batch_normalization_27/gamma
/:-@2#Adam/v/batch_normalization_27/gamma
.:,@2"Adam/m/batch_normalization_27/beta
.:,@2"Adam/v/batch_normalization_27/beta
/:-@@2Adam/m/conv2d_28/kernel
/:-@@2Adam/v/conv2d_28/kernel
!:@2Adam/m/conv2d_28/bias
!:@2Adam/v/conv2d_28/bias
/:-@2#Adam/m/batch_normalization_28/gamma
/:-@2#Adam/v/batch_normalization_28/gamma
.:,@2"Adam/m/batch_normalization_28/beta
.:,@2"Adam/v/batch_normalization_28/beta
0:.@�2Adam/m/conv2d_29/kernel
0:.@�2Adam/v/conv2d_29/kernel
": �2Adam/m/conv2d_29/bias
": �2Adam/v/conv2d_29/bias
0:.�2#Adam/m/batch_normalization_29/gamma
0:.�2#Adam/v/batch_normalization_29/gamma
/:-�2"Adam/m/batch_normalization_29/beta
/:-�2"Adam/v/batch_normalization_29/beta
(:&
�	�2Adam/m/dense_10/kernel
(:&
�	�2Adam/v/dense_10/kernel
!:�2Adam/m/dense_10/bias
!:�2Adam/v/dense_10/bias
':%	�
2Adam/m/dense_11/kernel
':%	�
2Adam/v/dense_11/kernel
 :
2Adam/m/dense_11/bias
 :
2Adam/v/dense_11/bias
�B�
#__inference__update_step_xla_369188gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_369193gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_369198gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_369203gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_369208gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_369213gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_369218gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_369223gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_369228gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_369233gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_369238gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_369243gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_369248gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_369253gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_369258gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_369263gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_369268gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_369273gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_369278gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_369283gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_369288gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_369293gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_369298gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference__update_step_xla_369303gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
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
�B�
*__inference_conv2d_25_layer_call_fn_369312inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_conv2d_25_layer_call_and_return_conditional_losses_369322inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
7__inference_batch_normalization_25_layer_call_fn_369335inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
7__inference_batch_normalization_25_layer_call_fn_369348inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_25_layer_call_and_return_conditional_losses_369366inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_25_layer_call_and_return_conditional_losses_369384inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
)__inference_re_lu_25_layer_call_fn_369389inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_re_lu_25_layer_call_and_return_conditional_losses_369394inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
*__inference_conv2d_26_layer_call_fn_369403inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_conv2d_26_layer_call_and_return_conditional_losses_369413inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
7__inference_batch_normalization_26_layer_call_fn_369426inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
7__inference_batch_normalization_26_layer_call_fn_369439inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_26_layer_call_and_return_conditional_losses_369457inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_26_layer_call_and_return_conditional_losses_369475inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
)__inference_re_lu_26_layer_call_fn_369480inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_re_lu_26_layer_call_and_return_conditional_losses_369485inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
1__inference_max_pooling2d_15_layer_call_fn_369490inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_369495inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
+__inference_dropout_20_layer_call_fn_369500inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
+__inference_dropout_20_layer_call_fn_369505inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_dropout_20_layer_call_and_return_conditional_losses_369517inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_dropout_20_layer_call_and_return_conditional_losses_369522inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
*__inference_conv2d_27_layer_call_fn_369531inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_conv2d_27_layer_call_and_return_conditional_losses_369541inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
7__inference_batch_normalization_27_layer_call_fn_369554inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
7__inference_batch_normalization_27_layer_call_fn_369567inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_369585inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_369603inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
)__inference_re_lu_27_layer_call_fn_369608inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_re_lu_27_layer_call_and_return_conditional_losses_369613inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
*__inference_conv2d_28_layer_call_fn_369622inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_conv2d_28_layer_call_and_return_conditional_losses_369632inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
7__inference_batch_normalization_28_layer_call_fn_369645inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
7__inference_batch_normalization_28_layer_call_fn_369658inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_369676inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_369694inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
)__inference_re_lu_28_layer_call_fn_369699inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_re_lu_28_layer_call_and_return_conditional_losses_369704inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
1__inference_max_pooling2d_16_layer_call_fn_369709inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_369714inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
+__inference_dropout_21_layer_call_fn_369719inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
+__inference_dropout_21_layer_call_fn_369724inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_dropout_21_layer_call_and_return_conditional_losses_369736inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_dropout_21_layer_call_and_return_conditional_losses_369741inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
*__inference_conv2d_29_layer_call_fn_369750inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_conv2d_29_layer_call_and_return_conditional_losses_369760inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
7__inference_batch_normalization_29_layer_call_fn_369773inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
7__inference_batch_normalization_29_layer_call_fn_369786inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_369804inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_369822inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
)__inference_re_lu_29_layer_call_fn_369827inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_re_lu_29_layer_call_and_return_conditional_losses_369832inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
1__inference_max_pooling2d_17_layer_call_fn_369837inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_369842inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
+__inference_dropout_22_layer_call_fn_369847inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
+__inference_dropout_22_layer_call_fn_369852inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_dropout_22_layer_call_and_return_conditional_losses_369864inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_dropout_22_layer_call_and_return_conditional_losses_369869inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
*__inference_flatten_5_layer_call_fn_369874inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_flatten_5_layer_call_and_return_conditional_losses_369880inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
)__inference_dense_10_layer_call_fn_369889inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_dense_10_layer_call_and_return_conditional_losses_369900inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
+__inference_dropout_23_layer_call_fn_369905inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
+__inference_dropout_23_layer_call_fn_369910inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_dropout_23_layer_call_and_return_conditional_losses_369922inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_dropout_23_layer_call_and_return_conditional_losses_369927inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
)__inference_dense_11_layer_call_fn_369936inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_dense_11_layer_call_and_return_conditional_losses_369947inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 �
#__inference__update_step_xla_369188~x�u
n�k
!�
gradient 
<�9	%�"
� 
�
p
` VariableSpec 
`������<
� "
 �
#__inference__update_step_xla_369193f`�]
V�S
�
gradient 
0�-	�
� 
�
p
` VariableSpec 
`������<
� "
 �
#__inference__update_step_xla_369198f`�]
V�S
�
gradient 
0�-	�
� 
�
p
` VariableSpec 
`������<
� "
 �
#__inference__update_step_xla_369203f`�]
V�S
�
gradient 
0�-	�
� 
�
p
` VariableSpec 
`������<
� "
 �
#__inference__update_step_xla_369208~x�u
n�k
!�
gradient  
<�9	%�"
�  
�
p
` VariableSpec 
`������<
� "
 �
#__inference__update_step_xla_369213f`�]
V�S
�
gradient 
0�-	�
� 
�
p
` VariableSpec 
`������<
� "
 �
#__inference__update_step_xla_369218f`�]
V�S
�
gradient 
0�-	�
� 
�
p
` VariableSpec 
`������<
� "
 �
#__inference__update_step_xla_369223f`�]
V�S
�
gradient 
0�-	�
� 
�
p
` VariableSpec 
`������<
� "
 �
#__inference__update_step_xla_369228~x�u
n�k
!�
gradient @
<�9	%�"
� @
�
p
` VariableSpec 
`������<
� "
 �
#__inference__update_step_xla_369233f`�]
V�S
�
gradient@
0�-	�
�@
�
p
` VariableSpec 
`������<
� "
 �
#__inference__update_step_xla_369238f`�]
V�S
�
gradient@
0�-	�
�@
�
p
` VariableSpec 
`������<
� "
 �
#__inference__update_step_xla_369243f`�]
V�S
�
gradient@
0�-	�
�@
�
p
` VariableSpec 
`������<
� "
 �
#__inference__update_step_xla_369248~x�u
n�k
!�
gradient@@
<�9	%�"
�@@
�
p
` VariableSpec 
`������<
� "
 �
#__inference__update_step_xla_369253f`�]
V�S
�
gradient@
0�-	�
�@
�
p
` VariableSpec 
`������<
� "
 �
#__inference__update_step_xla_369258f`�]
V�S
�
gradient@
0�-	�
�@
�
p
` VariableSpec 
`�͘���<
� "
 �
#__inference__update_step_xla_369263f`�]
V�S
�
gradient@
0�-	�
�@
�
p
` VariableSpec 
`�Θ���<
� "
 �
#__inference__update_step_xla_369268�z�w
p�m
"�
gradient@�
=�:	&�#
�@�
�
p
` VariableSpec 
`�͗���<
� "
 �
#__inference__update_step_xla_369273hb�_
X�U
�
gradient�
1�.	�
��
�
p
` VariableSpec 
`�����<
� "
 �
#__inference__update_step_xla_369278hb�_
X�U
�
gradient�
1�.	�
��
�
p
` VariableSpec 
`�ܘ���<
� "
 �
#__inference__update_step_xla_369283hb�_
X�U
�
gradient�
1�.	�
��
�
p
` VariableSpec 
`������<
� "
 �
#__inference__update_step_xla_369288rl�i
b�_
�
gradient
�	�
6�3	�
�
�	�
�
p
` VariableSpec 
`������<
� "
 �
#__inference__update_step_xla_369293hb�_
X�U
�
gradient�
1�.	�
��
�
p
` VariableSpec 
`������<
� "
 �
#__inference__update_step_xla_369298pj�g
`�]
�
gradient	�

5�2	�
�	�

�
p
` VariableSpec 
`������<
� "
 �
#__inference__update_step_xla_369303f`�]
V�S
�
gradient

0�-	�
�

�
p
` VariableSpec 
`������<
� "
 �
!__inference__wrapped_model_367811�" !"#$%&'()*+,-8�5
.�+
)�&
input_1���������
� "3�0
.
output_1"�
output_1���������
�
R__inference_batch_normalization_25_layer_call_and_return_conditional_losses_369366�Q�N
G�D
:�7
inputs+��������������������������� 
p

 
� "F�C
<�9
tensor_0+��������������������������� 
� �
R__inference_batch_normalization_25_layer_call_and_return_conditional_losses_369384�Q�N
G�D
:�7
inputs+��������������������������� 
p 

 
� "F�C
<�9
tensor_0+��������������������������� 
� �
7__inference_batch_normalization_25_layer_call_fn_369335�Q�N
G�D
:�7
inputs+��������������������������� 
p

 
� ";�8
unknown+��������������������������� �
7__inference_batch_normalization_25_layer_call_fn_369348�Q�N
G�D
:�7
inputs+��������������������������� 
p 

 
� ";�8
unknown+��������������������������� �
R__inference_batch_normalization_26_layer_call_and_return_conditional_losses_369457�Q�N
G�D
:�7
inputs+��������������������������� 
p

 
� "F�C
<�9
tensor_0+��������������������������� 
� �
R__inference_batch_normalization_26_layer_call_and_return_conditional_losses_369475�Q�N
G�D
:�7
inputs+��������������������������� 
p 

 
� "F�C
<�9
tensor_0+��������������������������� 
� �
7__inference_batch_normalization_26_layer_call_fn_369426�Q�N
G�D
:�7
inputs+��������������������������� 
p

 
� ";�8
unknown+��������������������������� �
7__inference_batch_normalization_26_layer_call_fn_369439�Q�N
G�D
:�7
inputs+��������������������������� 
p 

 
� ";�8
unknown+��������������������������� �
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_369585�Q�N
G�D
:�7
inputs+���������������������������@
p

 
� "F�C
<�9
tensor_0+���������������������������@
� �
R__inference_batch_normalization_27_layer_call_and_return_conditional_losses_369603�Q�N
G�D
:�7
inputs+���������������������������@
p 

 
� "F�C
<�9
tensor_0+���������������������������@
� �
7__inference_batch_normalization_27_layer_call_fn_369554�Q�N
G�D
:�7
inputs+���������������������������@
p

 
� ";�8
unknown+���������������������������@�
7__inference_batch_normalization_27_layer_call_fn_369567�Q�N
G�D
:�7
inputs+���������������������������@
p 

 
� ";�8
unknown+���������������������������@�
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_369676� !"#Q�N
G�D
:�7
inputs+���������������������������@
p

 
� "F�C
<�9
tensor_0+���������������������������@
� �
R__inference_batch_normalization_28_layer_call_and_return_conditional_losses_369694� !"#Q�N
G�D
:�7
inputs+���������������������������@
p 

 
� "F�C
<�9
tensor_0+���������������������������@
� �
7__inference_batch_normalization_28_layer_call_fn_369645� !"#Q�N
G�D
:�7
inputs+���������������������������@
p

 
� ";�8
unknown+���������������������������@�
7__inference_batch_normalization_28_layer_call_fn_369658� !"#Q�N
G�D
:�7
inputs+���������������������������@
p 

 
� ";�8
unknown+���������������������������@�
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_369804�&'()R�O
H�E
;�8
inputs,����������������������������
p

 
� "G�D
=�:
tensor_0,����������������������������
� �
R__inference_batch_normalization_29_layer_call_and_return_conditional_losses_369822�&'()R�O
H�E
;�8
inputs,����������������������������
p 

 
� "G�D
=�:
tensor_0,����������������������������
� �
7__inference_batch_normalization_29_layer_call_fn_369773�&'()R�O
H�E
;�8
inputs,����������������������������
p

 
� "<�9
unknown,�����������������������������
7__inference_batch_normalization_29_layer_call_fn_369786�&'()R�O
H�E
;�8
inputs,����������������������������
p 

 
� "<�9
unknown,�����������������������������
K__inference_cnn__modified_2_layer_call_and_return_conditional_losses_368887�" !"#$%&'()*+,-H�E
.�+
)�&
input_1���������
�

trainingp",�)
"�
tensor_0���������

� �
K__inference_cnn__modified_2_layer_call_and_return_conditional_losses_368961�" !"#$%&'()*+,-H�E
.�+
)�&
input_1���������
�

trainingp ",�)
"�
tensor_0���������

� �
0__inference_cnn__modified_2_layer_call_fn_369034�" !"#$%&'()*+,-H�E
.�+
)�&
input_1���������
�

trainingp"!�
unknown���������
�
0__inference_cnn__modified_2_layer_call_fn_369107�" !"#$%&'()*+,-H�E
.�+
)�&
input_1���������
�

trainingp "!�
unknown���������
�
E__inference_conv2d_25_layer_call_and_return_conditional_losses_369322s7�4
-�*
(�%
inputs���������
� "4�1
*�'
tensor_0��������� 
� �
*__inference_conv2d_25_layer_call_fn_369312h7�4
-�*
(�%
inputs���������
� ")�&
unknown��������� �
E__inference_conv2d_26_layer_call_and_return_conditional_losses_369413s7�4
-�*
(�%
inputs��������� 
� "4�1
*�'
tensor_0��������� 
� �
*__inference_conv2d_26_layer_call_fn_369403h7�4
-�*
(�%
inputs��������� 
� ")�&
unknown��������� �
E__inference_conv2d_27_layer_call_and_return_conditional_losses_369541s7�4
-�*
(�%
inputs��������� 
� "4�1
*�'
tensor_0���������@
� �
*__inference_conv2d_27_layer_call_fn_369531h7�4
-�*
(�%
inputs��������� 
� ")�&
unknown���������@�
E__inference_conv2d_28_layer_call_and_return_conditional_losses_369632s7�4
-�*
(�%
inputs���������@
� "4�1
*�'
tensor_0���������@
� �
*__inference_conv2d_28_layer_call_fn_369622h7�4
-�*
(�%
inputs���������@
� ")�&
unknown���������@�
E__inference_conv2d_29_layer_call_and_return_conditional_losses_369760t$%7�4
-�*
(�%
inputs���������@
� "5�2
+�(
tensor_0����������
� �
*__inference_conv2d_29_layer_call_fn_369750i$%7�4
-�*
(�%
inputs���������@
� "*�'
unknown�����������
D__inference_dense_10_layer_call_and_return_conditional_losses_369900e*+0�-
&�#
!�
inputs����������	
� "-�*
#� 
tensor_0����������
� �
)__inference_dense_10_layer_call_fn_369889Z*+0�-
&�#
!�
inputs����������	
� ""�
unknown�����������
D__inference_dense_11_layer_call_and_return_conditional_losses_369947d,-0�-
&�#
!�
inputs����������
� ",�)
"�
tensor_0���������

� �
)__inference_dense_11_layer_call_fn_369936Y,-0�-
&�#
!�
inputs����������
� "!�
unknown���������
�
F__inference_dropout_20_layer_call_and_return_conditional_losses_369517s;�8
1�.
(�%
inputs��������� 
p
� "4�1
*�'
tensor_0��������� 
� �
F__inference_dropout_20_layer_call_and_return_conditional_losses_369522s;�8
1�.
(�%
inputs��������� 
p 
� "4�1
*�'
tensor_0��������� 
� �
+__inference_dropout_20_layer_call_fn_369500h;�8
1�.
(�%
inputs��������� 
p
� ")�&
unknown��������� �
+__inference_dropout_20_layer_call_fn_369505h;�8
1�.
(�%
inputs��������� 
p 
� ")�&
unknown��������� �
F__inference_dropout_21_layer_call_and_return_conditional_losses_369736s;�8
1�.
(�%
inputs���������@
p
� "4�1
*�'
tensor_0���������@
� �
F__inference_dropout_21_layer_call_and_return_conditional_losses_369741s;�8
1�.
(�%
inputs���������@
p 
� "4�1
*�'
tensor_0���������@
� �
+__inference_dropout_21_layer_call_fn_369719h;�8
1�.
(�%
inputs���������@
p
� ")�&
unknown���������@�
+__inference_dropout_21_layer_call_fn_369724h;�8
1�.
(�%
inputs���������@
p 
� ")�&
unknown���������@�
F__inference_dropout_22_layer_call_and_return_conditional_losses_369864u<�9
2�/
)�&
inputs����������
p
� "5�2
+�(
tensor_0����������
� �
F__inference_dropout_22_layer_call_and_return_conditional_losses_369869u<�9
2�/
)�&
inputs����������
p 
� "5�2
+�(
tensor_0����������
� �
+__inference_dropout_22_layer_call_fn_369847j<�9
2�/
)�&
inputs����������
p
� "*�'
unknown�����������
+__inference_dropout_22_layer_call_fn_369852j<�9
2�/
)�&
inputs����������
p 
� "*�'
unknown�����������
F__inference_dropout_23_layer_call_and_return_conditional_losses_369922e4�1
*�'
!�
inputs����������
p
� "-�*
#� 
tensor_0����������
� �
F__inference_dropout_23_layer_call_and_return_conditional_losses_369927e4�1
*�'
!�
inputs����������
p 
� "-�*
#� 
tensor_0����������
� �
+__inference_dropout_23_layer_call_fn_369905Z4�1
*�'
!�
inputs����������
p
� ""�
unknown�����������
+__inference_dropout_23_layer_call_fn_369910Z4�1
*�'
!�
inputs����������
p 
� ""�
unknown�����������
E__inference_flatten_5_layer_call_and_return_conditional_losses_369880i8�5
.�+
)�&
inputs����������
� "-�*
#� 
tensor_0����������	
� �
*__inference_flatten_5_layer_call_fn_369874^8�5
.�+
)�&
inputs����������
� ""�
unknown����������	�
L__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_369495�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
1__inference_max_pooling2d_15_layer_call_fn_369490�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
L__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_369714�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
1__inference_max_pooling2d_16_layer_call_fn_369709�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
L__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_369842�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
1__inference_max_pooling2d_17_layer_call_fn_369837�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
D__inference_re_lu_25_layer_call_and_return_conditional_losses_369394o7�4
-�*
(�%
inputs��������� 
� "4�1
*�'
tensor_0��������� 
� �
)__inference_re_lu_25_layer_call_fn_369389d7�4
-�*
(�%
inputs��������� 
� ")�&
unknown��������� �
D__inference_re_lu_26_layer_call_and_return_conditional_losses_369485o7�4
-�*
(�%
inputs��������� 
� "4�1
*�'
tensor_0��������� 
� �
)__inference_re_lu_26_layer_call_fn_369480d7�4
-�*
(�%
inputs��������� 
� ")�&
unknown��������� �
D__inference_re_lu_27_layer_call_and_return_conditional_losses_369613o7�4
-�*
(�%
inputs���������@
� "4�1
*�'
tensor_0���������@
� �
)__inference_re_lu_27_layer_call_fn_369608d7�4
-�*
(�%
inputs���������@
� ")�&
unknown���������@�
D__inference_re_lu_28_layer_call_and_return_conditional_losses_369704o7�4
-�*
(�%
inputs���������@
� "4�1
*�'
tensor_0���������@
� �
)__inference_re_lu_28_layer_call_fn_369699d7�4
-�*
(�%
inputs���������@
� ")�&
unknown���������@�
D__inference_re_lu_29_layer_call_and_return_conditional_losses_369832q8�5
.�+
)�&
inputs����������
� "5�2
+�(
tensor_0����������
� �
)__inference_re_lu_29_layer_call_fn_369827f8�5
.�+
)�&
inputs����������
� "*�'
unknown�����������
I__inference_sequential_10_layer_call_and_return_conditional_losses_368347� !"#$%&'()H�E
>�;
1�.
conv2d_25_input���������
p

 
� "5�2
+�(
tensor_0����������
� �
I__inference_sequential_10_layer_call_and_return_conditional_losses_368447� !"#$%&'()H�E
>�;
1�.
conv2d_25_input���������
p 

 
� "5�2
+�(
tensor_0����������
� �
.__inference_sequential_10_layer_call_fn_368512� !"#$%&'()H�E
>�;
1�.
conv2d_25_input���������
p

 
� "*�'
unknown�����������
.__inference_sequential_10_layer_call_fn_368577� !"#$%&'()H�E
>�;
1�.
conv2d_25_input���������
p 

 
� "*�'
unknown�����������
I__inference_sequential_11_layer_call_and_return_conditional_losses_368733*+,-I�F
?�<
2�/
flatten_5_input����������
p

 
� ",�)
"�
tensor_0���������

� �
I__inference_sequential_11_layer_call_and_return_conditional_losses_368754*+,-I�F
?�<
2�/
flatten_5_input����������
p 

 
� ",�)
"�
tensor_0���������

� �
.__inference_sequential_11_layer_call_fn_368767t*+,-I�F
?�<
2�/
flatten_5_input����������
p

 
� "!�
unknown���������
�
.__inference_sequential_11_layer_call_fn_368780t*+,-I�F
?�<
2�/
flatten_5_input����������
p 

 
� "!�
unknown���������
�
$__inference_signature_wrapper_369183�" !"#$%&'()*+,-C�@
� 
9�6
4
input_1)�&
input_1���������"3�0
.
output_1"�
output_1���������
