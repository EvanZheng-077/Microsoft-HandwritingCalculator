´
Ó.ś.
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	
°
ApplyMomentum
var"T
accum"T
lr"T	
grad"T
momentum"T
out"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 

ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
s
	AssignAdd
ref"T

value"T

output_ref"T" 
Ttype:
2	"
use_lockingbool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
8
Const
output"dtype"
valuetensor"
dtypetype
ë
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)


Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)


Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
4
Fill
dims

value"T
output"T"	
Ttype
,
Floor
x"T
y"T"
Ttype:
2
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
2
L2Loss
t"T
output"T"
Ttype:
2
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
Ô
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
î
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
8
MergeSummary
inputs*N
summary"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	
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
6
Pow
x"T
y"T
z"T"
Ttype:

2	
L
PreventGradient

input"T
output"T"	
Ttype"
messagestring 

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
D
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
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

#SparseSoftmaxCrossEntropyWithLogits
features"T
labels"Tlabels	
loss"T
backprop"T"
Ttype:
2"
Tlabelstype0	:
2	
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	

TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.5.02
b'unknown'čĘ
~
image_inputPlaceholder*$
shape:˙˙˙˙˙˙˙˙˙*
dtype0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙
f
PlaceholderPlaceholder*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0	*
shape:˙˙˙˙˙˙˙˙˙

Placeholder_1Placeholder*
dtype0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
shape:˙˙˙˙˙˙˙˙˙
o
truncated_normal/shapeConst*%
valueB"             *
_output_shapes
:*
dtype0
Z
truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
\
truncated_normal/stddevConst*
valueB
 *ÍĚĚ=*
dtype0*
_output_shapes
: 
§
 truncated_normal/TruncatedNormalTruncatedNormaltruncated_normal/shape*&
_output_shapes
: *
seedą˙ĺ)*
T0*
seed2Ž*
dtype0

truncated_normal/mulMul truncated_normal/TruncatedNormaltruncated_normal/stddev*
T0*&
_output_shapes
: 
u
truncated_normalAddtruncated_normal/multruncated_normal/mean*
T0*&
_output_shapes
: 

Variable
VariableV2*
shared_name *
shape: *
dtype0*&
_output_shapes
: *
	container 
Ź
Variable/AssignAssignVariabletruncated_normal*
use_locking(*
T0*&
_output_shapes
: *
validate_shape(*
_class
loc:@Variable
q
Variable/readIdentityVariable*
_class
loc:@Variable*
T0*&
_output_shapes
: 
R
zerosConst*
dtype0*
_output_shapes
: *
valueB *    
v

Variable_1
VariableV2*
_output_shapes
: *
dtype0*
	container *
shape: *
shared_name 

Variable_1/AssignAssign
Variable_1zeros*
_class
loc:@Variable_1*
_output_shapes
: *
T0*
use_locking(*
validate_shape(
k
Variable_1/readIdentity
Variable_1*
_class
loc:@Variable_1*
T0*
_output_shapes
: 
q
truncated_normal_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"          @   
\
truncated_normal_1/meanConst*
valueB
 *    *
_output_shapes
: *
dtype0
^
truncated_normal_1/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *ÍĚĚ=
Ť
"truncated_normal_1/TruncatedNormalTruncatedNormaltruncated_normal_1/shape*&
_output_shapes
: @*
T0*
seed2Ž*
dtype0*
seedą˙ĺ)

truncated_normal_1/mulMul"truncated_normal_1/TruncatedNormaltruncated_normal_1/stddev*
T0*&
_output_shapes
: @
{
truncated_normal_1Addtruncated_normal_1/multruncated_normal_1/mean*
T0*&
_output_shapes
: @


Variable_2
VariableV2*
shared_name *
dtype0*
shape: @*&
_output_shapes
: @*
	container 
´
Variable_2/AssignAssign
Variable_2truncated_normal_1*
_class
loc:@Variable_2*
T0*&
_output_shapes
: @*
use_locking(*
validate_shape(
w
Variable_2/readIdentity
Variable_2*
T0*&
_output_shapes
: @*
_class
loc:@Variable_2
R
ConstConst*
dtype0*
valueB@*ÍĚĚ=*
_output_shapes
:@
v

Variable_3
VariableV2*
_output_shapes
:@*
	container *
shape:@*
shared_name *
dtype0

Variable_3/AssignAssign
Variable_3Const*
use_locking(*
validate_shape(*
T0*
_output_shapes
:@*
_class
loc:@Variable_3
k
Variable_3/readIdentity
Variable_3*
_class
loc:@Variable_3*
_output_shapes
:@*
T0
i
truncated_normal_2/shapeConst*
dtype0*
_output_shapes
:*
valueB"@     
\
truncated_normal_2/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    
^
truncated_normal_2/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *ÍĚĚ=
Ľ
"truncated_normal_2/TruncatedNormalTruncatedNormaltruncated_normal_2/shape*
seed2Ž*
dtype0* 
_output_shapes
:
Ŕ*
T0*
seedą˙ĺ)

truncated_normal_2/mulMul"truncated_normal_2/TruncatedNormaltruncated_normal_2/stddev* 
_output_shapes
:
Ŕ*
T0
u
truncated_normal_2Addtruncated_normal_2/multruncated_normal_2/mean* 
_output_shapes
:
Ŕ*
T0


Variable_4
VariableV2*
	container *
shape:
Ŕ* 
_output_shapes
:
Ŕ*
dtype0*
shared_name 
Ž
Variable_4/AssignAssign
Variable_4truncated_normal_2*
use_locking(*
T0*
_class
loc:@Variable_4*
validate_shape(* 
_output_shapes
:
Ŕ
q
Variable_4/readIdentity
Variable_4* 
_output_shapes
:
Ŕ*
_class
loc:@Variable_4*
T0
V
Const_1Const*
dtype0*
_output_shapes	
:*
valueB*ÍĚĚ=
x

Variable_5
VariableV2*
	container *
shared_name *
dtype0*
shape:*
_output_shapes	
:

Variable_5/AssignAssign
Variable_5Const_1*
T0*
_output_shapes	
:*
_class
loc:@Variable_5*
use_locking(*
validate_shape(
l
Variable_5/readIdentity
Variable_5*
_output_shapes	
:*
T0*
_class
loc:@Variable_5
i
truncated_normal_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"      
\
truncated_normal_3/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    
^
truncated_normal_3/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *ÍĚĚ=
¤
"truncated_normal_3/TruncatedNormalTruncatedNormaltruncated_normal_3/shape*
seedą˙ĺ)*
T0*
_output_shapes
:	*
dtype0*
seed2Ž

truncated_normal_3/mulMul"truncated_normal_3/TruncatedNormaltruncated_normal_3/stddev*
T0*
_output_shapes
:	
t
truncated_normal_3Addtruncated_normal_3/multruncated_normal_3/mean*
T0*
_output_shapes
:	


Variable_6
VariableV2*
	container *
shape:	*
shared_name *
dtype0*
_output_shapes
:	
­
Variable_6/AssignAssign
Variable_6truncated_normal_3*
_class
loc:@Variable_6*
_output_shapes
:	*
use_locking(*
T0*
validate_shape(
p
Variable_6/readIdentity
Variable_6*
T0*
_output_shapes
:	*
_class
loc:@Variable_6
T
Const_2Const*
dtype0*
_output_shapes
:*
valueB*ÍĚĚ=
v

Variable_7
VariableV2*
_output_shapes
:*
	container *
dtype0*
shape:*
shared_name 

Variable_7/AssignAssign
Variable_7Const_2*
validate_shape(*
_output_shapes
:*
use_locking(*
_class
loc:@Variable_7*
T0
k
Variable_7/readIdentity
Variable_7*
T0*
_class
loc:@Variable_7*
_output_shapes
:
Ô
Conv2DConv2Dimage_inputVariable/read*
T0*
	dilations
*
use_cudnn_on_gpu(*
data_formatNHWC*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
strides

|
BiasAddBiasAddConv2DVariable_1/read*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
data_formatNHWC
O
ReluReluBiasAdd*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
¤
MaxPoolMaxPoolRelu*
paddingSAME*
ksize
*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
strides
*
data_formatNHWC
Ô
Conv2D_1Conv2DMaxPoolVariable_2/read*
paddingSAME*
	dilations
*
use_cudnn_on_gpu(*
strides
*
data_formatNHWC*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@

	BiasAdd_1BiasAddConv2D_1Variable_3/read*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
data_formatNHWC*
T0
S
Relu_1Relu	BiasAdd_1*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
¨
	MaxPool_1MaxPoolRelu_1*
paddingSAME*
strides
*
data_formatNHWC*
ksize
*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
N
ShapeShape	MaxPool_1*
_output_shapes
:*
T0*
out_type0
]
strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
_
strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
_
strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ů
strided_sliceStridedSliceShapestrided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
ellipsis_mask *
_output_shapes
: *
Index0*

begin_mask *
shrink_axis_mask*
T0*
end_mask *
new_axis_mask 
R
Reshape/shape/1Const*
value
B :Ŕ*
dtype0*
_output_shapes
: 
o
Reshape/shapePackstrided_sliceReshape/shape/1*
T0*
_output_shapes
:*

axis *
N
m
ReshapeReshape	MaxPool_1Reshape/shape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ŕ*
T0*
Tshape0

MatMulMatMulReshapeVariable_4/read*
transpose_b( *
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( 
V
addAddMatMulVariable_5/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
F
Relu_2Reluadd*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
V
dropout/keep_probConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
S
dropout/ShapeShapeRelu_2*
out_type0*
T0*
_output_shapes
:
_
dropout/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *    
_
dropout/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
˘
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0*
seed2Ž*
T0*
seedą˙ĺ)
z
dropout/random_uniform/subSubdropout/random_uniform/maxdropout/random_uniform/min*
_output_shapes
: *
T0

dropout/random_uniform/mulMul$dropout/random_uniform/RandomUniformdropout/random_uniform/sub*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

dropout/random_uniformAdddropout/random_uniform/muldropout/random_uniform/min*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
p
dropout/addAdddropout/keep_probdropout/random_uniform*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
V
dropout/FloorFloordropout/add*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
d
dropout/divRealDivRelu_2dropout/keep_prob*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
a
dropout/mulMuldropout/divdropout/Floor*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

MatMul_1MatMuldropout/mulVariable_6/read*
transpose_a( *
T0*
transpose_b( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Y
add_1AddMatMul_1Variable_7/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
t
)SparseSoftmaxCrossEntropyWithLogits/ShapeShapePlaceholder*
out_type0*
T0	*
_output_shapes
:
Ň
GSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsadd_1Placeholder*
Tlabels0	*6
_output_shapes$
":˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
Q
Const_3Const*
dtype0*
_output_shapes
:*
valueB: 

MeanMeanGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsConst_3*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
Ö
Conv2D_2Conv2Dimage_inputVariable/read*
paddingSAME*
T0*
strides
*
use_cudnn_on_gpu(*
	dilations
*
data_formatNHWC*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

	BiasAdd_2BiasAddConv2D_2Variable_1/read*
data_formatNHWC*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
S
Relu_3Relu	BiasAdd_2*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
¨
	MaxPool_2MaxPoolRelu_3*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0*
strides
*
data_formatNHWC*
paddingSAME*
ksize

Ö
Conv2D_3Conv2D	MaxPool_2Variable_2/read*
use_cudnn_on_gpu(*
strides
*
data_formatNHWC*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0*
	dilations
*
paddingSAME

	BiasAdd_3BiasAddConv2D_3Variable_3/read*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
data_formatNHWC*
T0
S
Relu_4Relu	BiasAdd_3*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0
¨
	MaxPool_3MaxPoolRelu_4*
ksize
*
T0*
data_formatNHWC*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
paddingSAME*
strides

P
Shape_1Shape	MaxPool_3*
_output_shapes
:*
T0*
out_type0
_
strided_slice_1/stackConst*
_output_shapes
:*
valueB: *
dtype0
a
strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB:

strided_slice_1StridedSliceShape_1strided_slice_1/stackstrided_slice_1/stack_1strided_slice_1/stack_2*
_output_shapes
: *
Index0*

begin_mask *
T0*
shrink_axis_mask*
end_mask *
new_axis_mask *
ellipsis_mask 
T
Reshape_1/shape/1Const*
_output_shapes
: *
value
B :Ŕ*
dtype0
u
Reshape_1/shapePackstrided_slice_1Reshape_1/shape/1*
N*

axis *
T0*
_output_shapes
:
q
	Reshape_1Reshape	MaxPool_3Reshape_1/shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ŕ

MatMul_2MatMul	Reshape_1Variable_4/read*
T0*
transpose_a( *
transpose_b( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z
add_2AddMatMul_2Variable_5/read*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
H
Relu_5Reluadd_2*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

MatMul_3MatMulRelu_5Variable_6/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_b( *
transpose_a( 
Y
add_3AddMatMul_3Variable_7/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
V
predict_op/dimensionConst*
dtype0*
_output_shapes
: *
value	B :
~

predict_opArgMaxadd_3predict_op/dimension*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
T0*
output_type0	
B
L2LossL2LossVariable_4/read*
T0*
_output_shapes
: 
D
L2Loss_1L2LossVariable_5/read*
T0*
_output_shapes
: 
?
add_4AddL2LossL2Loss_1*
T0*
_output_shapes
: 
D
L2Loss_2L2LossVariable_6/read*
T0*
_output_shapes
: 
>
add_5Addadd_4L2Loss_2*
T0*
_output_shapes
: 
D
L2Loss_3L2LossVariable_7/read*
_output_shapes
: *
T0
>
add_6Addadd_5L2Loss_3*
_output_shapes
: *
T0
J
mul/xConst*
dtype0*
_output_shapes
: *
valueB
 *o:
9
mulMulmul/xadd_6*
_output_shapes
: *
T0
8
add_7AddMeanmul*
T0*
_output_shapes
: 
]
Variable_8/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *    
n

Variable_8
VariableV2*
	container *
shared_name *
shape: *
dtype0*
_output_shapes
: 
Ş
Variable_8/AssignAssign
Variable_8Variable_8/initial_value*
use_locking(*
validate_shape(*
_class
loc:@Variable_8*
_output_shapes
: *
T0
g
Variable_8/readIdentity
Variable_8*
_class
loc:@Variable_8*
_output_shapes
: *
T0
L
mul_1/yConst*
_output_shapes
: *
valueB
 *  B*
dtype0
G
mul_1MulVariable_8/readmul_1/y*
_output_shapes
: *
T0
c
ExponentialDecay/learning_rateConst*
_output_shapes
: *
valueB
 *
×#<*
dtype0
]
ExponentialDecay/Cast_1/xConst*
dtype0*
valueB	 :Ô*
_output_shapes
: 
j
ExponentialDecay/Cast_1CastExponentialDecay/Cast_1/x*
_output_shapes
: *

DstT0*

SrcT0
^
ExponentialDecay/Cast_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *33s?
d
ExponentialDecay/truedivRealDivmul_1ExponentialDecay/Cast_1*
T0*
_output_shapes
: 
Z
ExponentialDecay/FloorFloorExponentialDecay/truediv*
_output_shapes
: *
T0
o
ExponentialDecay/PowPowExponentialDecay/Cast_2/xExponentialDecay/Floor*
T0*
_output_shapes
: 
n
ExponentialDecayMulExponentialDecay/learning_rateExponentialDecay/Pow*
_output_shapes
: *
T0
R
gradients/ShapeConst*
dtype0*
_output_shapes
: *
valueB 
X
gradients/grad_ys_0Const*
_output_shapes
: *
valueB
 *  ?*
dtype0
]
gradients/FillFillgradients/Shapegradients/grad_ys_0*
_output_shapes
: *
T0
>
%gradients/add_7_grad/tuple/group_depsNoOp^gradients/Fill
ľ
-gradients/add_7_grad/tuple/control_dependencyIdentitygradients/Fill&^gradients/add_7_grad/tuple/group_deps*!
_class
loc:@gradients/Fill*
T0*
_output_shapes
: 
ˇ
/gradients/add_7_grad/tuple/control_dependency_1Identitygradients/Fill&^gradients/add_7_grad/tuple/group_deps*
T0*
_output_shapes
: *!
_class
loc:@gradients/Fill
k
!gradients/Mean_grad/Reshape/shapeConst*
dtype0*
valueB:*
_output_shapes
:
Ť
gradients/Mean_grad/ReshapeReshape-gradients/add_7_grad/tuple/control_dependency!gradients/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
 
gradients/Mean_grad/ShapeShapeGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
_output_shapes
:*
T0*
out_type0

gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*

Tmultiples0
˘
gradients/Mean_grad/Shape_1ShapeGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
_output_shapes
:*
out_type0*
T0
^
gradients/Mean_grad/Shape_2Const*
dtype0*
valueB *
_output_shapes
: 
c
gradients/Mean_grad/ConstConst*
dtype0*
valueB: *
_output_shapes
:

gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
T0*
	keep_dims( *

Tidx0*
_output_shapes
: 
e
gradients/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*

Tidx0*
	keep_dims( *
_output_shapes
: *
T0
_
gradients/Mean_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :

gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0*
_output_shapes
: 

gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
T0*
_output_shapes
: 
n
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

SrcT0*
_output_shapes
: *

DstT0

gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
v
gradients/mul_grad/MulMul/gradients/add_7_grad/tuple/control_dependency_1add_6*
_output_shapes
: *
T0
x
gradients/mul_grad/Mul_1Mul/gradients/add_7_grad/tuple/control_dependency_1mul/x*
_output_shapes
: *
T0
_
#gradients/mul_grad/tuple/group_depsNoOp^gradients/mul_grad/Mul^gradients/mul_grad/Mul_1
Á
+gradients/mul_grad/tuple/control_dependencyIdentitygradients/mul_grad/Mul$^gradients/mul_grad/tuple/group_deps*
T0*)
_class
loc:@gradients/mul_grad/Mul*
_output_shapes
: 
Ç
-gradients/mul_grad/tuple/control_dependency_1Identitygradients/mul_grad/Mul_1$^gradients/mul_grad/tuple/group_deps*+
_class!
loc:@gradients/mul_grad/Mul_1*
T0*
_output_shapes
: 

gradients/zeros_like	ZerosLikeISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
­
fgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*´
message¨ĽCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
°
egradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙
ą
agradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsgradients/Mean_grad/truedivegradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ţ
Zgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulagradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsfgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
]
%gradients/add_6_grad/tuple/group_depsNoOp.^gradients/mul_grad/tuple/control_dependency_1
Ţ
-gradients/add_6_grad/tuple/control_dependencyIdentity-gradients/mul_grad/tuple/control_dependency_1&^gradients/add_6_grad/tuple/group_deps*
_output_shapes
: *
T0*+
_class!
loc:@gradients/mul_grad/Mul_1
ŕ
/gradients/add_6_grad/tuple/control_dependency_1Identity-gradients/mul_grad/tuple/control_dependency_1&^gradients/add_6_grad/tuple/group_deps*+
_class!
loc:@gradients/mul_grad/Mul_1*
_output_shapes
: *
T0
b
gradients/add_1_grad/ShapeShapeMatMul_1*
out_type0*
_output_shapes
:*
T0
f
gradients/add_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:
ş
*gradients/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_1_grad/Shapegradients/add_1_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ç
gradients/add_1_grad/SumSumZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/add_1_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*

Tidx0*
T0

gradients/add_1_grad/ReshapeReshapegradients/add_1_grad/Sumgradients/add_1_grad/Shape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0
ë
gradients/add_1_grad/Sum_1SumZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/add_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *
T0*

Tidx0

gradients/add_1_grad/Reshape_1Reshapegradients/add_1_grad/Sum_1gradients/add_1_grad/Shape_1*
_output_shapes
:*
T0*
Tshape0
m
%gradients/add_1_grad/tuple/group_depsNoOp^gradients/add_1_grad/Reshape^gradients/add_1_grad/Reshape_1
â
-gradients/add_1_grad/tuple/control_dependencyIdentitygradients/add_1_grad/Reshape&^gradients/add_1_grad/tuple/group_deps*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*/
_class%
#!loc:@gradients/add_1_grad/Reshape
Ű
/gradients/add_1_grad/tuple/control_dependency_1Identitygradients/add_1_grad/Reshape_1&^gradients/add_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_1_grad/Reshape_1*
_output_shapes
:
]
%gradients/add_5_grad/tuple/group_depsNoOp.^gradients/add_6_grad/tuple/control_dependency
Ţ
-gradients/add_5_grad/tuple/control_dependencyIdentity-gradients/add_6_grad/tuple/control_dependency&^gradients/add_5_grad/tuple/group_deps*
_output_shapes
: *
T0*+
_class!
loc:@gradients/mul_grad/Mul_1
ŕ
/gradients/add_5_grad/tuple/control_dependency_1Identity-gradients/add_6_grad/tuple/control_dependency&^gradients/add_5_grad/tuple/group_deps*
T0*+
_class!
loc:@gradients/mul_grad/Mul_1*
_output_shapes
: 

gradients/L2Loss_3_grad/mulMulVariable_7/read/gradients/add_6_grad/tuple/control_dependency_1*
_output_shapes
:*
T0
Á
gradients/MatMul_1_grad/MatMulMatMul-gradients/add_1_grad/tuple/control_dependencyVariable_6/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
transpose_b(*
transpose_a( 
ś
 gradients/MatMul_1_grad/MatMul_1MatMuldropout/mul-gradients/add_1_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
_output_shapes
:	*
T0
t
(gradients/MatMul_1_grad/tuple/group_depsNoOp^gradients/MatMul_1_grad/MatMul!^gradients/MatMul_1_grad/MatMul_1
í
0gradients/MatMul_1_grad/tuple/control_dependencyIdentitygradients/MatMul_1_grad/MatMul)^gradients/MatMul_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_1_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ę
2gradients/MatMul_1_grad/tuple/control_dependency_1Identity gradients/MatMul_1_grad/MatMul_1)^gradients/MatMul_1_grad/tuple/group_deps*
_output_shapes
:	*
T0*3
_class)
'%loc:@gradients/MatMul_1_grad/MatMul_1
]
%gradients/add_4_grad/tuple/group_depsNoOp.^gradients/add_5_grad/tuple/control_dependency
Ţ
-gradients/add_4_grad/tuple/control_dependencyIdentity-gradients/add_5_grad/tuple/control_dependency&^gradients/add_4_grad/tuple/group_deps*
_output_shapes
: *
T0*+
_class!
loc:@gradients/mul_grad/Mul_1
ŕ
/gradients/add_4_grad/tuple/control_dependency_1Identity-gradients/add_5_grad/tuple/control_dependency&^gradients/add_4_grad/tuple/group_deps*
T0*+
_class!
loc:@gradients/mul_grad/Mul_1*
_output_shapes
: 

gradients/L2Loss_2_grad/mulMulVariable_6/read/gradients/add_5_grad/tuple/control_dependency_1*
_output_shapes
:	*
T0
Ĺ
gradients/AddNAddN/gradients/add_1_grad/tuple/control_dependency_1gradients/L2Loss_3_grad/mul*1
_class'
%#loc:@gradients/add_1_grad/Reshape_1*
T0*
_output_shapes
:*
N
k
 gradients/dropout/mul_grad/ShapeShapedropout/div*
out_type0*
_output_shapes
:*
T0
o
"gradients/dropout/mul_grad/Shape_1Shapedropout/Floor*
out_type0*
T0*
_output_shapes
:
Ě
0gradients/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/dropout/mul_grad/Shape"gradients/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

gradients/dropout/mul_grad/mulMul0gradients/MatMul_1_grad/tuple/control_dependencydropout/Floor*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ˇ
gradients/dropout/mul_grad/SumSumgradients/dropout/mul_grad/mul0gradients/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
°
"gradients/dropout/mul_grad/ReshapeReshapegradients/dropout/mul_grad/Sum gradients/dropout/mul_grad/Shape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0

 gradients/dropout/mul_grad/mul_1Muldropout/div0gradients/MatMul_1_grad/tuple/control_dependency*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
˝
 gradients/dropout/mul_grad/Sum_1Sum gradients/dropout/mul_grad/mul_12gradients/dropout/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
ś
$gradients/dropout/mul_grad/Reshape_1Reshape gradients/dropout/mul_grad/Sum_1"gradients/dropout/mul_grad/Shape_1*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

+gradients/dropout/mul_grad/tuple/group_depsNoOp#^gradients/dropout/mul_grad/Reshape%^gradients/dropout/mul_grad/Reshape_1
ű
3gradients/dropout/mul_grad/tuple/control_dependencyIdentity"gradients/dropout/mul_grad/Reshape,^gradients/dropout/mul_grad/tuple/group_deps*5
_class+
)'loc:@gradients/dropout/mul_grad/Reshape*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

5gradients/dropout/mul_grad/tuple/control_dependency_1Identity$gradients/dropout/mul_grad/Reshape_1,^gradients/dropout/mul_grad/tuple/group_deps*7
_class-
+)loc:@gradients/dropout/mul_grad/Reshape_1*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

gradients/L2Loss_grad/mulMulVariable_4/read-gradients/add_4_grad/tuple/control_dependency* 
_output_shapes
:
Ŕ*
T0

gradients/L2Loss_1_grad/mulMulVariable_5/read/gradients/add_4_grad/tuple/control_dependency_1*
T0*
_output_shapes	
:
Ń
gradients/AddN_1AddN2gradients/MatMul_1_grad/tuple/control_dependency_1gradients/L2Loss_2_grad/mul*
N*
T0*
_output_shapes
:	*3
_class)
'%loc:@gradients/MatMul_1_grad/MatMul_1
f
 gradients/dropout/div_grad/ShapeShapeRelu_2*
_output_shapes
:*
T0*
out_type0
e
"gradients/dropout/div_grad/Shape_1Const*
_output_shapes
: *
valueB *
dtype0
Ě
0gradients/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/dropout/div_grad/Shape"gradients/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
¨
"gradients/dropout/div_grad/RealDivRealDiv3gradients/dropout/mul_grad/tuple/control_dependencydropout/keep_prob*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ť
gradients/dropout/div_grad/SumSum"gradients/dropout/div_grad/RealDiv0gradients/dropout/div_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
°
"gradients/dropout/div_grad/ReshapeReshapegradients/dropout/div_grad/Sum gradients/dropout/div_grad/Shape*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Tshape0
`
gradients/dropout/div_grad/NegNegRelu_2*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

$gradients/dropout/div_grad/RealDiv_1RealDivgradients/dropout/div_grad/Negdropout/keep_prob*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

$gradients/dropout/div_grad/RealDiv_2RealDiv$gradients/dropout/div_grad/RealDiv_1dropout/keep_prob*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ł
gradients/dropout/div_grad/mulMul3gradients/dropout/mul_grad/tuple/control_dependency$gradients/dropout/div_grad/RealDiv_2*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ť
 gradients/dropout/div_grad/Sum_1Sumgradients/dropout/div_grad/mul2gradients/dropout/div_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
_output_shapes
:*
T0
¤
$gradients/dropout/div_grad/Reshape_1Reshape gradients/dropout/div_grad/Sum_1"gradients/dropout/div_grad/Shape_1*
_output_shapes
: *
Tshape0*
T0

+gradients/dropout/div_grad/tuple/group_depsNoOp#^gradients/dropout/div_grad/Reshape%^gradients/dropout/div_grad/Reshape_1
ű
3gradients/dropout/div_grad/tuple/control_dependencyIdentity"gradients/dropout/div_grad/Reshape,^gradients/dropout/div_grad/tuple/group_deps*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*5
_class+
)'loc:@gradients/dropout/div_grad/Reshape
ď
5gradients/dropout/div_grad/tuple/control_dependency_1Identity$gradients/dropout/div_grad/Reshape_1,^gradients/dropout/div_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dropout/div_grad/Reshape_1*
_output_shapes
: 

gradients/Relu_2_grad/ReluGradReluGrad3gradients/dropout/div_grad/tuple/control_dependencyRelu_2*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
^
gradients/add_grad/ShapeShapeMatMul*
T0*
_output_shapes
:*
out_type0
e
gradients/add_grad/Shape_1Const*
valueB:*
_output_shapes
:*
dtype0
´
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
§
gradients/add_grad/SumSumgradients/Relu_2_grad/ReluGrad(gradients/add_grad/BroadcastGradientArgs*
	keep_dims( *
_output_shapes
:*
T0*

Tidx0

gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
Tshape0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ť
gradients/add_grad/Sum_1Sumgradients/Relu_2_grad/ReluGrad*gradients/add_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
_output_shapes
:*
T0

gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
Tshape0*
T0*
_output_shapes	
:
g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
Ű
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/add_grad/Reshape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ô
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*
T0*
_output_shapes	
:*/
_class%
#!loc:@gradients/add_grad/Reshape_1
˝
gradients/MatMul_grad/MatMulMatMul+gradients/add_grad/tuple/control_dependencyVariable_4/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ŕ*
transpose_b(*
transpose_a( *
T0
Ż
gradients/MatMul_grad/MatMul_1MatMulReshape+gradients/add_grad/tuple/control_dependency*
T0*
transpose_b( * 
_output_shapes
:
Ŕ*
transpose_a(
n
&gradients/MatMul_grad/tuple/group_depsNoOp^gradients/MatMul_grad/MatMul^gradients/MatMul_grad/MatMul_1
ĺ
.gradients/MatMul_grad/tuple/control_dependencyIdentitygradients/MatMul_grad/MatMul'^gradients/MatMul_grad/tuple/group_deps*/
_class%
#!loc:@gradients/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ŕ*
T0
ă
0gradients/MatMul_grad/tuple/control_dependency_1Identitygradients/MatMul_grad/MatMul_1'^gradients/MatMul_grad/tuple/group_deps*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:
Ŕ
Ă
gradients/AddN_2AddNgradients/L2Loss_1_grad/mul-gradients/add_grad/tuple/control_dependency_1*
_output_shapes	
:*.
_class$
" loc:@gradients/L2Loss_1_grad/mul*
N*
T0
e
gradients/Reshape_grad/ShapeShape	MaxPool_1*
T0*
_output_shapes
:*
out_type0
ż
gradients/Reshape_grad/ReshapeReshape.gradients/MatMul_grad/tuple/control_dependencygradients/Reshape_grad/Shape*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
Tshape0*
T0
Ç
gradients/AddN_3AddNgradients/L2Loss_grad/mul0gradients/MatMul_grad/tuple/control_dependency_1*
T0*
N* 
_output_shapes
:
Ŕ*,
_class"
 loc:@gradients/L2Loss_grad/mul
ň
$gradients/MaxPool_1_grad/MaxPoolGradMaxPoolGradRelu_1	MaxPool_1gradients/Reshape_grad/Reshape*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
paddingSAME*
strides
*
ksize
*
T0*
data_formatNHWC

gradients/Relu_1_grad/ReluGradReluGrad$gradients/MaxPool_1_grad/MaxPoolGradRelu_1*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0

$gradients/BiasAdd_1_grad/BiasAddGradBiasAddGradgradients/Relu_1_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:@
y
)gradients/BiasAdd_1_grad/tuple/group_depsNoOp^gradients/Relu_1_grad/ReluGrad%^gradients/BiasAdd_1_grad/BiasAddGrad
ö
1gradients/BiasAdd_1_grad/tuple/control_dependencyIdentitygradients/Relu_1_grad/ReluGrad*^gradients/BiasAdd_1_grad/tuple/group_deps*1
_class'
%#loc:@gradients/Relu_1_grad/ReluGrad*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
ď
3gradients/BiasAdd_1_grad/tuple/control_dependency_1Identity$gradients/BiasAdd_1_grad/BiasAddGrad*^gradients/BiasAdd_1_grad/tuple/group_deps*7
_class-
+)loc:@gradients/BiasAdd_1_grad/BiasAddGrad*
_output_shapes
:@*
T0

gradients/Conv2D_1_grad/ShapeNShapeNMaxPoolVariable_2/read*
T0*
N*
out_type0* 
_output_shapes
::
v
gradients/Conv2D_1_grad/ConstConst*
dtype0*%
valueB"          @   *
_output_shapes
:
é
+gradients/Conv2D_1_grad/Conv2DBackpropInputConv2DBackpropInputgradients/Conv2D_1_grad/ShapeNVariable_2/read1gradients/BiasAdd_1_grad/tuple/control_dependency*
	dilations
*
T0*
use_cudnn_on_gpu(*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
data_formatNHWC*
paddingSAME*
strides

ž
,gradients/Conv2D_1_grad/Conv2DBackpropFilterConv2DBackpropFilterMaxPoolgradients/Conv2D_1_grad/Const1gradients/BiasAdd_1_grad/tuple/control_dependency*
data_formatNHWC*
strides
*
	dilations
*&
_output_shapes
: @*
paddingSAME*
use_cudnn_on_gpu(*
T0

(gradients/Conv2D_1_grad/tuple/group_depsNoOp,^gradients/Conv2D_1_grad/Conv2DBackpropInput-^gradients/Conv2D_1_grad/Conv2DBackpropFilter

0gradients/Conv2D_1_grad/tuple/control_dependencyIdentity+gradients/Conv2D_1_grad/Conv2DBackpropInput)^gradients/Conv2D_1_grad/tuple/group_deps*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0*>
_class4
20loc:@gradients/Conv2D_1_grad/Conv2DBackpropInput

2gradients/Conv2D_1_grad/tuple/control_dependency_1Identity,gradients/Conv2D_1_grad/Conv2DBackpropFilter)^gradients/Conv2D_1_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/Conv2D_1_grad/Conv2DBackpropFilter*&
_output_shapes
: @
ţ
"gradients/MaxPool_grad/MaxPoolGradMaxPoolGradReluMaxPool0gradients/Conv2D_1_grad/tuple/control_dependency*
strides
*
paddingSAME*
ksize
*
T0*
data_formatNHWC*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

gradients/Relu_grad/ReluGradReluGrad"gradients/MaxPool_grad/MaxPoolGradRelu*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

"gradients/BiasAdd_grad/BiasAddGradBiasAddGradgradients/Relu_grad/ReluGrad*
data_formatNHWC*
T0*
_output_shapes
: 
s
'gradients/BiasAdd_grad/tuple/group_depsNoOp^gradients/Relu_grad/ReluGrad#^gradients/BiasAdd_grad/BiasAddGrad
î
/gradients/BiasAdd_grad/tuple/control_dependencyIdentitygradients/Relu_grad/ReluGrad(^gradients/BiasAdd_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Relu_grad/ReluGrad*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
ç
1gradients/BiasAdd_grad/tuple/control_dependency_1Identity"gradients/BiasAdd_grad/BiasAddGrad(^gradients/BiasAdd_grad/tuple/group_deps*
_output_shapes
: *5
_class+
)'loc:@gradients/BiasAdd_grad/BiasAddGrad*
T0

gradients/Conv2D_grad/ShapeNShapeNimage_inputVariable/read*
N* 
_output_shapes
::*
out_type0*
T0
t
gradients/Conv2D_grad/ConstConst*%
valueB"             *
dtype0*
_output_shapes
:
á
)gradients/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputgradients/Conv2D_grad/ShapeNVariable/read/gradients/BiasAdd_grad/tuple/control_dependency*
T0*J
_output_shapes8
6:4˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
use_cudnn_on_gpu(*
data_formatNHWC*
strides
*
paddingSAME*
	dilations

ź
*gradients/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterimage_inputgradients/Conv2D_grad/Const/gradients/BiasAdd_grad/tuple/control_dependency*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
strides
*
T0*&
_output_shapes
: *
	dilations


&gradients/Conv2D_grad/tuple/group_depsNoOp*^gradients/Conv2D_grad/Conv2DBackpropInput+^gradients/Conv2D_grad/Conv2DBackpropFilter

.gradients/Conv2D_grad/tuple/control_dependencyIdentity)gradients/Conv2D_grad/Conv2DBackpropInput'^gradients/Conv2D_grad/tuple/group_deps*/
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*<
_class2
0.loc:@gradients/Conv2D_grad/Conv2DBackpropInput

0gradients/Conv2D_grad/tuple/control_dependency_1Identity*gradients/Conv2D_grad/Conv2DBackpropFilter'^gradients/Conv2D_grad/tuple/group_deps*&
_output_shapes
: *=
_class3
1/loc:@gradients/Conv2D_grad/Conv2DBackpropFilter*
T0
Ľ
#Variable/Momentum/Initializer/zerosConst*
dtype0*&
_output_shapes
: *
_class
loc:@Variable*%
valueB *    
˛
Variable/Momentum
VariableV2*
	container *
_class
loc:@Variable*
shape: *
shared_name *&
_output_shapes
: *
dtype0
Ń
Variable/Momentum/AssignAssignVariable/Momentum#Variable/Momentum/Initializer/zeros*&
_output_shapes
: *
_class
loc:@Variable*
validate_shape(*
use_locking(*
T0

Variable/Momentum/readIdentityVariable/Momentum*
T0*&
_output_shapes
: *
_class
loc:@Variable

%Variable_1/Momentum/Initializer/zerosConst*
_output_shapes
: *
valueB *    *
_class
loc:@Variable_1*
dtype0

Variable_1/Momentum
VariableV2*
	container *
shared_name *
_output_shapes
: *
_class
loc:@Variable_1*
shape: *
dtype0
Í
Variable_1/Momentum/AssignAssignVariable_1/Momentum%Variable_1/Momentum/Initializer/zeros*
_class
loc:@Variable_1*
T0*
_output_shapes
: *
validate_shape(*
use_locking(
}
Variable_1/Momentum/readIdentityVariable_1/Momentum*
T0*
_output_shapes
: *
_class
loc:@Variable_1
Š
%Variable_2/Momentum/Initializer/zerosConst*
_class
loc:@Variable_2*%
valueB @*    *
dtype0*&
_output_shapes
: @
ś
Variable_2/Momentum
VariableV2*
shape: @*
dtype0*
	container *
_class
loc:@Variable_2*
shared_name *&
_output_shapes
: @
Ů
Variable_2/Momentum/AssignAssignVariable_2/Momentum%Variable_2/Momentum/Initializer/zeros*
validate_shape(*
use_locking(*
_class
loc:@Variable_2*&
_output_shapes
: @*
T0

Variable_2/Momentum/readIdentityVariable_2/Momentum*&
_output_shapes
: @*
_class
loc:@Variable_2*
T0

%Variable_3/Momentum/Initializer/zerosConst*
valueB@*    *
dtype0*
_class
loc:@Variable_3*
_output_shapes
:@

Variable_3/Momentum
VariableV2*
dtype0*
shared_name *
_output_shapes
:@*
_class
loc:@Variable_3*
	container *
shape:@
Í
Variable_3/Momentum/AssignAssignVariable_3/Momentum%Variable_3/Momentum/Initializer/zeros*
_class
loc:@Variable_3*
_output_shapes
:@*
T0*
validate_shape(*
use_locking(
}
Variable_3/Momentum/readIdentityVariable_3/Momentum*
_output_shapes
:@*
T0*
_class
loc:@Variable_3

%Variable_4/Momentum/Initializer/zerosConst* 
_output_shapes
:
Ŕ*
dtype0*
_class
loc:@Variable_4*
valueB
Ŕ*    
Ş
Variable_4/Momentum
VariableV2*
shape:
Ŕ* 
_output_shapes
:
Ŕ*
	container *
dtype0*
_class
loc:@Variable_4*
shared_name 
Ó
Variable_4/Momentum/AssignAssignVariable_4/Momentum%Variable_4/Momentum/Initializer/zeros*
use_locking(* 
_output_shapes
:
Ŕ*
T0*
_class
loc:@Variable_4*
validate_shape(

Variable_4/Momentum/readIdentityVariable_4/Momentum* 
_output_shapes
:
Ŕ*
T0*
_class
loc:@Variable_4

%Variable_5/Momentum/Initializer/zerosConst*
_output_shapes	
:*
dtype0*
valueB*    *
_class
loc:@Variable_5
 
Variable_5/Momentum
VariableV2*
	container *
_class
loc:@Variable_5*
shared_name *
dtype0*
_output_shapes	
:*
shape:
Î
Variable_5/Momentum/AssignAssignVariable_5/Momentum%Variable_5/Momentum/Initializer/zeros*
use_locking(*
validate_shape(*
_output_shapes	
:*
T0*
_class
loc:@Variable_5
~
Variable_5/Momentum/readIdentityVariable_5/Momentum*
_output_shapes	
:*
_class
loc:@Variable_5*
T0

%Variable_6/Momentum/Initializer/zerosConst*
valueB	*    *
dtype0*
_class
loc:@Variable_6*
_output_shapes
:	
¨
Variable_6/Momentum
VariableV2*
shape:	*
	container *
shared_name *
_class
loc:@Variable_6*
dtype0*
_output_shapes
:	
Ň
Variable_6/Momentum/AssignAssignVariable_6/Momentum%Variable_6/Momentum/Initializer/zeros*
use_locking(*
T0*
_output_shapes
:	*
validate_shape(*
_class
loc:@Variable_6

Variable_6/Momentum/readIdentityVariable_6/Momentum*
T0*
_output_shapes
:	*
_class
loc:@Variable_6

%Variable_7/Momentum/Initializer/zerosConst*
valueB*    *
_class
loc:@Variable_7*
_output_shapes
:*
dtype0

Variable_7/Momentum
VariableV2*
_output_shapes
:*
_class
loc:@Variable_7*
shape:*
shared_name *
	container *
dtype0
Í
Variable_7/Momentum/AssignAssignVariable_7/Momentum%Variable_7/Momentum/Initializer/zeros*
T0*
use_locking(*
_output_shapes
:*
validate_shape(*
_class
loc:@Variable_7
}
Variable_7/Momentum/readIdentityVariable_7/Momentum*
_class
loc:@Variable_7*
_output_shapes
:*
T0
V
Momentum/momentumConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
 
&Momentum/update_Variable/ApplyMomentumApplyMomentumVariableVariable/MomentumExponentialDecay0gradients/Conv2D_grad/tuple/control_dependency_1Momentum/momentum*
_class
loc:@Variable*
use_locking( *&
_output_shapes
: *
use_nesterov( *
T0

(Momentum/update_Variable_1/ApplyMomentumApplyMomentum
Variable_1Variable_1/MomentumExponentialDecay1gradients/BiasAdd_grad/tuple/control_dependency_1Momentum/momentum*
_class
loc:@Variable_1*
use_locking( *
_output_shapes
: *
T0*
use_nesterov( 
Ş
(Momentum/update_Variable_2/ApplyMomentumApplyMomentum
Variable_2Variable_2/MomentumExponentialDecay2gradients/Conv2D_1_grad/tuple/control_dependency_1Momentum/momentum*
_class
loc:@Variable_2*
use_nesterov( *
T0*
use_locking( *&
_output_shapes
: @

(Momentum/update_Variable_3/ApplyMomentumApplyMomentum
Variable_3Variable_3/MomentumExponentialDecay3gradients/BiasAdd_1_grad/tuple/control_dependency_1Momentum/momentum*
_output_shapes
:@*
_class
loc:@Variable_3*
use_nesterov( *
T0*
use_locking( 

(Momentum/update_Variable_4/ApplyMomentumApplyMomentum
Variable_4Variable_4/MomentumExponentialDecaygradients/AddN_3Momentum/momentum*
_class
loc:@Variable_4* 
_output_shapes
:
Ŕ*
use_nesterov( *
T0*
use_locking( 
ý
(Momentum/update_Variable_5/ApplyMomentumApplyMomentum
Variable_5Variable_5/MomentumExponentialDecaygradients/AddN_2Momentum/momentum*
T0*
_class
loc:@Variable_5*
use_locking( *
_output_shapes	
:*
use_nesterov( 

(Momentum/update_Variable_6/ApplyMomentumApplyMomentum
Variable_6Variable_6/MomentumExponentialDecaygradients/AddN_1Momentum/momentum*
T0*
use_nesterov( *
_class
loc:@Variable_6*
use_locking( *
_output_shapes
:	
ú
(Momentum/update_Variable_7/ApplyMomentumApplyMomentum
Variable_7Variable_7/MomentumExponentialDecaygradients/AddNMomentum/momentum*
T0*
use_locking( *
_output_shapes
:*
_class
loc:@Variable_7*
use_nesterov( 
í
Momentum/updateNoOp'^Momentum/update_Variable/ApplyMomentum)^Momentum/update_Variable_1/ApplyMomentum)^Momentum/update_Variable_2/ApplyMomentum)^Momentum/update_Variable_3/ApplyMomentum)^Momentum/update_Variable_4/ApplyMomentum)^Momentum/update_Variable_5/ApplyMomentum)^Momentum/update_Variable_6/ApplyMomentum)^Momentum/update_Variable_7/ApplyMomentum

Momentum/valueConst^Momentum/update*
_output_shapes
: *
dtype0*
_class
loc:@Variable_8*
valueB
 *  ?

Momentum	AssignAdd
Variable_8Momentum/value*
_class
loc:@Variable_8*
T0*
use_locking( *
_output_shapes
: 
K
SoftmaxSoftmaxadd_1*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ř
Conv2D_4Conv2DPlaceholder_1Variable/read*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
	dilations
*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

	BiasAdd_4BiasAddConv2D_4Variable_1/read*
data_formatNHWC*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
S
Relu_6Relu	BiasAdd_4*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
¨
	MaxPool_4MaxPoolRelu_6*
data_formatNHWC*
ksize
*
paddingSAME*
T0*
strides
*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
Ö
Conv2D_5Conv2D	MaxPool_4Variable_2/read*
strides
*
use_cudnn_on_gpu(*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
	dilations
*
data_formatNHWC*
paddingSAME*
T0

	BiasAdd_5BiasAddConv2D_5Variable_3/read*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
data_formatNHWC
S
Relu_7Relu	BiasAdd_5*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0
¨
	MaxPool_5MaxPoolRelu_7*
paddingSAME*
strides
*
data_formatNHWC*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
ksize
*
T0
P
Shape_2Shape	MaxPool_5*
out_type0*
_output_shapes
:*
T0
_
strided_slice_2/stackConst*
_output_shapes
:*
valueB: *
dtype0
a
strided_slice_2/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
a
strided_slice_2/stack_2Const*
_output_shapes
:*
valueB:*
dtype0

strided_slice_2StridedSliceShape_2strided_slice_2/stackstrided_slice_2/stack_1strided_slice_2/stack_2*

begin_mask *
shrink_axis_mask*
end_mask *
T0*
ellipsis_mask *
_output_shapes
: *
Index0*
new_axis_mask 
T
Reshape_2/shape/1Const*
dtype0*
_output_shapes
: *
value
B :Ŕ
u
Reshape_2/shapePackstrided_slice_2Reshape_2/shape/1*
N*
_output_shapes
:*

axis *
T0
q
	Reshape_2Reshape	MaxPool_5Reshape_2/shape*
Tshape0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ŕ

MatMul_4MatMul	Reshape_2Variable_4/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( *
T0
Z
add_8AddMatMul_4Variable_5/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
H
Relu_8Reluadd_8*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

MatMul_5MatMulRelu_8Variable_6/read*
T0*
transpose_a( *
transpose_b( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Y
add_9AddMatMul_5Variable_7/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
M
	Softmax_1Softmaxadd_9*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
P

save/ConstConst*
_output_shapes
: *
dtype0*
valueB Bmodel
ň
save/SaveV2/tensor_namesConst*Ľ
valueBBVariableBVariable/MomentumB
Variable_1BVariable_1/MomentumB
Variable_2BVariable_2/MomentumB
Variable_3BVariable_3/MomentumB
Variable_4BVariable_4/MomentumB
Variable_5BVariable_5/MomentumB
Variable_6BVariable_6/MomentumB
Variable_7BVariable_7/MomentumB
Variable_8*
dtype0*
_output_shapes
:

save/SaveV2/shape_and_slicesConst*5
value,B*B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:

save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesVariableVariable/Momentum
Variable_1Variable_1/Momentum
Variable_2Variable_2/Momentum
Variable_3Variable_3/Momentum
Variable_4Variable_4/Momentum
Variable_5Variable_5/Momentum
Variable_6Variable_6/Momentum
Variable_7Variable_7/Momentum
Variable_8*
dtypes
2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
l
save/RestoreV2/tensor_namesConst*
valueBBVariable*
dtype0*
_output_shapes
:
h
save/RestoreV2/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
_output_shapes
:*
dtypes
2
Ś
save/AssignAssignVariablesave/RestoreV2*
use_locking(*&
_output_shapes
: *
T0*
validate_shape(*
_class
loc:@Variable
w
save/RestoreV2_1/tensor_namesConst*
dtype0*&
valueBBVariable/Momentum*
_output_shapes
:
j
!save/RestoreV2_1/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 

save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
_output_shapes
:*
dtypes
2
ł
save/Assign_1AssignVariable/Momentumsave/RestoreV2_1*&
_output_shapes
: *
use_locking(*
T0*
validate_shape(*
_class
loc:@Variable
p
save/RestoreV2_2/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBB
Variable_1
j
!save/RestoreV2_2/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0

save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
˘
save/Assign_2Assign
Variable_1save/RestoreV2_2*
use_locking(*
T0*
_class
loc:@Variable_1*
_output_shapes
: *
validate_shape(
y
save/RestoreV2_3/tensor_namesConst*
_output_shapes
:*(
valueBBVariable_1/Momentum*
dtype0
j
!save/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
_output_shapes
:*
dtypes
2
Ť
save/Assign_3AssignVariable_1/Momentumsave/RestoreV2_3*
T0*
validate_shape(*
use_locking(*
_output_shapes
: *
_class
loc:@Variable_1
p
save/RestoreV2_4/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBB
Variable_2
j
!save/RestoreV2_4/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0

save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
Ž
save/Assign_4Assign
Variable_2save/RestoreV2_4*
_class
loc:@Variable_2*
use_locking(*
T0*
validate_shape(*&
_output_shapes
: @
y
save/RestoreV2_5/tensor_namesConst*
_output_shapes
:*
dtype0*(
valueBBVariable_2/Momentum
j
!save/RestoreV2_5/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 

save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
ˇ
save/Assign_5AssignVariable_2/Momentumsave/RestoreV2_5*
T0*
_class
loc:@Variable_2*
use_locking(*&
_output_shapes
: @*
validate_shape(
p
save/RestoreV2_6/tensor_namesConst*
_output_shapes
:*
valueBB
Variable_3*
dtype0
j
!save/RestoreV2_6/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0

save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
˘
save/Assign_6Assign
Variable_3save/RestoreV2_6*
_output_shapes
:@*
validate_shape(*
_class
loc:@Variable_3*
use_locking(*
T0
y
save/RestoreV2_7/tensor_namesConst*
dtype0*
_output_shapes
:*(
valueBBVariable_3/Momentum
j
!save/RestoreV2_7/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
_output_shapes
:*
dtypes
2
Ť
save/Assign_7AssignVariable_3/Momentumsave/RestoreV2_7*
use_locking(*
T0*
_output_shapes
:@*
validate_shape(*
_class
loc:@Variable_3
p
save/RestoreV2_8/tensor_namesConst*
_output_shapes
:*
valueBB
Variable_4*
dtype0
j
!save/RestoreV2_8/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 

save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes
:
¨
save/Assign_8Assign
Variable_4save/RestoreV2_8* 
_output_shapes
:
Ŕ*
validate_shape(*
use_locking(*
_class
loc:@Variable_4*
T0
y
save/RestoreV2_9/tensor_namesConst*
_output_shapes
:*(
valueBBVariable_4/Momentum*
dtype0
j
!save/RestoreV2_9/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0

save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
_output_shapes
:*
dtypes
2
ą
save/Assign_9AssignVariable_4/Momentumsave/RestoreV2_9*
use_locking(*
validate_shape(*
_class
loc:@Variable_4* 
_output_shapes
:
Ŕ*
T0
q
save/RestoreV2_10/tensor_namesConst*
valueBB
Variable_5*
dtype0*
_output_shapes
:
k
"save/RestoreV2_10/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
_output_shapes
:*
dtypes
2
Ľ
save/Assign_10Assign
Variable_5save/RestoreV2_10*
_class
loc:@Variable_5*
use_locking(*
_output_shapes	
:*
T0*
validate_shape(
z
save/RestoreV2_11/tensor_namesConst*
_output_shapes
:*(
valueBBVariable_5/Momentum*
dtype0
k
"save/RestoreV2_11/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:
Ž
save/Assign_11AssignVariable_5/Momentumsave/RestoreV2_11*
_output_shapes	
:*
_class
loc:@Variable_5*
T0*
use_locking(*
validate_shape(
q
save/RestoreV2_12/tensor_namesConst*
valueBB
Variable_6*
dtype0*
_output_shapes
:
k
"save/RestoreV2_12/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 

save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:
Š
save/Assign_12Assign
Variable_6save/RestoreV2_12*
use_locking(*
_class
loc:@Variable_6*
validate_shape(*
T0*
_output_shapes
:	
z
save/RestoreV2_13/tensor_namesConst*
_output_shapes
:*
dtype0*(
valueBBVariable_6/Momentum
k
"save/RestoreV2_13/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 

save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:
˛
save/Assign_13AssignVariable_6/Momentumsave/RestoreV2_13*
_output_shapes
:	*
validate_shape(*
use_locking(*
_class
loc:@Variable_6*
T0
q
save/RestoreV2_14/tensor_namesConst*
_output_shapes
:*
valueBB
Variable_7*
dtype0
k
"save/RestoreV2_14/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 

save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
dtypes
2*
_output_shapes
:
¤
save/Assign_14Assign
Variable_7save/RestoreV2_14*
T0*
use_locking(*
validate_shape(*
_output_shapes
:*
_class
loc:@Variable_7
z
save/RestoreV2_15/tensor_namesConst*
_output_shapes
:*(
valueBBVariable_7/Momentum*
dtype0
k
"save/RestoreV2_15/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueB
B 

save/RestoreV2_15	RestoreV2
save/Constsave/RestoreV2_15/tensor_names"save/RestoreV2_15/shape_and_slices*
_output_shapes
:*
dtypes
2
­
save/Assign_15AssignVariable_7/Momentumsave/RestoreV2_15*
_class
loc:@Variable_7*
use_locking(*
T0*
_output_shapes
:*
validate_shape(
q
save/RestoreV2_16/tensor_namesConst*
dtype0*
_output_shapes
:*
valueBB
Variable_8
k
"save/RestoreV2_16/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_16	RestoreV2
save/Constsave/RestoreV2_16/tensor_names"save/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes
:
 
save/Assign_16Assign
Variable_8save/RestoreV2_16*
T0*
_class
loc:@Variable_8*
use_locking(*
validate_shape(*
_output_shapes
: 
­
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16
¤
initNoOp^Variable/Assign^Variable_1/Assign^Variable_2/Assign^Variable_3/Assign^Variable_4/Assign^Variable_5/Assign^Variable_6/Assign^Variable_7/Assign^Variable_8/Assign^Variable/Momentum/Assign^Variable_1/Momentum/Assign^Variable_2/Momentum/Assign^Variable_3/Momentum/Assign^Variable_4/Momentum/Assign^Variable_5/Momentum/Assign^Variable_6/Momentum/Assign^Variable_7/Momentum/Assign
N
	loss/tagsConst*
dtype0*
_output_shapes
: *
valueB
 Bloss
H
lossScalarSummary	loss/tagsadd_7*
T0*
_output_shapes
: 
I
Merge/MergeSummaryMergeSummaryloss*
N*
_output_shapes
: 
R
save_1/ConstConst*
_output_shapes
: *
valueB Bmodel*
dtype0

save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_ebdf7b7f536e4d8197af8980ed96b0a8/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
S
save_1/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
^
save_1/ShardedFilename/shardConst*
dtype0*
_output_shapes
: *
value	B : 

save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
ô
save_1/SaveV2/tensor_namesConst*Ľ
valueBBVariableBVariable/MomentumB
Variable_1BVariable_1/MomentumB
Variable_2BVariable_2/MomentumB
Variable_3BVariable_3/MomentumB
Variable_4BVariable_4/MomentumB
Variable_5BVariable_5/MomentumB
Variable_6BVariable_6/MomentumB
Variable_7BVariable_7/MomentumB
Variable_8*
dtype0*
_output_shapes
:

save_1/SaveV2/shape_and_slicesConst*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B 

save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesVariableVariable/Momentum
Variable_1Variable_1/Momentum
Variable_2Variable_2/Momentum
Variable_3Variable_3/Momentum
Variable_4Variable_4/Momentum
Variable_5Variable_5/Momentum
Variable_6Variable_6/Momentum
Variable_7Variable_7/Momentum
Variable_8*
dtypes
2

save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*
_output_shapes
: *)
_class
loc:@save_1/ShardedFilename*
T0
Ł
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
T0*
_output_shapes
:*

axis *
N

save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(

save_1/IdentityIdentitysave_1/Const^save_1/control_dependency^save_1/MergeV2Checkpoints*
T0*
_output_shapes
: 
n
save_1/RestoreV2/tensor_namesConst*
_output_shapes
:*
valueBBVariable*
dtype0
j
!save_1/RestoreV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 

save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*
_output_shapes
:*
dtypes
2
Ş
save_1/AssignAssignVariablesave_1/RestoreV2*
validate_shape(*
use_locking(*
T0*&
_output_shapes
: *
_class
loc:@Variable
y
save_1/RestoreV2_1/tensor_namesConst*
_output_shapes
:*&
valueBBVariable/Momentum*
dtype0
l
#save_1/RestoreV2_1/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 

save_1/RestoreV2_1	RestoreV2save_1/Constsave_1/RestoreV2_1/tensor_names#save_1/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
ˇ
save_1/Assign_1AssignVariable/Momentumsave_1/RestoreV2_1*
_class
loc:@Variable*
use_locking(*
validate_shape(*&
_output_shapes
: *
T0
r
save_1/RestoreV2_2/tensor_namesConst*
valueBB
Variable_1*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_2/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0

save_1/RestoreV2_2	RestoreV2save_1/Constsave_1/RestoreV2_2/tensor_names#save_1/RestoreV2_2/shape_and_slices*
_output_shapes
:*
dtypes
2
Ś
save_1/Assign_2Assign
Variable_1save_1/RestoreV2_2*
T0*
validate_shape(*
_class
loc:@Variable_1*
use_locking(*
_output_shapes
: 
{
save_1/RestoreV2_3/tensor_namesConst*
_output_shapes
:*(
valueBBVariable_1/Momentum*
dtype0
l
#save_1/RestoreV2_3/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0

save_1/RestoreV2_3	RestoreV2save_1/Constsave_1/RestoreV2_3/tensor_names#save_1/RestoreV2_3/shape_and_slices*
_output_shapes
:*
dtypes
2
Ż
save_1/Assign_3AssignVariable_1/Momentumsave_1/RestoreV2_3*
_class
loc:@Variable_1*
validate_shape(*
use_locking(*
_output_shapes
: *
T0
r
save_1/RestoreV2_4/tensor_namesConst*
_output_shapes
:*
dtype0*
valueBB
Variable_2
l
#save_1/RestoreV2_4/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 

save_1/RestoreV2_4	RestoreV2save_1/Constsave_1/RestoreV2_4/tensor_names#save_1/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
˛
save_1/Assign_4Assign
Variable_2save_1/RestoreV2_4*
use_locking(*&
_output_shapes
: @*
_class
loc:@Variable_2*
validate_shape(*
T0
{
save_1/RestoreV2_5/tensor_namesConst*
_output_shapes
:*
dtype0*(
valueBBVariable_2/Momentum
l
#save_1/RestoreV2_5/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 

save_1/RestoreV2_5	RestoreV2save_1/Constsave_1/RestoreV2_5/tensor_names#save_1/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
ť
save_1/Assign_5AssignVariable_2/Momentumsave_1/RestoreV2_5*
use_locking(*&
_output_shapes
: @*
validate_shape(*
T0*
_class
loc:@Variable_2
r
save_1/RestoreV2_6/tensor_namesConst*
_output_shapes
:*
valueBB
Variable_3*
dtype0
l
#save_1/RestoreV2_6/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0

save_1/RestoreV2_6	RestoreV2save_1/Constsave_1/RestoreV2_6/tensor_names#save_1/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
Ś
save_1/Assign_6Assign
Variable_3save_1/RestoreV2_6*
use_locking(*
_output_shapes
:@*
validate_shape(*
T0*
_class
loc:@Variable_3
{
save_1/RestoreV2_7/tensor_namesConst*
dtype0*
_output_shapes
:*(
valueBBVariable_3/Momentum
l
#save_1/RestoreV2_7/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save_1/RestoreV2_7	RestoreV2save_1/Constsave_1/RestoreV2_7/tensor_names#save_1/RestoreV2_7/shape_and_slices*
_output_shapes
:*
dtypes
2
Ż
save_1/Assign_7AssignVariable_3/Momentumsave_1/RestoreV2_7*
_class
loc:@Variable_3*
_output_shapes
:@*
validate_shape(*
T0*
use_locking(
r
save_1/RestoreV2_8/tensor_namesConst*
valueBB
Variable_4*
_output_shapes
:*
dtype0
l
#save_1/RestoreV2_8/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save_1/RestoreV2_8	RestoreV2save_1/Constsave_1/RestoreV2_8/tensor_names#save_1/RestoreV2_8/shape_and_slices*
_output_shapes
:*
dtypes
2
Ź
save_1/Assign_8Assign
Variable_4save_1/RestoreV2_8*
_class
loc:@Variable_4*
T0*
validate_shape(*
use_locking(* 
_output_shapes
:
Ŕ
{
save_1/RestoreV2_9/tensor_namesConst*(
valueBBVariable_4/Momentum*
_output_shapes
:*
dtype0
l
#save_1/RestoreV2_9/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0

save_1/RestoreV2_9	RestoreV2save_1/Constsave_1/RestoreV2_9/tensor_names#save_1/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
ľ
save_1/Assign_9AssignVariable_4/Momentumsave_1/RestoreV2_9*
use_locking(*
validate_shape(*
_class
loc:@Variable_4* 
_output_shapes
:
Ŕ*
T0
s
 save_1/RestoreV2_10/tensor_namesConst*
dtype0*
valueBB
Variable_5*
_output_shapes
:
m
$save_1/RestoreV2_10/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ą
save_1/RestoreV2_10	RestoreV2save_1/Const save_1/RestoreV2_10/tensor_names$save_1/RestoreV2_10/shape_and_slices*
_output_shapes
:*
dtypes
2
Š
save_1/Assign_10Assign
Variable_5save_1/RestoreV2_10*
T0*
validate_shape(*
use_locking(*
_class
loc:@Variable_5*
_output_shapes	
:
|
 save_1/RestoreV2_11/tensor_namesConst*
dtype0*(
valueBBVariable_5/Momentum*
_output_shapes
:
m
$save_1/RestoreV2_11/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0
Ą
save_1/RestoreV2_11	RestoreV2save_1/Const save_1/RestoreV2_11/tensor_names$save_1/RestoreV2_11/shape_and_slices*
_output_shapes
:*
dtypes
2
˛
save_1/Assign_11AssignVariable_5/Momentumsave_1/RestoreV2_11*
validate_shape(*
_class
loc:@Variable_5*
use_locking(*
_output_shapes	
:*
T0
s
 save_1/RestoreV2_12/tensor_namesConst*
valueBB
Variable_6*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_12/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Ą
save_1/RestoreV2_12	RestoreV2save_1/Const save_1/RestoreV2_12/tensor_names$save_1/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:
­
save_1/Assign_12Assign
Variable_6save_1/RestoreV2_12*
validate_shape(*
use_locking(*
T0*
_output_shapes
:	*
_class
loc:@Variable_6
|
 save_1/RestoreV2_13/tensor_namesConst*
_output_shapes
:*(
valueBBVariable_6/Momentum*
dtype0
m
$save_1/RestoreV2_13/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0
Ą
save_1/RestoreV2_13	RestoreV2save_1/Const save_1/RestoreV2_13/tensor_names$save_1/RestoreV2_13/shape_and_slices*
_output_shapes
:*
dtypes
2
ś
save_1/Assign_13AssignVariable_6/Momentumsave_1/RestoreV2_13*
_class
loc:@Variable_6*
use_locking(*
validate_shape(*
_output_shapes
:	*
T0
s
 save_1/RestoreV2_14/tensor_namesConst*
valueBB
Variable_7*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_14/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ą
save_1/RestoreV2_14	RestoreV2save_1/Const save_1/RestoreV2_14/tensor_names$save_1/RestoreV2_14/shape_and_slices*
dtypes
2*
_output_shapes
:
¨
save_1/Assign_14Assign
Variable_7save_1/RestoreV2_14*
_class
loc:@Variable_7*
use_locking(*
_output_shapes
:*
validate_shape(*
T0
|
 save_1/RestoreV2_15/tensor_namesConst*
dtype0*
_output_shapes
:*(
valueBBVariable_7/Momentum
m
$save_1/RestoreV2_15/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ą
save_1/RestoreV2_15	RestoreV2save_1/Const save_1/RestoreV2_15/tensor_names$save_1/RestoreV2_15/shape_and_slices*
dtypes
2*
_output_shapes
:
ą
save_1/Assign_15AssignVariable_7/Momentumsave_1/RestoreV2_15*
validate_shape(*
_output_shapes
:*
T0*
use_locking(*
_class
loc:@Variable_7
s
 save_1/RestoreV2_16/tensor_namesConst*
valueBB
Variable_8*
_output_shapes
:*
dtype0
m
$save_1/RestoreV2_16/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ą
save_1/RestoreV2_16	RestoreV2save_1/Const save_1/RestoreV2_16/tensor_names$save_1/RestoreV2_16/shape_and_slices*
_output_shapes
:*
dtypes
2
¤
save_1/Assign_16Assign
Variable_8save_1/RestoreV2_16*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@Variable_8
Ó
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16
1
save_1/restore_allNoOp^save_1/restore_shard "B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"Ó
	variablesĹÂ
B

Variable:0Variable/AssignVariable/read:02truncated_normal:0
=
Variable_1:0Variable_1/AssignVariable_1/read:02zeros:0
J
Variable_2:0Variable_2/AssignVariable_2/read:02truncated_normal_1:0
=
Variable_3:0Variable_3/AssignVariable_3/read:02Const:0
J
Variable_4:0Variable_4/AssignVariable_4/read:02truncated_normal_2:0
?
Variable_5:0Variable_5/AssignVariable_5/read:02	Const_1:0
J
Variable_6:0Variable_6/AssignVariable_6/read:02truncated_normal_3:0
?
Variable_7:0Variable_7/AssignVariable_7/read:02	Const_2:0
P
Variable_8:0Variable_8/AssignVariable_8/read:02Variable_8/initial_value:0
p
Variable/Momentum:0Variable/Momentum/AssignVariable/Momentum/read:02%Variable/Momentum/Initializer/zeros:0
x
Variable_1/Momentum:0Variable_1/Momentum/AssignVariable_1/Momentum/read:02'Variable_1/Momentum/Initializer/zeros:0
x
Variable_2/Momentum:0Variable_2/Momentum/AssignVariable_2/Momentum/read:02'Variable_2/Momentum/Initializer/zeros:0
x
Variable_3/Momentum:0Variable_3/Momentum/AssignVariable_3/Momentum/read:02'Variable_3/Momentum/Initializer/zeros:0
x
Variable_4/Momentum:0Variable_4/Momentum/AssignVariable_4/Momentum/read:02'Variable_4/Momentum/Initializer/zeros:0
x
Variable_5/Momentum:0Variable_5/Momentum/AssignVariable_5/Momentum/read:02'Variable_5/Momentum/Initializer/zeros:0
x
Variable_6/Momentum:0Variable_6/Momentum/AssignVariable_6/Momentum/read:02'Variable_6/Momentum/Initializer/zeros:0
x
Variable_7/Momentum:0Variable_7/Momentum/AssignVariable_7/Momentum/read:02'Variable_7/Momentum/Initializer/zeros:0"
	summaries


loss:0"
trainable_variablesýú
B

Variable:0Variable/AssignVariable/read:02truncated_normal:0
=
Variable_1:0Variable_1/AssignVariable_1/read:02zeros:0
J
Variable_2:0Variable_2/AssignVariable_2/read:02truncated_normal_1:0
=
Variable_3:0Variable_3/AssignVariable_3/read:02Const:0
J
Variable_4:0Variable_4/AssignVariable_4/read:02truncated_normal_2:0
?
Variable_5:0Variable_5/AssignVariable_5/read:02	Const_1:0
J
Variable_6:0Variable_6/AssignVariable_6/read:02truncated_normal_3:0
?
Variable_7:0Variable_7/AssignVariable_7/read:02	Const_2:0
P
Variable_8:0Variable_8/AssignVariable_8/read:02Variable_8/initial_value:0"
train_op


Momentum*
Infer
6
inputs,
image_input:0˙˙˙˙˙˙˙˙˙*
outputs
predict_op:0	˙˙˙˙˙˙˙˙˙tensorflow/serving/predict