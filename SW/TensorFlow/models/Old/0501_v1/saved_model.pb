��
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
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
 �
9
VarIsInitializedOp
resource
is_initialized
�"serve*2.16.12v2.16.0-rc0-18-g5bc9d26649c8Ɖ
j
ConstConst*&
_output_shapes
:*
dtype0*%
valueB*'��A
l
Const_1Const*&
_output_shapes
:*
dtype0*%
valueB*��?
�
normalization_2/countVarHandleOp*
_output_shapes
: *&

debug_namenormalization_2/count/*
dtype0	*
shape: *&
shared_namenormalization_2/count
w
)normalization_2/count/Read/ReadVariableOpReadVariableOpnormalization_2/count*
_output_shapes
: *
dtype0	
�
#Variable/Initializer/ReadVariableOpReadVariableOpnormalization_2/count*
_class
loc:@Variable*
_output_shapes
: *
dtype0	
�
VariableVarHandleOp*
_class
loc:@Variable*
_output_shapes
: *

debug_name	Variable/*
dtype0	*
shape: *
shared_name
Variable
a
)Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable*
_output_shapes
: 
_
Variable/AssignAssignVariableOpVariable#Variable/Initializer/ReadVariableOp*
dtype0	
]
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
: *
dtype0	
�
normalization_2/varianceVarHandleOp*
_output_shapes
: *)

debug_namenormalization_2/variance/*
dtype0*
shape:*)
shared_namenormalization_2/variance
�
,normalization_2/variance/Read/ReadVariableOpReadVariableOpnormalization_2/variance*
_output_shapes
:*
dtype0
�
%Variable_1/Initializer/ReadVariableOpReadVariableOpnormalization_2/variance*
_class
loc:@Variable_1*
_output_shapes
:*
dtype0
�

Variable_1VarHandleOp*
_class
loc:@Variable_1*
_output_shapes
: *

debug_nameVariable_1/*
dtype0*
shape:*
shared_name
Variable_1
e
+Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_1*
_output_shapes
: 
e
Variable_1/AssignAssignVariableOp
Variable_1%Variable_1/Initializer/ReadVariableOp*
dtype0
e
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes
:*
dtype0
�
normalization_2/meanVarHandleOp*
_output_shapes
: *%

debug_namenormalization_2/mean/*
dtype0*
shape:*%
shared_namenormalization_2/mean
y
(normalization_2/mean/Read/ReadVariableOpReadVariableOpnormalization_2/mean*
_output_shapes
:*
dtype0
�
%Variable_2/Initializer/ReadVariableOpReadVariableOpnormalization_2/mean*
_class
loc:@Variable_2*
_output_shapes
:*
dtype0
�

Variable_2VarHandleOp*
_class
loc:@Variable_2*
_output_shapes
: *

debug_nameVariable_2/*
dtype0*
shape:*
shared_name
Variable_2
e
+Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_2*
_output_shapes
: 
e
Variable_2/AssignAssignVariableOp
Variable_2%Variable_2/Initializer/ReadVariableOp*
dtype0
e
Variable_2/Read/ReadVariableOpReadVariableOp
Variable_2*
_output_shapes
:*
dtype0
�
sequential_2/dense_5/biasVarHandleOp*
_output_shapes
: **

debug_namesequential_2/dense_5/bias/*
dtype0*
shape:**
shared_namesequential_2/dense_5/bias
�
-sequential_2/dense_5/bias/Read/ReadVariableOpReadVariableOpsequential_2/dense_5/bias*
_output_shapes
:*
dtype0
�
%Variable_3/Initializer/ReadVariableOpReadVariableOpsequential_2/dense_5/bias*
_class
loc:@Variable_3*
_output_shapes
:*
dtype0
�

Variable_3VarHandleOp*
_class
loc:@Variable_3*
_output_shapes
: *

debug_nameVariable_3/*
dtype0*
shape:*
shared_name
Variable_3
e
+Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_3*
_output_shapes
: 
e
Variable_3/AssignAssignVariableOp
Variable_3%Variable_3/Initializer/ReadVariableOp*
dtype0
e
Variable_3/Read/ReadVariableOpReadVariableOp
Variable_3*
_output_shapes
:*
dtype0
�
sequential_2/dense_5/kernelVarHandleOp*
_output_shapes
: *,

debug_namesequential_2/dense_5/kernel/*
dtype0*
shape
:@*,
shared_namesequential_2/dense_5/kernel
�
/sequential_2/dense_5/kernel/Read/ReadVariableOpReadVariableOpsequential_2/dense_5/kernel*
_output_shapes

:@*
dtype0
�
%Variable_4/Initializer/ReadVariableOpReadVariableOpsequential_2/dense_5/kernel*
_class
loc:@Variable_4*
_output_shapes

:@*
dtype0
�

Variable_4VarHandleOp*
_class
loc:@Variable_4*
_output_shapes
: *

debug_nameVariable_4/*
dtype0*
shape
:@*
shared_name
Variable_4
e
+Variable_4/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_4*
_output_shapes
: 
e
Variable_4/AssignAssignVariableOp
Variable_4%Variable_4/Initializer/ReadVariableOp*
dtype0
i
Variable_4/Read/ReadVariableOpReadVariableOp
Variable_4*
_output_shapes

:@*
dtype0
�
sequential_2/dense_4/biasVarHandleOp*
_output_shapes
: **

debug_namesequential_2/dense_4/bias/*
dtype0*
shape:@**
shared_namesequential_2/dense_4/bias
�
-sequential_2/dense_4/bias/Read/ReadVariableOpReadVariableOpsequential_2/dense_4/bias*
_output_shapes
:@*
dtype0
�
%Variable_5/Initializer/ReadVariableOpReadVariableOpsequential_2/dense_4/bias*
_class
loc:@Variable_5*
_output_shapes
:@*
dtype0
�

Variable_5VarHandleOp*
_class
loc:@Variable_5*
_output_shapes
: *

debug_nameVariable_5/*
dtype0*
shape:@*
shared_name
Variable_5
e
+Variable_5/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_5*
_output_shapes
: 
e
Variable_5/AssignAssignVariableOp
Variable_5%Variable_5/Initializer/ReadVariableOp*
dtype0
e
Variable_5/Read/ReadVariableOpReadVariableOp
Variable_5*
_output_shapes
:@*
dtype0
�
sequential_2/dense_4/kernelVarHandleOp*
_output_shapes
: *,

debug_namesequential_2/dense_4/kernel/*
dtype0*
shape
:@@*,
shared_namesequential_2/dense_4/kernel
�
/sequential_2/dense_4/kernel/Read/ReadVariableOpReadVariableOpsequential_2/dense_4/kernel*
_output_shapes

:@@*
dtype0
�
%Variable_6/Initializer/ReadVariableOpReadVariableOpsequential_2/dense_4/kernel*
_class
loc:@Variable_6*
_output_shapes

:@@*
dtype0
�

Variable_6VarHandleOp*
_class
loc:@Variable_6*
_output_shapes
: *

debug_nameVariable_6/*
dtype0*
shape
:@@*
shared_name
Variable_6
e
+Variable_6/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_6*
_output_shapes
: 
e
Variable_6/AssignAssignVariableOp
Variable_6%Variable_6/Initializer/ReadVariableOp*
dtype0
i
Variable_6/Read/ReadVariableOpReadVariableOp
Variable_6*
_output_shapes

:@@*
dtype0
�
sequential_2/conv2d_5/biasVarHandleOp*
_output_shapes
: *+

debug_namesequential_2/conv2d_5/bias/*
dtype0*
shape:*+
shared_namesequential_2/conv2d_5/bias
�
.sequential_2/conv2d_5/bias/Read/ReadVariableOpReadVariableOpsequential_2/conv2d_5/bias*
_output_shapes
:*
dtype0
�
%Variable_7/Initializer/ReadVariableOpReadVariableOpsequential_2/conv2d_5/bias*
_class
loc:@Variable_7*
_output_shapes
:*
dtype0
�

Variable_7VarHandleOp*
_class
loc:@Variable_7*
_output_shapes
: *

debug_nameVariable_7/*
dtype0*
shape:*
shared_name
Variable_7
e
+Variable_7/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_7*
_output_shapes
: 
e
Variable_7/AssignAssignVariableOp
Variable_7%Variable_7/Initializer/ReadVariableOp*
dtype0
e
Variable_7/Read/ReadVariableOpReadVariableOp
Variable_7*
_output_shapes
:*
dtype0
�
sequential_2/conv2d_5/kernelVarHandleOp*
_output_shapes
: *-

debug_namesequential_2/conv2d_5/kernel/*
dtype0*
shape:*-
shared_namesequential_2/conv2d_5/kernel
�
0sequential_2/conv2d_5/kernel/Read/ReadVariableOpReadVariableOpsequential_2/conv2d_5/kernel*&
_output_shapes
:*
dtype0
�
%Variable_8/Initializer/ReadVariableOpReadVariableOpsequential_2/conv2d_5/kernel*
_class
loc:@Variable_8*&
_output_shapes
:*
dtype0
�

Variable_8VarHandleOp*
_class
loc:@Variable_8*
_output_shapes
: *

debug_nameVariable_8/*
dtype0*
shape:*
shared_name
Variable_8
e
+Variable_8/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_8*
_output_shapes
: 
e
Variable_8/AssignAssignVariableOp
Variable_8%Variable_8/Initializer/ReadVariableOp*
dtype0
q
Variable_8/Read/ReadVariableOpReadVariableOp
Variable_8*&
_output_shapes
:*
dtype0
�
sequential_2/conv2d_4/biasVarHandleOp*
_output_shapes
: *+

debug_namesequential_2/conv2d_4/bias/*
dtype0*
shape:*+
shared_namesequential_2/conv2d_4/bias
�
.sequential_2/conv2d_4/bias/Read/ReadVariableOpReadVariableOpsequential_2/conv2d_4/bias*
_output_shapes
:*
dtype0
�
%Variable_9/Initializer/ReadVariableOpReadVariableOpsequential_2/conv2d_4/bias*
_class
loc:@Variable_9*
_output_shapes
:*
dtype0
�

Variable_9VarHandleOp*
_class
loc:@Variable_9*
_output_shapes
: *

debug_nameVariable_9/*
dtype0*
shape:*
shared_name
Variable_9
e
+Variable_9/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_9*
_output_shapes
: 
e
Variable_9/AssignAssignVariableOp
Variable_9%Variable_9/Initializer/ReadVariableOp*
dtype0
e
Variable_9/Read/ReadVariableOpReadVariableOp
Variable_9*
_output_shapes
:*
dtype0
�
sequential_2/conv2d_4/kernelVarHandleOp*
_output_shapes
: *-

debug_namesequential_2/conv2d_4/kernel/*
dtype0*
shape:*-
shared_namesequential_2/conv2d_4/kernel
�
0sequential_2/conv2d_4/kernel/Read/ReadVariableOpReadVariableOpsequential_2/conv2d_4/kernel*&
_output_shapes
:*
dtype0
�
&Variable_10/Initializer/ReadVariableOpReadVariableOpsequential_2/conv2d_4/kernel*
_class
loc:@Variable_10*&
_output_shapes
:*
dtype0
�
Variable_10VarHandleOp*
_class
loc:@Variable_10*
_output_shapes
: *

debug_nameVariable_10/*
dtype0*
shape:*
shared_nameVariable_10
g
,Variable_10/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_10*
_output_shapes
: 
h
Variable_10/AssignAssignVariableOpVariable_10&Variable_10/Initializer/ReadVariableOp*
dtype0
s
Variable_10/Read/ReadVariableOpReadVariableOpVariable_10*&
_output_shapes
:*
dtype0
�
'adam/sequential_2_dense_5_bias_velocityVarHandleOp*
_output_shapes
: *8

debug_name*(adam/sequential_2_dense_5_bias_velocity/*
dtype0*
shape:*8
shared_name)'adam/sequential_2_dense_5_bias_velocity
�
;adam/sequential_2_dense_5_bias_velocity/Read/ReadVariableOpReadVariableOp'adam/sequential_2_dense_5_bias_velocity*
_output_shapes
:*
dtype0
�
&Variable_11/Initializer/ReadVariableOpReadVariableOp'adam/sequential_2_dense_5_bias_velocity*
_class
loc:@Variable_11*
_output_shapes
:*
dtype0
�
Variable_11VarHandleOp*
_class
loc:@Variable_11*
_output_shapes
: *

debug_nameVariable_11/*
dtype0*
shape:*
shared_nameVariable_11
g
,Variable_11/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_11*
_output_shapes
: 
h
Variable_11/AssignAssignVariableOpVariable_11&Variable_11/Initializer/ReadVariableOp*
dtype0
g
Variable_11/Read/ReadVariableOpReadVariableOpVariable_11*
_output_shapes
:*
dtype0
�
'adam/sequential_2_dense_5_bias_momentumVarHandleOp*
_output_shapes
: *8

debug_name*(adam/sequential_2_dense_5_bias_momentum/*
dtype0*
shape:*8
shared_name)'adam/sequential_2_dense_5_bias_momentum
�
;adam/sequential_2_dense_5_bias_momentum/Read/ReadVariableOpReadVariableOp'adam/sequential_2_dense_5_bias_momentum*
_output_shapes
:*
dtype0
�
&Variable_12/Initializer/ReadVariableOpReadVariableOp'adam/sequential_2_dense_5_bias_momentum*
_class
loc:@Variable_12*
_output_shapes
:*
dtype0
�
Variable_12VarHandleOp*
_class
loc:@Variable_12*
_output_shapes
: *

debug_nameVariable_12/*
dtype0*
shape:*
shared_nameVariable_12
g
,Variable_12/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_12*
_output_shapes
: 
h
Variable_12/AssignAssignVariableOpVariable_12&Variable_12/Initializer/ReadVariableOp*
dtype0
g
Variable_12/Read/ReadVariableOpReadVariableOpVariable_12*
_output_shapes
:*
dtype0
�
)adam/sequential_2_dense_5_kernel_velocityVarHandleOp*
_output_shapes
: *:

debug_name,*adam/sequential_2_dense_5_kernel_velocity/*
dtype0*
shape
:@*:
shared_name+)adam/sequential_2_dense_5_kernel_velocity
�
=adam/sequential_2_dense_5_kernel_velocity/Read/ReadVariableOpReadVariableOp)adam/sequential_2_dense_5_kernel_velocity*
_output_shapes

:@*
dtype0
�
&Variable_13/Initializer/ReadVariableOpReadVariableOp)adam/sequential_2_dense_5_kernel_velocity*
_class
loc:@Variable_13*
_output_shapes

:@*
dtype0
�
Variable_13VarHandleOp*
_class
loc:@Variable_13*
_output_shapes
: *

debug_nameVariable_13/*
dtype0*
shape
:@*
shared_nameVariable_13
g
,Variable_13/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_13*
_output_shapes
: 
h
Variable_13/AssignAssignVariableOpVariable_13&Variable_13/Initializer/ReadVariableOp*
dtype0
k
Variable_13/Read/ReadVariableOpReadVariableOpVariable_13*
_output_shapes

:@*
dtype0
�
)adam/sequential_2_dense_5_kernel_momentumVarHandleOp*
_output_shapes
: *:

debug_name,*adam/sequential_2_dense_5_kernel_momentum/*
dtype0*
shape
:@*:
shared_name+)adam/sequential_2_dense_5_kernel_momentum
�
=adam/sequential_2_dense_5_kernel_momentum/Read/ReadVariableOpReadVariableOp)adam/sequential_2_dense_5_kernel_momentum*
_output_shapes

:@*
dtype0
�
&Variable_14/Initializer/ReadVariableOpReadVariableOp)adam/sequential_2_dense_5_kernel_momentum*
_class
loc:@Variable_14*
_output_shapes

:@*
dtype0
�
Variable_14VarHandleOp*
_class
loc:@Variable_14*
_output_shapes
: *

debug_nameVariable_14/*
dtype0*
shape
:@*
shared_nameVariable_14
g
,Variable_14/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_14*
_output_shapes
: 
h
Variable_14/AssignAssignVariableOpVariable_14&Variable_14/Initializer/ReadVariableOp*
dtype0
k
Variable_14/Read/ReadVariableOpReadVariableOpVariable_14*
_output_shapes

:@*
dtype0
�
'adam/sequential_2_dense_4_bias_velocityVarHandleOp*
_output_shapes
: *8

debug_name*(adam/sequential_2_dense_4_bias_velocity/*
dtype0*
shape:@*8
shared_name)'adam/sequential_2_dense_4_bias_velocity
�
;adam/sequential_2_dense_4_bias_velocity/Read/ReadVariableOpReadVariableOp'adam/sequential_2_dense_4_bias_velocity*
_output_shapes
:@*
dtype0
�
&Variable_15/Initializer/ReadVariableOpReadVariableOp'adam/sequential_2_dense_4_bias_velocity*
_class
loc:@Variable_15*
_output_shapes
:@*
dtype0
�
Variable_15VarHandleOp*
_class
loc:@Variable_15*
_output_shapes
: *

debug_nameVariable_15/*
dtype0*
shape:@*
shared_nameVariable_15
g
,Variable_15/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_15*
_output_shapes
: 
h
Variable_15/AssignAssignVariableOpVariable_15&Variable_15/Initializer/ReadVariableOp*
dtype0
g
Variable_15/Read/ReadVariableOpReadVariableOpVariable_15*
_output_shapes
:@*
dtype0
�
'adam/sequential_2_dense_4_bias_momentumVarHandleOp*
_output_shapes
: *8

debug_name*(adam/sequential_2_dense_4_bias_momentum/*
dtype0*
shape:@*8
shared_name)'adam/sequential_2_dense_4_bias_momentum
�
;adam/sequential_2_dense_4_bias_momentum/Read/ReadVariableOpReadVariableOp'adam/sequential_2_dense_4_bias_momentum*
_output_shapes
:@*
dtype0
�
&Variable_16/Initializer/ReadVariableOpReadVariableOp'adam/sequential_2_dense_4_bias_momentum*
_class
loc:@Variable_16*
_output_shapes
:@*
dtype0
�
Variable_16VarHandleOp*
_class
loc:@Variable_16*
_output_shapes
: *

debug_nameVariable_16/*
dtype0*
shape:@*
shared_nameVariable_16
g
,Variable_16/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_16*
_output_shapes
: 
h
Variable_16/AssignAssignVariableOpVariable_16&Variable_16/Initializer/ReadVariableOp*
dtype0
g
Variable_16/Read/ReadVariableOpReadVariableOpVariable_16*
_output_shapes
:@*
dtype0
�
)adam/sequential_2_dense_4_kernel_velocityVarHandleOp*
_output_shapes
: *:

debug_name,*adam/sequential_2_dense_4_kernel_velocity/*
dtype0*
shape
:@@*:
shared_name+)adam/sequential_2_dense_4_kernel_velocity
�
=adam/sequential_2_dense_4_kernel_velocity/Read/ReadVariableOpReadVariableOp)adam/sequential_2_dense_4_kernel_velocity*
_output_shapes

:@@*
dtype0
�
&Variable_17/Initializer/ReadVariableOpReadVariableOp)adam/sequential_2_dense_4_kernel_velocity*
_class
loc:@Variable_17*
_output_shapes

:@@*
dtype0
�
Variable_17VarHandleOp*
_class
loc:@Variable_17*
_output_shapes
: *

debug_nameVariable_17/*
dtype0*
shape
:@@*
shared_nameVariable_17
g
,Variable_17/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_17*
_output_shapes
: 
h
Variable_17/AssignAssignVariableOpVariable_17&Variable_17/Initializer/ReadVariableOp*
dtype0
k
Variable_17/Read/ReadVariableOpReadVariableOpVariable_17*
_output_shapes

:@@*
dtype0
�
)adam/sequential_2_dense_4_kernel_momentumVarHandleOp*
_output_shapes
: *:

debug_name,*adam/sequential_2_dense_4_kernel_momentum/*
dtype0*
shape
:@@*:
shared_name+)adam/sequential_2_dense_4_kernel_momentum
�
=adam/sequential_2_dense_4_kernel_momentum/Read/ReadVariableOpReadVariableOp)adam/sequential_2_dense_4_kernel_momentum*
_output_shapes

:@@*
dtype0
�
&Variable_18/Initializer/ReadVariableOpReadVariableOp)adam/sequential_2_dense_4_kernel_momentum*
_class
loc:@Variable_18*
_output_shapes

:@@*
dtype0
�
Variable_18VarHandleOp*
_class
loc:@Variable_18*
_output_shapes
: *

debug_nameVariable_18/*
dtype0*
shape
:@@*
shared_nameVariable_18
g
,Variable_18/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_18*
_output_shapes
: 
h
Variable_18/AssignAssignVariableOpVariable_18&Variable_18/Initializer/ReadVariableOp*
dtype0
k
Variable_18/Read/ReadVariableOpReadVariableOpVariable_18*
_output_shapes

:@@*
dtype0
�
(adam/sequential_2_conv2d_5_bias_velocityVarHandleOp*
_output_shapes
: *9

debug_name+)adam/sequential_2_conv2d_5_bias_velocity/*
dtype0*
shape:*9
shared_name*(adam/sequential_2_conv2d_5_bias_velocity
�
<adam/sequential_2_conv2d_5_bias_velocity/Read/ReadVariableOpReadVariableOp(adam/sequential_2_conv2d_5_bias_velocity*
_output_shapes
:*
dtype0
�
&Variable_19/Initializer/ReadVariableOpReadVariableOp(adam/sequential_2_conv2d_5_bias_velocity*
_class
loc:@Variable_19*
_output_shapes
:*
dtype0
�
Variable_19VarHandleOp*
_class
loc:@Variable_19*
_output_shapes
: *

debug_nameVariable_19/*
dtype0*
shape:*
shared_nameVariable_19
g
,Variable_19/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_19*
_output_shapes
: 
h
Variable_19/AssignAssignVariableOpVariable_19&Variable_19/Initializer/ReadVariableOp*
dtype0
g
Variable_19/Read/ReadVariableOpReadVariableOpVariable_19*
_output_shapes
:*
dtype0
�
(adam/sequential_2_conv2d_5_bias_momentumVarHandleOp*
_output_shapes
: *9

debug_name+)adam/sequential_2_conv2d_5_bias_momentum/*
dtype0*
shape:*9
shared_name*(adam/sequential_2_conv2d_5_bias_momentum
�
<adam/sequential_2_conv2d_5_bias_momentum/Read/ReadVariableOpReadVariableOp(adam/sequential_2_conv2d_5_bias_momentum*
_output_shapes
:*
dtype0
�
&Variable_20/Initializer/ReadVariableOpReadVariableOp(adam/sequential_2_conv2d_5_bias_momentum*
_class
loc:@Variable_20*
_output_shapes
:*
dtype0
�
Variable_20VarHandleOp*
_class
loc:@Variable_20*
_output_shapes
: *

debug_nameVariable_20/*
dtype0*
shape:*
shared_nameVariable_20
g
,Variable_20/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_20*
_output_shapes
: 
h
Variable_20/AssignAssignVariableOpVariable_20&Variable_20/Initializer/ReadVariableOp*
dtype0
g
Variable_20/Read/ReadVariableOpReadVariableOpVariable_20*
_output_shapes
:*
dtype0
�
*adam/sequential_2_conv2d_5_kernel_velocityVarHandleOp*
_output_shapes
: *;

debug_name-+adam/sequential_2_conv2d_5_kernel_velocity/*
dtype0*
shape:*;
shared_name,*adam/sequential_2_conv2d_5_kernel_velocity
�
>adam/sequential_2_conv2d_5_kernel_velocity/Read/ReadVariableOpReadVariableOp*adam/sequential_2_conv2d_5_kernel_velocity*&
_output_shapes
:*
dtype0
�
&Variable_21/Initializer/ReadVariableOpReadVariableOp*adam/sequential_2_conv2d_5_kernel_velocity*
_class
loc:@Variable_21*&
_output_shapes
:*
dtype0
�
Variable_21VarHandleOp*
_class
loc:@Variable_21*
_output_shapes
: *

debug_nameVariable_21/*
dtype0*
shape:*
shared_nameVariable_21
g
,Variable_21/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_21*
_output_shapes
: 
h
Variable_21/AssignAssignVariableOpVariable_21&Variable_21/Initializer/ReadVariableOp*
dtype0
s
Variable_21/Read/ReadVariableOpReadVariableOpVariable_21*&
_output_shapes
:*
dtype0
�
*adam/sequential_2_conv2d_5_kernel_momentumVarHandleOp*
_output_shapes
: *;

debug_name-+adam/sequential_2_conv2d_5_kernel_momentum/*
dtype0*
shape:*;
shared_name,*adam/sequential_2_conv2d_5_kernel_momentum
�
>adam/sequential_2_conv2d_5_kernel_momentum/Read/ReadVariableOpReadVariableOp*adam/sequential_2_conv2d_5_kernel_momentum*&
_output_shapes
:*
dtype0
�
&Variable_22/Initializer/ReadVariableOpReadVariableOp*adam/sequential_2_conv2d_5_kernel_momentum*
_class
loc:@Variable_22*&
_output_shapes
:*
dtype0
�
Variable_22VarHandleOp*
_class
loc:@Variable_22*
_output_shapes
: *

debug_nameVariable_22/*
dtype0*
shape:*
shared_nameVariable_22
g
,Variable_22/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_22*
_output_shapes
: 
h
Variable_22/AssignAssignVariableOpVariable_22&Variable_22/Initializer/ReadVariableOp*
dtype0
s
Variable_22/Read/ReadVariableOpReadVariableOpVariable_22*&
_output_shapes
:*
dtype0
�
(adam/sequential_2_conv2d_4_bias_velocityVarHandleOp*
_output_shapes
: *9

debug_name+)adam/sequential_2_conv2d_4_bias_velocity/*
dtype0*
shape:*9
shared_name*(adam/sequential_2_conv2d_4_bias_velocity
�
<adam/sequential_2_conv2d_4_bias_velocity/Read/ReadVariableOpReadVariableOp(adam/sequential_2_conv2d_4_bias_velocity*
_output_shapes
:*
dtype0
�
&Variable_23/Initializer/ReadVariableOpReadVariableOp(adam/sequential_2_conv2d_4_bias_velocity*
_class
loc:@Variable_23*
_output_shapes
:*
dtype0
�
Variable_23VarHandleOp*
_class
loc:@Variable_23*
_output_shapes
: *

debug_nameVariable_23/*
dtype0*
shape:*
shared_nameVariable_23
g
,Variable_23/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_23*
_output_shapes
: 
h
Variable_23/AssignAssignVariableOpVariable_23&Variable_23/Initializer/ReadVariableOp*
dtype0
g
Variable_23/Read/ReadVariableOpReadVariableOpVariable_23*
_output_shapes
:*
dtype0
�
(adam/sequential_2_conv2d_4_bias_momentumVarHandleOp*
_output_shapes
: *9

debug_name+)adam/sequential_2_conv2d_4_bias_momentum/*
dtype0*
shape:*9
shared_name*(adam/sequential_2_conv2d_4_bias_momentum
�
<adam/sequential_2_conv2d_4_bias_momentum/Read/ReadVariableOpReadVariableOp(adam/sequential_2_conv2d_4_bias_momentum*
_output_shapes
:*
dtype0
�
&Variable_24/Initializer/ReadVariableOpReadVariableOp(adam/sequential_2_conv2d_4_bias_momentum*
_class
loc:@Variable_24*
_output_shapes
:*
dtype0
�
Variable_24VarHandleOp*
_class
loc:@Variable_24*
_output_shapes
: *

debug_nameVariable_24/*
dtype0*
shape:*
shared_nameVariable_24
g
,Variable_24/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_24*
_output_shapes
: 
h
Variable_24/AssignAssignVariableOpVariable_24&Variable_24/Initializer/ReadVariableOp*
dtype0
g
Variable_24/Read/ReadVariableOpReadVariableOpVariable_24*
_output_shapes
:*
dtype0
�
*adam/sequential_2_conv2d_4_kernel_velocityVarHandleOp*
_output_shapes
: *;

debug_name-+adam/sequential_2_conv2d_4_kernel_velocity/*
dtype0*
shape:*;
shared_name,*adam/sequential_2_conv2d_4_kernel_velocity
�
>adam/sequential_2_conv2d_4_kernel_velocity/Read/ReadVariableOpReadVariableOp*adam/sequential_2_conv2d_4_kernel_velocity*&
_output_shapes
:*
dtype0
�
&Variable_25/Initializer/ReadVariableOpReadVariableOp*adam/sequential_2_conv2d_4_kernel_velocity*
_class
loc:@Variable_25*&
_output_shapes
:*
dtype0
�
Variable_25VarHandleOp*
_class
loc:@Variable_25*
_output_shapes
: *

debug_nameVariable_25/*
dtype0*
shape:*
shared_nameVariable_25
g
,Variable_25/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_25*
_output_shapes
: 
h
Variable_25/AssignAssignVariableOpVariable_25&Variable_25/Initializer/ReadVariableOp*
dtype0
s
Variable_25/Read/ReadVariableOpReadVariableOpVariable_25*&
_output_shapes
:*
dtype0
�
*adam/sequential_2_conv2d_4_kernel_momentumVarHandleOp*
_output_shapes
: *;

debug_name-+adam/sequential_2_conv2d_4_kernel_momentum/*
dtype0*
shape:*;
shared_name,*adam/sequential_2_conv2d_4_kernel_momentum
�
>adam/sequential_2_conv2d_4_kernel_momentum/Read/ReadVariableOpReadVariableOp*adam/sequential_2_conv2d_4_kernel_momentum*&
_output_shapes
:*
dtype0
�
&Variable_26/Initializer/ReadVariableOpReadVariableOp*adam/sequential_2_conv2d_4_kernel_momentum*
_class
loc:@Variable_26*&
_output_shapes
:*
dtype0
�
Variable_26VarHandleOp*
_class
loc:@Variable_26*
_output_shapes
: *

debug_nameVariable_26/*
dtype0*
shape:*
shared_nameVariable_26
g
,Variable_26/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_26*
_output_shapes
: 
h
Variable_26/AssignAssignVariableOpVariable_26&Variable_26/Initializer/ReadVariableOp*
dtype0
s
Variable_26/Read/ReadVariableOpReadVariableOpVariable_26*&
_output_shapes
:*
dtype0
�
adam/learning_rateVarHandleOp*
_output_shapes
: *#

debug_nameadam/learning_rate/*
dtype0*
shape: *#
shared_nameadam/learning_rate
q
&adam/learning_rate/Read/ReadVariableOpReadVariableOpadam/learning_rate*
_output_shapes
: *
dtype0
�
&Variable_27/Initializer/ReadVariableOpReadVariableOpadam/learning_rate*
_class
loc:@Variable_27*
_output_shapes
: *
dtype0
�
Variable_27VarHandleOp*
_class
loc:@Variable_27*
_output_shapes
: *

debug_nameVariable_27/*
dtype0*
shape: *
shared_nameVariable_27
g
,Variable_27/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_27*
_output_shapes
: 
h
Variable_27/AssignAssignVariableOpVariable_27&Variable_27/Initializer/ReadVariableOp*
dtype0
c
Variable_27/Read/ReadVariableOpReadVariableOpVariable_27*
_output_shapes
: *
dtype0
�
adam/iterationVarHandleOp*
_output_shapes
: *

debug_nameadam/iteration/*
dtype0	*
shape: *
shared_nameadam/iteration
i
"adam/iteration/Read/ReadVariableOpReadVariableOpadam/iteration*
_output_shapes
: *
dtype0	
�
&Variable_28/Initializer/ReadVariableOpReadVariableOpadam/iteration*
_class
loc:@Variable_28*
_output_shapes
: *
dtype0	
�
Variable_28VarHandleOp*
_class
loc:@Variable_28*
_output_shapes
: *

debug_nameVariable_28/*
dtype0	*
shape: *
shared_nameVariable_28
g
,Variable_28/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_28*
_output_shapes
: 
h
Variable_28/AssignAssignVariableOpVariable_28&Variable_28/Initializer/ReadVariableOp*
dtype0	
c
Variable_28/Read/ReadVariableOpReadVariableOpVariable_28*
_output_shapes
: *
dtype0	

NoOpNoOp
�.
Const_2Const"/device:CPU:0*
_output_shapes
: *
dtype0*�.
value�.B�. B�-
-
	model
__call__

signatures*
�
_functional
	optimizer
_default_save_signature
_inbound_nodes
_outbound_nodes
	_losses

	_loss_ids
_losses_override
_layers
_build_shapes_dict*

trace_0
trace_1* 
* 
�
_tracked
_inbound_nodes
_outbound_nodes
_losses
_losses_override
_operations
_layers
_build_shapes_dict
output_names
_default_save_signature*
�

_variables
_trainable_variables
 _trainable_variables_indices

iterations
_learning_rate

_momentums
 _velocities*

!trace_0* 
* 
* 
* 
* 
* 
R
"0
#1
$2
%3
&4
'5
(6
)7
*8
+9
,10*
* 
 
-	capture_0
.	capture_1* 
 
-	capture_0
.	capture_1* 
* 
* 
* 
* 
* 
R
"0
#1
$2
%3
&4
'5
(6
)7
*8
+9
,10*
R
"0
#1
$2
%3
&4
'5
(6
)7
*8
+9
,10*
* 
* 

/trace_0* 
�
0
1
02
13
24
35
46
57
68
79
810
911
:12
;13
<14
=15
>16
?17*
<
@0
A1
B2
C3
D4
E5
F6
G7*
* 
ZT
VARIABLE_VALUEVariable_285model/optimizer/iterations/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEVariable_279model/optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
 
-	capture_0
.	capture_1* 
]
H_inbound_nodes
I_outbound_nodes
J_losses
K	_loss_ids
L_losses_override* 
u
M_inbound_nodes
N_outbound_nodes
O_losses
P	_loss_ids
Q_losses_override
R_build_shapes_dict* 
�
S
adapt_mean
Tadapt_variance
	Ucount
V_inbound_nodes
W_outbound_nodes
X_losses
Y	_loss_ids
Z_losses_override
[_reduce_axis_mask
\_broadcast_shape
]_build_shapes_dict*
�
@_kernel
Abias
^_inbound_nodes
__outbound_nodes
`_losses
a	_loss_ids
b_losses_override
c_build_shapes_dict*
u
d_inbound_nodes
e_outbound_nodes
f_losses
g	_loss_ids
h_losses_override
i_build_shapes_dict* 
�
B_kernel
Cbias
j_inbound_nodes
k_outbound_nodes
l_losses
m	_loss_ids
n_losses_override
o_build_shapes_dict*
u
p_inbound_nodes
q_outbound_nodes
r_losses
s	_loss_ids
t_losses_override
u_build_shapes_dict* 
u
v_inbound_nodes
w_outbound_nodes
x_losses
y	_loss_ids
z_losses_override
{_build_shapes_dict* 
�
D_kernel
Ebias
|_inbound_nodes
}_outbound_nodes
~_losses
	_loss_ids
�_losses_override
�_build_shapes_dict*
{
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict* 
�
F_kernel
Gbias
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict*
* 
* 
 
-	capture_0
.	capture_1* 
\V
VARIABLE_VALUEVariable_267model/optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEVariable_257model/optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEVariable_247model/optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEVariable_237model/optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEVariable_227model/optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEVariable_217model/optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEVariable_207model/optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEVariable_197model/optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEVariable_188model/optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEVariable_178model/optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEVariable_168model/optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEVariable_158model/optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEVariable_148model/optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEVariable_138model/optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEVariable_128model/optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEVariable_118model/optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEVariable_10Amodel/optimizer/_trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE
Variable_9Amodel/optimizer/_trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE
Variable_8Amodel/optimizer/_trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE
Variable_7Amodel/optimizer/_trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE
Variable_6Amodel/optimizer/_trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE
Variable_5Amodel/optimizer/_trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE
Variable_4Amodel/optimizer/_trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE
Variable_3Amodel/optimizer/_trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
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
YS
VARIABLE_VALUE
Variable_25model/_layers/2/adapt_mean/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUE
Variable_19model/_layers/2/adapt_variance/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEVariable0model/_layers/2/count/.ATTRIBUTES/VARIABLE_VALUE*
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
�
StatefulPartitionedCallStatefulPartitionedCallsaver_filenameVariable_28Variable_27Variable_26Variable_25Variable_24Variable_23Variable_22Variable_21Variable_20Variable_19Variable_18Variable_17Variable_16Variable_15Variable_14Variable_13Variable_12Variable_11Variable_10
Variable_9
Variable_8
Variable_7
Variable_6
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1VariableConst_2**
Tin#
!2*
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
GPU 2J 8� *'
f"R 
__inference__traced_save_34786
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameVariable_28Variable_27Variable_26Variable_25Variable_24Variable_23Variable_22Variable_21Variable_20Variable_19Variable_18Variable_17Variable_16Variable_15Variable_14Variable_13Variable_12Variable_11Variable_10
Variable_9
Variable_8
Variable_7
Variable_6
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1Variable*)
Tin"
 2*
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
GPU 2J 8� **
f%R#
!__inference__traced_restore_34882��
�I
�	
!__inference_serving_default_34474

inputs*
&functional_2_1_normalization_2_1_sub_y+
'functional_2_1_normalization_2_1_sqrt_xW
=functional_2_1_conv2d_4_1_convolution_readvariableop_resource:G
9functional_2_1_conv2d_4_1_reshape_readvariableop_resource:W
=functional_2_1_conv2d_5_1_convolution_readvariableop_resource:G
9functional_2_1_conv2d_5_1_reshape_readvariableop_resource:G
5functional_2_1_dense_4_1_cast_readvariableop_resource:@@B
4functional_2_1_dense_4_1_add_readvariableop_resource:@G
5functional_2_1_dense_5_1_cast_readvariableop_resource:@B
4functional_2_1_dense_5_1_add_readvariableop_resource:
identity��0functional_2_1/conv2d_4_1/Reshape/ReadVariableOp�4functional_2_1/conv2d_4_1/convolution/ReadVariableOp�0functional_2_1/conv2d_5_1/Reshape/ReadVariableOp�4functional_2_1/conv2d_5_1/convolution/ReadVariableOp�+functional_2_1/dense_4_1/Add/ReadVariableOp�,functional_2_1/dense_4_1/Cast/ReadVariableOp�+functional_2_1/dense_5_1/Add/ReadVariableOp�,functional_2_1/dense_5_1/Cast/ReadVariableOpv
%functional_2_1/resizing_1/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      �
/functional_2_1/resizing_1/resize/ResizeBilinearResizeBilinearinputs.functional_2_1/resizing_1/resize/size:output:0*
T0*/
_output_shapes
:���������*
half_pixel_centers(�
$functional_2_1/normalization_2_1/SubSub@functional_2_1/resizing_1/resize/ResizeBilinear:resized_images:0&functional_2_1_normalization_2_1_sub_y*
T0*/
_output_shapes
:����������
%functional_2_1/normalization_2_1/SqrtSqrt'functional_2_1_normalization_2_1_sqrt_x*
T0*&
_output_shapes
:k
&functional_2_1/normalization_2_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
(functional_2_1/normalization_2_1/MaximumMaximum)functional_2_1/normalization_2_1/Sqrt:y:0/functional_2_1/normalization_2_1/Const:output:0*
T0*&
_output_shapes
:�
(functional_2_1/normalization_2_1/truedivRealDiv(functional_2_1/normalization_2_1/Sub:z:0,functional_2_1/normalization_2_1/Maximum:z:0*
T0*/
_output_shapes
:����������
4functional_2_1/conv2d_4_1/convolution/ReadVariableOpReadVariableOp=functional_2_1_conv2d_4_1_convolution_readvariableop_resource*&
_output_shapes
:*
dtype0�
%functional_2_1/conv2d_4_1/convolutionConv2D,functional_2_1/normalization_2_1/truediv:z:0<functional_2_1/conv2d_4_1/convolution/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
0functional_2_1/conv2d_4_1/Reshape/ReadVariableOpReadVariableOp9functional_2_1_conv2d_4_1_reshape_readvariableop_resource*
_output_shapes
:*
dtype0�
'functional_2_1/conv2d_4_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
!functional_2_1/conv2d_4_1/ReshapeReshape8functional_2_1/conv2d_4_1/Reshape/ReadVariableOp:value:00functional_2_1/conv2d_4_1/Reshape/shape:output:0*
T0*&
_output_shapes
:�
functional_2_1/conv2d_4_1/addAddV2.functional_2_1/conv2d_4_1/convolution:output:0*functional_2_1/conv2d_4_1/Reshape:output:0*
T0*/
_output_shapes
:����������
functional_2_1/conv2d_4_1/ReluRelu!functional_2_1/conv2d_4_1/add:z:0*
T0*/
_output_shapes
:����������
*functional_2_1/max_pooling2d_4_1/MaxPool2dMaxPool,functional_2_1/conv2d_4_1/Relu:activations:0*/
_output_shapes
:���������*
ksize
*
paddingVALID*
strides
�
4functional_2_1/conv2d_5_1/convolution/ReadVariableOpReadVariableOp=functional_2_1_conv2d_5_1_convolution_readvariableop_resource*&
_output_shapes
:*
dtype0�
%functional_2_1/conv2d_5_1/convolutionConv2D3functional_2_1/max_pooling2d_4_1/MaxPool2d:output:0<functional_2_1/conv2d_5_1/convolution/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
0functional_2_1/conv2d_5_1/Reshape/ReadVariableOpReadVariableOp9functional_2_1_conv2d_5_1_reshape_readvariableop_resource*
_output_shapes
:*
dtype0�
'functional_2_1/conv2d_5_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
!functional_2_1/conv2d_5_1/ReshapeReshape8functional_2_1/conv2d_5_1/Reshape/ReadVariableOp:value:00functional_2_1/conv2d_5_1/Reshape/shape:output:0*
T0*&
_output_shapes
:�
functional_2_1/conv2d_5_1/addAddV2.functional_2_1/conv2d_5_1/convolution:output:0*functional_2_1/conv2d_5_1/Reshape:output:0*
T0*/
_output_shapes
:����������
functional_2_1/conv2d_5_1/ReluRelu!functional_2_1/conv2d_5_1/add:z:0*
T0*/
_output_shapes
:����������
*functional_2_1/max_pooling2d_5_1/MaxPool2dMaxPool,functional_2_1/conv2d_5_1/Relu:activations:0*/
_output_shapes
:���������*
ksize
*
paddingVALID*
strides
y
(functional_2_1/flatten_2_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
"functional_2_1/flatten_2_1/ReshapeReshape3functional_2_1/max_pooling2d_5_1/MaxPool2d:output:01functional_2_1/flatten_2_1/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@�
,functional_2_1/dense_4_1/Cast/ReadVariableOpReadVariableOp5functional_2_1_dense_4_1_cast_readvariableop_resource*
_output_shapes

:@@*
dtype0�
functional_2_1/dense_4_1/MatMulMatMul+functional_2_1/flatten_2_1/Reshape:output:04functional_2_1/dense_4_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
+functional_2_1/dense_4_1/Add/ReadVariableOpReadVariableOp4functional_2_1_dense_4_1_add_readvariableop_resource*
_output_shapes
:@*
dtype0�
functional_2_1/dense_4_1/AddAddV2)functional_2_1/dense_4_1/MatMul:product:03functional_2_1/dense_4_1/Add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@y
functional_2_1/dense_4_1/ReluRelu functional_2_1/dense_4_1/Add:z:0*
T0*'
_output_shapes
:���������@�
,functional_2_1/dense_5_1/Cast/ReadVariableOpReadVariableOp5functional_2_1_dense_5_1_cast_readvariableop_resource*
_output_shapes

:@*
dtype0�
functional_2_1/dense_5_1/MatMulMatMul+functional_2_1/dense_4_1/Relu:activations:04functional_2_1/dense_5_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
+functional_2_1/dense_5_1/Add/ReadVariableOpReadVariableOp4functional_2_1_dense_5_1_add_readvariableop_resource*
_output_shapes
:*
dtype0�
functional_2_1/dense_5_1/AddAddV2)functional_2_1/dense_5_1/MatMul:product:03functional_2_1/dense_5_1/Add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
 functional_2_1/dense_5_1/SoftmaxSoftmax functional_2_1/dense_5_1/Add:z:0*
T0*'
_output_shapes
:���������y
IdentityIdentity*functional_2_1/dense_5_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp1^functional_2_1/conv2d_4_1/Reshape/ReadVariableOp5^functional_2_1/conv2d_4_1/convolution/ReadVariableOp1^functional_2_1/conv2d_5_1/Reshape/ReadVariableOp5^functional_2_1/conv2d_5_1/convolution/ReadVariableOp,^functional_2_1/dense_4_1/Add/ReadVariableOp-^functional_2_1/dense_4_1/Cast/ReadVariableOp,^functional_2_1/dense_5_1/Add/ReadVariableOp-^functional_2_1/dense_5_1/Cast/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:���������::: : : : : : : : 2d
0functional_2_1/conv2d_4_1/Reshape/ReadVariableOp0functional_2_1/conv2d_4_1/Reshape/ReadVariableOp2l
4functional_2_1/conv2d_4_1/convolution/ReadVariableOp4functional_2_1/conv2d_4_1/convolution/ReadVariableOp2d
0functional_2_1/conv2d_5_1/Reshape/ReadVariableOp0functional_2_1/conv2d_5_1/Reshape/ReadVariableOp2l
4functional_2_1/conv2d_5_1/convolution/ReadVariableOp4functional_2_1/conv2d_5_1/convolution/ReadVariableOp2Z
+functional_2_1/dense_4_1/Add/ReadVariableOp+functional_2_1/dense_4_1/Add/ReadVariableOp2\
,functional_2_1/dense_4_1/Cast/ReadVariableOp,functional_2_1/dense_4_1/Cast/ReadVariableOp2Z
+functional_2_1/dense_5_1/Add/ReadVariableOp+functional_2_1/dense_5_1/Add/ReadVariableOp2\
,functional_2_1/dense_5_1/Cast/ReadVariableOp,functional_2_1/dense_5_1/Cast/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::($
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
resource
�
�
!__inference__traced_restore_34882
file_prefix&
assignvariableop_variable_28:	 (
assignvariableop_1_variable_27: 8
assignvariableop_2_variable_26:8
assignvariableop_3_variable_25:,
assignvariableop_4_variable_24:,
assignvariableop_5_variable_23:8
assignvariableop_6_variable_22:8
assignvariableop_7_variable_21:,
assignvariableop_8_variable_20:,
assignvariableop_9_variable_19:1
assignvariableop_10_variable_18:@@1
assignvariableop_11_variable_17:@@-
assignvariableop_12_variable_16:@-
assignvariableop_13_variable_15:@1
assignvariableop_14_variable_14:@1
assignvariableop_15_variable_13:@-
assignvariableop_16_variable_12:-
assignvariableop_17_variable_11:9
assignvariableop_18_variable_10:,
assignvariableop_19_variable_9:8
assignvariableop_20_variable_8:,
assignvariableop_21_variable_7:0
assignvariableop_22_variable_6:@@,
assignvariableop_23_variable_5:@0
assignvariableop_24_variable_4:@,
assignvariableop_25_variable_3:,
assignvariableop_26_variable_2:,
assignvariableop_27_variable_1:&
assignvariableop_28_variable:	 
identity_30��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B5model/optimizer/iterations/.ATTRIBUTES/VARIABLE_VALUEB9model/optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB7model/optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB7model/optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB7model/optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB7model/optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB7model/optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB7model/optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB7model/optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB7model/optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB8model/optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB8model/optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB8model/optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB8model/optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB8model/optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB8model/optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB8model/optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB8model/optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEBAmodel/optimizer/_trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEBAmodel/optimizer/_trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEBAmodel/optimizer/_trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEBAmodel/optimizer/_trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEBAmodel/optimizer/_trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEBAmodel/optimizer/_trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEBAmodel/optimizer/_trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEBAmodel/optimizer/_trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB5model/_layers/2/adapt_mean/.ATTRIBUTES/VARIABLE_VALUEB9model/_layers/2/adapt_variance/.ATTRIBUTES/VARIABLE_VALUEB0model/_layers/2/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapesz
x::::::::::::::::::::::::::::::*,
dtypes"
 2		[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_variable_28Identity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_variable_27Identity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_variable_26Identity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_variable_25Identity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_variable_24Identity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_variable_23Identity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_variable_22Identity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_variable_21Identity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_variable_20Identity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_variable_19Identity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_variable_18Identity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_variable_17Identity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpassignvariableop_12_variable_16Identity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpassignvariableop_13_variable_15Identity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_variable_14Identity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_variable_13Identity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_variable_12Identity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpassignvariableop_17_variable_11Identity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOpassignvariableop_18_variable_10Identity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOpassignvariableop_19_variable_9Identity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOpassignvariableop_20_variable_8Identity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpassignvariableop_21_variable_7Identity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOpassignvariableop_22_variable_6Identity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOpassignvariableop_23_variable_5Identity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpassignvariableop_24_variable_4Identity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOpassignvariableop_25_variable_3Identity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOpassignvariableop_26_variable_2Identity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpassignvariableop_27_variable_1Identity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_28AssignVariableOpassignvariableop_28_variableIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_29Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_30IdentityIdentity_29:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_30Identity_30:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_28AssignVariableOp_282(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:+'
%
_user_specified_nameVariable_28:+'
%
_user_specified_nameVariable_27:+'
%
_user_specified_nameVariable_26:+'
%
_user_specified_nameVariable_25:+'
%
_user_specified_nameVariable_24:+'
%
_user_specified_nameVariable_23:+'
%
_user_specified_nameVariable_22:+'
%
_user_specified_nameVariable_21:+	'
%
_user_specified_nameVariable_20:+
'
%
_user_specified_nameVariable_19:+'
%
_user_specified_nameVariable_18:+'
%
_user_specified_nameVariable_17:+'
%
_user_specified_nameVariable_16:+'
%
_user_specified_nameVariable_15:+'
%
_user_specified_nameVariable_14:+'
%
_user_specified_nameVariable_13:+'
%
_user_specified_nameVariable_12:+'
%
_user_specified_nameVariable_11:+'
%
_user_specified_nameVariable_10:*&
$
_user_specified_name
Variable_9:*&
$
_user_specified_name
Variable_8:*&
$
_user_specified_name
Variable_7:*&
$
_user_specified_name
Variable_6:*&
$
_user_specified_name
Variable_5:*&
$
_user_specified_name
Variable_4:*&
$
_user_specified_name
Variable_3:*&
$
_user_specified_name
Variable_2:*&
$
_user_specified_name
Variable_1:($
"
_user_specified_name
Variable
��
�
__inference__traced_save_34786
file_prefix,
"read_disablecopyonread_variable_28:	 .
$read_1_disablecopyonread_variable_27: >
$read_2_disablecopyonread_variable_26:>
$read_3_disablecopyonread_variable_25:2
$read_4_disablecopyonread_variable_24:2
$read_5_disablecopyonread_variable_23:>
$read_6_disablecopyonread_variable_22:>
$read_7_disablecopyonread_variable_21:2
$read_8_disablecopyonread_variable_20:2
$read_9_disablecopyonread_variable_19:7
%read_10_disablecopyonread_variable_18:@@7
%read_11_disablecopyonread_variable_17:@@3
%read_12_disablecopyonread_variable_16:@3
%read_13_disablecopyonread_variable_15:@7
%read_14_disablecopyonread_variable_14:@7
%read_15_disablecopyonread_variable_13:@3
%read_16_disablecopyonread_variable_12:3
%read_17_disablecopyonread_variable_11:?
%read_18_disablecopyonread_variable_10:2
$read_19_disablecopyonread_variable_9:>
$read_20_disablecopyonread_variable_8:2
$read_21_disablecopyonread_variable_7:6
$read_22_disablecopyonread_variable_6:@@2
$read_23_disablecopyonread_variable_5:@6
$read_24_disablecopyonread_variable_4:@2
$read_25_disablecopyonread_variable_3:2
$read_26_disablecopyonread_variable_2:2
$read_27_disablecopyonread_variable_1:,
"read_28_disablecopyonread_variable:	 
savev2_const_2
identity_59��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
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
: e
Read/DisableCopyOnReadDisableCopyOnRead"read_disablecopyonread_variable_28*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp"read_disablecopyonread_variable_28^Read/DisableCopyOnRead*
_output_shapes
: *
dtype0	R
IdentityIdentityRead/ReadVariableOp:value:0*
T0	*
_output_shapes
: Y

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0	*
_output_shapes
: i
Read_1/DisableCopyOnReadDisableCopyOnRead$read_1_disablecopyonread_variable_27*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp$read_1_disablecopyonread_variable_27^Read_1/DisableCopyOnRead*
_output_shapes
: *
dtype0V

Identity_2IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
: [

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
: i
Read_2/DisableCopyOnReadDisableCopyOnRead$read_2_disablecopyonread_variable_26*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp$read_2_disablecopyonread_variable_26^Read_2/DisableCopyOnRead*&
_output_shapes
:*
dtype0f

Identity_4IdentityRead_2/ReadVariableOp:value:0*
T0*&
_output_shapes
:k

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*&
_output_shapes
:i
Read_3/DisableCopyOnReadDisableCopyOnRead$read_3_disablecopyonread_variable_25*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp$read_3_disablecopyonread_variable_25^Read_3/DisableCopyOnRead*&
_output_shapes
:*
dtype0f

Identity_6IdentityRead_3/ReadVariableOp:value:0*
T0*&
_output_shapes
:k

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*&
_output_shapes
:i
Read_4/DisableCopyOnReadDisableCopyOnRead$read_4_disablecopyonread_variable_24*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp$read_4_disablecopyonread_variable_24^Read_4/DisableCopyOnRead*
_output_shapes
:*
dtype0Z

Identity_8IdentityRead_4/ReadVariableOp:value:0*
T0*
_output_shapes
:_

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:i
Read_5/DisableCopyOnReadDisableCopyOnRead$read_5_disablecopyonread_variable_23*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp$read_5_disablecopyonread_variable_23^Read_5/DisableCopyOnRead*
_output_shapes
:*
dtype0[
Identity_10IdentityRead_5/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:i
Read_6/DisableCopyOnReadDisableCopyOnRead$read_6_disablecopyonread_variable_22*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp$read_6_disablecopyonread_variable_22^Read_6/DisableCopyOnRead*&
_output_shapes
:*
dtype0g
Identity_12IdentityRead_6/ReadVariableOp:value:0*
T0*&
_output_shapes
:m
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*&
_output_shapes
:i
Read_7/DisableCopyOnReadDisableCopyOnRead$read_7_disablecopyonread_variable_21*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp$read_7_disablecopyonread_variable_21^Read_7/DisableCopyOnRead*&
_output_shapes
:*
dtype0g
Identity_14IdentityRead_7/ReadVariableOp:value:0*
T0*&
_output_shapes
:m
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*&
_output_shapes
:i
Read_8/DisableCopyOnReadDisableCopyOnRead$read_8_disablecopyonread_variable_20*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp$read_8_disablecopyonread_variable_20^Read_8/DisableCopyOnRead*
_output_shapes
:*
dtype0[
Identity_16IdentityRead_8/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:i
Read_9/DisableCopyOnReadDisableCopyOnRead$read_9_disablecopyonread_variable_19*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp$read_9_disablecopyonread_variable_19^Read_9/DisableCopyOnRead*
_output_shapes
:*
dtype0[
Identity_18IdentityRead_9/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:k
Read_10/DisableCopyOnReadDisableCopyOnRead%read_10_disablecopyonread_variable_18*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp%read_10_disablecopyonread_variable_18^Read_10/DisableCopyOnRead*
_output_shapes

:@@*
dtype0`
Identity_20IdentityRead_10/ReadVariableOp:value:0*
T0*
_output_shapes

:@@e
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes

:@@k
Read_11/DisableCopyOnReadDisableCopyOnRead%read_11_disablecopyonread_variable_17*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp%read_11_disablecopyonread_variable_17^Read_11/DisableCopyOnRead*
_output_shapes

:@@*
dtype0`
Identity_22IdentityRead_11/ReadVariableOp:value:0*
T0*
_output_shapes

:@@e
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes

:@@k
Read_12/DisableCopyOnReadDisableCopyOnRead%read_12_disablecopyonread_variable_16*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp%read_12_disablecopyonread_variable_16^Read_12/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_24IdentityRead_12/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
:@k
Read_13/DisableCopyOnReadDisableCopyOnRead%read_13_disablecopyonread_variable_15*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp%read_13_disablecopyonread_variable_15^Read_13/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_26IdentityRead_13/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:@k
Read_14/DisableCopyOnReadDisableCopyOnRead%read_14_disablecopyonread_variable_14*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp%read_14_disablecopyonread_variable_14^Read_14/DisableCopyOnRead*
_output_shapes

:@*
dtype0`
Identity_28IdentityRead_14/ReadVariableOp:value:0*
T0*
_output_shapes

:@e
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes

:@k
Read_15/DisableCopyOnReadDisableCopyOnRead%read_15_disablecopyonread_variable_13*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp%read_15_disablecopyonread_variable_13^Read_15/DisableCopyOnRead*
_output_shapes

:@*
dtype0`
Identity_30IdentityRead_15/ReadVariableOp:value:0*
T0*
_output_shapes

:@e
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes

:@k
Read_16/DisableCopyOnReadDisableCopyOnRead%read_16_disablecopyonread_variable_12*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp%read_16_disablecopyonread_variable_12^Read_16/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_32IdentityRead_16/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:k
Read_17/DisableCopyOnReadDisableCopyOnRead%read_17_disablecopyonread_variable_11*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp%read_17_disablecopyonread_variable_11^Read_17/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_34IdentityRead_17/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:k
Read_18/DisableCopyOnReadDisableCopyOnRead%read_18_disablecopyonread_variable_10*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp%read_18_disablecopyonread_variable_10^Read_18/DisableCopyOnRead*&
_output_shapes
:*
dtype0h
Identity_36IdentityRead_18/ReadVariableOp:value:0*
T0*&
_output_shapes
:m
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*&
_output_shapes
:j
Read_19/DisableCopyOnReadDisableCopyOnRead$read_19_disablecopyonread_variable_9*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp$read_19_disablecopyonread_variable_9^Read_19/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_38IdentityRead_19/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:j
Read_20/DisableCopyOnReadDisableCopyOnRead$read_20_disablecopyonread_variable_8*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp$read_20_disablecopyonread_variable_8^Read_20/DisableCopyOnRead*&
_output_shapes
:*
dtype0h
Identity_40IdentityRead_20/ReadVariableOp:value:0*
T0*&
_output_shapes
:m
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*&
_output_shapes
:j
Read_21/DisableCopyOnReadDisableCopyOnRead$read_21_disablecopyonread_variable_7*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp$read_21_disablecopyonread_variable_7^Read_21/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_42IdentityRead_21/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:j
Read_22/DisableCopyOnReadDisableCopyOnRead$read_22_disablecopyonread_variable_6*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp$read_22_disablecopyonread_variable_6^Read_22/DisableCopyOnRead*
_output_shapes

:@@*
dtype0`
Identity_44IdentityRead_22/ReadVariableOp:value:0*
T0*
_output_shapes

:@@e
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes

:@@j
Read_23/DisableCopyOnReadDisableCopyOnRead$read_23_disablecopyonread_variable_5*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp$read_23_disablecopyonread_variable_5^Read_23/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_46IdentityRead_23/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
:@j
Read_24/DisableCopyOnReadDisableCopyOnRead$read_24_disablecopyonread_variable_4*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp$read_24_disablecopyonread_variable_4^Read_24/DisableCopyOnRead*
_output_shapes

:@*
dtype0`
Identity_48IdentityRead_24/ReadVariableOp:value:0*
T0*
_output_shapes

:@e
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes

:@j
Read_25/DisableCopyOnReadDisableCopyOnRead$read_25_disablecopyonread_variable_3*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp$read_25_disablecopyonread_variable_3^Read_25/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_50IdentityRead_25/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
:j
Read_26/DisableCopyOnReadDisableCopyOnRead$read_26_disablecopyonread_variable_2*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp$read_26_disablecopyonread_variable_2^Read_26/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_52IdentityRead_26/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
:j
Read_27/DisableCopyOnReadDisableCopyOnRead$read_27_disablecopyonread_variable_1*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp$read_27_disablecopyonread_variable_1^Read_27/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_54IdentityRead_27/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
:h
Read_28/DisableCopyOnReadDisableCopyOnRead"read_28_disablecopyonread_variable*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp"read_28_disablecopyonread_variable^Read_28/DisableCopyOnRead*
_output_shapes
: *
dtype0	X
Identity_56IdentityRead_28/ReadVariableOp:value:0*
T0	*
_output_shapes
: ]
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0	*
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
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B5model/optimizer/iterations/.ATTRIBUTES/VARIABLE_VALUEB9model/optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB7model/optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB7model/optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB7model/optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB7model/optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB7model/optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB7model/optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB7model/optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB7model/optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB8model/optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB8model/optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB8model/optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB8model/optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB8model/optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB8model/optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB8model/optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB8model/optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEBAmodel/optimizer/_trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEBAmodel/optimizer/_trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEBAmodel/optimizer/_trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEBAmodel/optimizer/_trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEBAmodel/optimizer/_trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEBAmodel/optimizer/_trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEBAmodel/optimizer/_trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEBAmodel/optimizer/_trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB5model/_layers/2/adapt_mean/.ATTRIBUTES/VARIABLE_VALUEB9model/_layers/2/adapt_variance/.ATTRIBUTES/VARIABLE_VALUEB0model/_layers/2/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0savev2_const_2"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *,
dtypes"
 2		�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_58Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_59IdentityIdentity_58:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_59Identity_59:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
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
Read_28/ReadVariableOpRead_28/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:+'
%
_user_specified_nameVariable_28:+'
%
_user_specified_nameVariable_27:+'
%
_user_specified_nameVariable_26:+'
%
_user_specified_nameVariable_25:+'
%
_user_specified_nameVariable_24:+'
%
_user_specified_nameVariable_23:+'
%
_user_specified_nameVariable_22:+'
%
_user_specified_nameVariable_21:+	'
%
_user_specified_nameVariable_20:+
'
%
_user_specified_nameVariable_19:+'
%
_user_specified_nameVariable_18:+'
%
_user_specified_nameVariable_17:+'
%
_user_specified_nameVariable_16:+'
%
_user_specified_nameVariable_15:+'
%
_user_specified_nameVariable_14:+'
%
_user_specified_nameVariable_13:+'
%
_user_specified_nameVariable_12:+'
%
_user_specified_nameVariable_11:+'
%
_user_specified_nameVariable_10:*&
$
_user_specified_name
Variable_9:*&
$
_user_specified_name
Variable_8:*&
$
_user_specified_name
Variable_7:*&
$
_user_specified_name
Variable_6:*&
$
_user_specified_name
Variable_5:*&
$
_user_specified_name
Variable_4:*&
$
_user_specified_name
Variable_3:*&
$
_user_specified_name
Variable_2:*&
$
_user_specified_name
Variable_1:($
"
_user_specified_name
Variable:?;

_output_shapes
: 
!
_user_specified_name	Const_2
�I
�	
!__inference_serving_default_34425

inputs*
&sequential_2_1_normalization_2_1_sub_y+
'sequential_2_1_normalization_2_1_sqrt_xW
=sequential_2_1_conv2d_4_1_convolution_readvariableop_resource:G
9sequential_2_1_conv2d_4_1_reshape_readvariableop_resource:W
=sequential_2_1_conv2d_5_1_convolution_readvariableop_resource:G
9sequential_2_1_conv2d_5_1_reshape_readvariableop_resource:G
5sequential_2_1_dense_4_1_cast_readvariableop_resource:@@B
4sequential_2_1_dense_4_1_add_readvariableop_resource:@G
5sequential_2_1_dense_5_1_cast_readvariableop_resource:@B
4sequential_2_1_dense_5_1_add_readvariableop_resource:
identity��0sequential_2_1/conv2d_4_1/Reshape/ReadVariableOp�4sequential_2_1/conv2d_4_1/convolution/ReadVariableOp�0sequential_2_1/conv2d_5_1/Reshape/ReadVariableOp�4sequential_2_1/conv2d_5_1/convolution/ReadVariableOp�+sequential_2_1/dense_4_1/Add/ReadVariableOp�,sequential_2_1/dense_4_1/Cast/ReadVariableOp�+sequential_2_1/dense_5_1/Add/ReadVariableOp�,sequential_2_1/dense_5_1/Cast/ReadVariableOpv
%sequential_2_1/resizing_1/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      �
/sequential_2_1/resizing_1/resize/ResizeBilinearResizeBilinearinputs.sequential_2_1/resizing_1/resize/size:output:0*
T0*/
_output_shapes
:���������*
half_pixel_centers(�
$sequential_2_1/normalization_2_1/SubSub@sequential_2_1/resizing_1/resize/ResizeBilinear:resized_images:0&sequential_2_1_normalization_2_1_sub_y*
T0*/
_output_shapes
:����������
%sequential_2_1/normalization_2_1/SqrtSqrt'sequential_2_1_normalization_2_1_sqrt_x*
T0*&
_output_shapes
:k
&sequential_2_1/normalization_2_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
(sequential_2_1/normalization_2_1/MaximumMaximum)sequential_2_1/normalization_2_1/Sqrt:y:0/sequential_2_1/normalization_2_1/Const:output:0*
T0*&
_output_shapes
:�
(sequential_2_1/normalization_2_1/truedivRealDiv(sequential_2_1/normalization_2_1/Sub:z:0,sequential_2_1/normalization_2_1/Maximum:z:0*
T0*/
_output_shapes
:����������
4sequential_2_1/conv2d_4_1/convolution/ReadVariableOpReadVariableOp=sequential_2_1_conv2d_4_1_convolution_readvariableop_resource*&
_output_shapes
:*
dtype0�
%sequential_2_1/conv2d_4_1/convolutionConv2D,sequential_2_1/normalization_2_1/truediv:z:0<sequential_2_1/conv2d_4_1/convolution/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
0sequential_2_1/conv2d_4_1/Reshape/ReadVariableOpReadVariableOp9sequential_2_1_conv2d_4_1_reshape_readvariableop_resource*
_output_shapes
:*
dtype0�
'sequential_2_1/conv2d_4_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
!sequential_2_1/conv2d_4_1/ReshapeReshape8sequential_2_1/conv2d_4_1/Reshape/ReadVariableOp:value:00sequential_2_1/conv2d_4_1/Reshape/shape:output:0*
T0*&
_output_shapes
:�
sequential_2_1/conv2d_4_1/addAddV2.sequential_2_1/conv2d_4_1/convolution:output:0*sequential_2_1/conv2d_4_1/Reshape:output:0*
T0*/
_output_shapes
:����������
sequential_2_1/conv2d_4_1/ReluRelu!sequential_2_1/conv2d_4_1/add:z:0*
T0*/
_output_shapes
:����������
*sequential_2_1/max_pooling2d_4_1/MaxPool2dMaxPool,sequential_2_1/conv2d_4_1/Relu:activations:0*/
_output_shapes
:���������*
ksize
*
paddingVALID*
strides
�
4sequential_2_1/conv2d_5_1/convolution/ReadVariableOpReadVariableOp=sequential_2_1_conv2d_5_1_convolution_readvariableop_resource*&
_output_shapes
:*
dtype0�
%sequential_2_1/conv2d_5_1/convolutionConv2D3sequential_2_1/max_pooling2d_4_1/MaxPool2d:output:0<sequential_2_1/conv2d_5_1/convolution/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
0sequential_2_1/conv2d_5_1/Reshape/ReadVariableOpReadVariableOp9sequential_2_1_conv2d_5_1_reshape_readvariableop_resource*
_output_shapes
:*
dtype0�
'sequential_2_1/conv2d_5_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
!sequential_2_1/conv2d_5_1/ReshapeReshape8sequential_2_1/conv2d_5_1/Reshape/ReadVariableOp:value:00sequential_2_1/conv2d_5_1/Reshape/shape:output:0*
T0*&
_output_shapes
:�
sequential_2_1/conv2d_5_1/addAddV2.sequential_2_1/conv2d_5_1/convolution:output:0*sequential_2_1/conv2d_5_1/Reshape:output:0*
T0*/
_output_shapes
:����������
sequential_2_1/conv2d_5_1/ReluRelu!sequential_2_1/conv2d_5_1/add:z:0*
T0*/
_output_shapes
:����������
*sequential_2_1/max_pooling2d_5_1/MaxPool2dMaxPool,sequential_2_1/conv2d_5_1/Relu:activations:0*/
_output_shapes
:���������*
ksize
*
paddingVALID*
strides
y
(sequential_2_1/flatten_2_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
"sequential_2_1/flatten_2_1/ReshapeReshape3sequential_2_1/max_pooling2d_5_1/MaxPool2d:output:01sequential_2_1/flatten_2_1/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@�
,sequential_2_1/dense_4_1/Cast/ReadVariableOpReadVariableOp5sequential_2_1_dense_4_1_cast_readvariableop_resource*
_output_shapes

:@@*
dtype0�
sequential_2_1/dense_4_1/MatMulMatMul+sequential_2_1/flatten_2_1/Reshape:output:04sequential_2_1/dense_4_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
+sequential_2_1/dense_4_1/Add/ReadVariableOpReadVariableOp4sequential_2_1_dense_4_1_add_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential_2_1/dense_4_1/AddAddV2)sequential_2_1/dense_4_1/MatMul:product:03sequential_2_1/dense_4_1/Add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@y
sequential_2_1/dense_4_1/ReluRelu sequential_2_1/dense_4_1/Add:z:0*
T0*'
_output_shapes
:���������@�
,sequential_2_1/dense_5_1/Cast/ReadVariableOpReadVariableOp5sequential_2_1_dense_5_1_cast_readvariableop_resource*
_output_shapes

:@*
dtype0�
sequential_2_1/dense_5_1/MatMulMatMul+sequential_2_1/dense_4_1/Relu:activations:04sequential_2_1/dense_5_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
+sequential_2_1/dense_5_1/Add/ReadVariableOpReadVariableOp4sequential_2_1_dense_5_1_add_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_2_1/dense_5_1/AddAddV2)sequential_2_1/dense_5_1/MatMul:product:03sequential_2_1/dense_5_1/Add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
 sequential_2_1/dense_5_1/SoftmaxSoftmax sequential_2_1/dense_5_1/Add:z:0*
T0*'
_output_shapes
:���������y
IdentityIdentity*sequential_2_1/dense_5_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp1^sequential_2_1/conv2d_4_1/Reshape/ReadVariableOp5^sequential_2_1/conv2d_4_1/convolution/ReadVariableOp1^sequential_2_1/conv2d_5_1/Reshape/ReadVariableOp5^sequential_2_1/conv2d_5_1/convolution/ReadVariableOp,^sequential_2_1/dense_4_1/Add/ReadVariableOp-^sequential_2_1/dense_4_1/Cast/ReadVariableOp,^sequential_2_1/dense_5_1/Add/ReadVariableOp-^sequential_2_1/dense_5_1/Cast/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:���������::: : : : : : : : 2d
0sequential_2_1/conv2d_4_1/Reshape/ReadVariableOp0sequential_2_1/conv2d_4_1/Reshape/ReadVariableOp2l
4sequential_2_1/conv2d_4_1/convolution/ReadVariableOp4sequential_2_1/conv2d_4_1/convolution/ReadVariableOp2d
0sequential_2_1/conv2d_5_1/Reshape/ReadVariableOp0sequential_2_1/conv2d_5_1/Reshape/ReadVariableOp2l
4sequential_2_1/conv2d_5_1/convolution/ReadVariableOp4sequential_2_1/conv2d_5_1/convolution/ReadVariableOp2Z
+sequential_2_1/dense_4_1/Add/ReadVariableOp+sequential_2_1/dense_4_1/Add/ReadVariableOp2\
,sequential_2_1/dense_4_1/Cast/ReadVariableOp,sequential_2_1/dense_4_1/Cast/ReadVariableOp2Z
+sequential_2_1/dense_5_1/Add/ReadVariableOp+sequential_2_1/dense_5_1/Add/ReadVariableOp2\
,sequential_2_1/dense_5_1/Cast/ReadVariableOp,sequential_2_1/dense_5_1/Cast/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::($
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
resource
��
�	
__inference___call___33894
x*
&sequential_2_1_normalization_2_1_sub_y+
'sequential_2_1_normalization_2_1_sqrt_xW
=sequential_2_1_conv2d_4_1_convolution_readvariableop_resource:G
9sequential_2_1_conv2d_4_1_reshape_readvariableop_resource:W
=sequential_2_1_conv2d_5_1_convolution_readvariableop_resource:G
9sequential_2_1_conv2d_5_1_reshape_readvariableop_resource:G
5sequential_2_1_dense_4_1_cast_readvariableop_resource:@@B
4sequential_2_1_dense_4_1_add_readvariableop_resource:@G
5sequential_2_1_dense_5_1_cast_readvariableop_resource:@B
4sequential_2_1_dense_5_1_add_readvariableop_resource:
identity	

identity_1

identity_2��0sequential_2_1/conv2d_4_1/Reshape/ReadVariableOp�4sequential_2_1/conv2d_4_1/convolution/ReadVariableOp�0sequential_2_1/conv2d_5_1/Reshape/ReadVariableOp�4sequential_2_1/conv2d_5_1/convolution/ReadVariableOp�+sequential_2_1/dense_4_1/Add/ReadVariableOp�,sequential_2_1/dense_4_1/Cast/ReadVariableOp�+sequential_2_1/dense_5_1/Add/ReadVariableOp�,sequential_2_1/dense_5_1/Cast/ReadVariableOp/
ReadFileReadFilex*
_output_shapes
: ~
	DecodeWav	DecodeWavReadFile:contents:0*!
_output_shapes
:	�}: *
desired_channels*
desired_samples�}k
SqueezeSqueezeDecodeWav:audio:0*
T0*
_output_shapes	
:�}*
squeeze_dims

���������d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSliceSqueeze:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�}*

begin_mask*
end_mask*
new_axis_maskT
stft/frame_lengthConst*
_output_shapes
: *
dtype0*
value
B :�Q
stft/frame_stepConst*
_output_shapes
: *
dtype0*
value	B :0R
stft/fft_lengthConst*
_output_shapes
: *
dtype0*
value
B :�Z
stft/frame/axisConst*
_output_shapes
: *
dtype0*
valueB :
���������a
stft/frame/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   �>  _
stft/frame/Size/ConstConst*
_output_shapes
:*
dtype0*
valueB:Q
stft/frame/SizeConst*
_output_shapes
: *
dtype0*
value	B :Z
stft/frame/Size_1/ConstConst*
_output_shapes
: *
dtype0*
valueB S
stft/frame/Size_1Const*
_output_shapes
: *
dtype0*
value	B : R
stft/frame/ConstConst*
_output_shapes
: *
dtype0*
value	B : S
stft/frame/sub/xConst*
_output_shapes
: *
dtype0*
value
B :�}m
stft/frame/subSubstft/frame/sub/x:output:0stft/frame_length:output:0*
T0*
_output_shapes
: n
stft/frame/floordivFloorDivstft/frame/sub:z:0stft/frame_step:output:0*
T0*
_output_shapes
: R
stft/frame/add/xConst*
_output_shapes
: *
dtype0*
value	B :l
stft/frame/addAddV2stft/frame/add/x:output:0stft/frame/floordiv:z:0*
T0*
_output_shapes
: m
stft/frame/MaximumMaximumstft/frame/Const:output:0stft/frame/add:z:0*
T0*
_output_shapes
: V
stft/frame/gcd/ConstConst*
_output_shapes
: *
dtype0*
value	B :Y
stft/frame/floordiv_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
stft/frame/floordiv_1FloorDivstft/frame_length:output:0 stft/frame/floordiv_1/y:output:0*
T0*
_output_shapes
: Y
stft/frame/floordiv_2/yConst*
_output_shapes
: *
dtype0*
value	B :~
stft/frame/floordiv_2FloorDivstft/frame_step:output:0 stft/frame/floordiv_2/y:output:0*
T0*
_output_shapes
: d
stft/frame/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:e
stft/frame/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:�}]
stft/frame/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB X
stft/frame/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
stft/frame/concatConcatV2#stft/frame/concat/values_0:output:0#stft/frame/concat/values_1:output:0#stft/frame/concat/values_2:output:0stft/frame/concat/axis:output:0*
N*
T0*
_output_shapes
:f
stft/frame/concat_1/values_0Const*
_output_shapes
:*
dtype0*
valueB:m
stft/frame/concat_1/values_1Const*
_output_shapes
:*
dtype0*
valueB"�     _
stft/frame/concat_1/values_2Const*
_output_shapes
: *
dtype0*
valueB Z
stft/frame/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
stft/frame/concat_1ConcatV2%stft/frame/concat_1/values_0:output:0%stft/frame/concat_1/values_1:output:0%stft/frame/concat_1/values_2:output:0!stft/frame/concat_1/axis:output:0*
N*
T0*
_output_shapes
:m
stft/frame/zeros_like/tensorConst*
_output_shapes
:*
dtype0*
valueB"   �>  _
stft/frame/zeros_likeConst*
_output_shapes
:*
dtype0*
valueB: t
*stft/frame/ones_like/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:\
stft/frame/ones_like/ConstConst*
_output_shapes
: *
dtype0*
value	B :�
stft/frame/ones_likeFill3stft/frame/ones_like/Shape/shape_as_tensor:output:0#stft/frame/ones_like/Const:output:0*
T0*
_output_shapes
:�
stft/frame/StridedSliceStridedSlicestrided_slice:output:0stft/frame/zeros_like:output:0stft/frame/concat:output:0stft/frame/ones_like:output:0*
Index0*
T0*
_output_shapes
:	�}�
stft/frame/ReshapeReshape stft/frame/StridedSlice:output:0stft/frame/concat_1:output:0*
T0*#
_output_shapes
:�X
stft/frame/range/startConst*
_output_shapes
: *
dtype0*
value	B : X
stft/frame/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
stft/frame/rangeRangestft/frame/range/start:output:0stft/frame/Maximum:z:0stft/frame/range/delta:output:0*
_output_shapes	
:�q
stft/frame/mulMulstft/frame/range:output:0stft/frame/floordiv_2:z:0*
T0*
_output_shapes	
:�^
stft/frame/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
stft/frame/Reshape_1/shapePackstft/frame/Maximum:z:0%stft/frame/Reshape_1/shape/1:output:0*
N*
T0*
_output_shapes
:�
stft/frame/Reshape_1Reshapestft/frame/mul:z:0#stft/frame/Reshape_1/shape:output:0*
T0*
_output_shapes
:	�Z
stft/frame/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : Z
stft/frame/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
stft/frame/range_1Range!stft/frame/range_1/start:output:0stft/frame/floordiv_1:z:0!stft/frame/range_1/delta:output:0*
_output_shapes
:@^
stft/frame/Reshape_2/shape/0Const*
_output_shapes
: *
dtype0*
value	B :�
stft/frame/Reshape_2/shapePack%stft/frame/Reshape_2/shape/0:output:0stft/frame/floordiv_1:z:0*
N*
T0*
_output_shapes
:�
stft/frame/Reshape_2Reshapestft/frame/range_1:output:0#stft/frame/Reshape_2/shape:output:0*
T0*
_output_shapes

:@�
stft/frame/add_1AddV2stft/frame/Reshape_1:output:0stft/frame/Reshape_2:output:0*
T0*
_output_shapes
:	�@\
stft/frame/Const_1Const*
_output_shapes
:*
dtype0*
valueB:U
stft/frame/Const_2Const*
_output_shapes
: *
dtype0*
valueB {
stft/frame/packedPackstft/frame/Maximum:z:0stft/frame_length:output:0*
N*
T0*
_output_shapes
:Z
stft/frame/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B :�
stft/frame/GatherV2GatherV2stft/frame/Reshape:output:0stft/frame/add_1:z:0!stft/frame/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*'
_output_shapes
:�@Z
stft/frame/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
stft/frame/concat_2ConcatV2stft/frame/Const_1:output:0stft/frame/packed:output:0stft/frame/Const_2:output:0!stft/frame/concat_2/axis:output:0*
N*
T0*
_output_shapes
:�
stft/frame/Reshape_3Reshapestft/frame/GatherV2:output:0stft/frame/concat_2:output:0*
T0*$
_output_shapes
:��[
stft/hann_window/periodicConst*
_output_shapes
: *
dtype0
*
value	B
 Zq
stft/hann_window/CastCast"stft/hann_window/periodic:output:0*

DstT0*

SrcT0
*
_output_shapes
: X
stft/hann_window/mod/yConst*
_output_shapes
: *
dtype0*
value	B :~
stft/hann_window/modFloorModstft/frame_length:output:0stft/hann_window/mod/y:output:0*
T0*
_output_shapes
: X
stft/hann_window/sub/xConst*
_output_shapes
: *
dtype0*
value	B :w
stft/hann_window/subSubstft/hann_window/sub/x:output:0stft/hann_window/mod:z:0*
T0*
_output_shapes
: q
stft/hann_window/mulMulstft/hann_window/Cast:y:0stft/hann_window/sub:z:0*
T0*
_output_shapes
: t
stft/hann_window/addAddV2stft/frame_length:output:0stft/hann_window/mul:z:0*
T0*
_output_shapes
: Z
stft/hann_window/sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :{
stft/hann_window/sub_1Substft/hann_window/add:z:0!stft/hann_window/sub_1/y:output:0*
T0*
_output_shapes
: k
stft/hann_window/Cast_1Caststft/hann_window/sub_1:z:0*

DstT0*

SrcT0*
_output_shapes
: ^
stft/hann_window/range/startConst*
_output_shapes
: *
dtype0*
value	B : ^
stft/hann_window/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
stft/hann_window/rangeRange%stft/hann_window/range/start:output:0stft/frame_length:output:0%stft/hann_window/range/delta:output:0*
_output_shapes	
:�u
stft/hann_window/Cast_2Caststft/hann_window/range:output:0*

DstT0*

SrcT0*
_output_shapes	
:�[
stft/hann_window/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��@�
stft/hann_window/mul_1Mulstft/hann_window/Const:output:0stft/hann_window/Cast_2:y:0*
T0*
_output_shapes	
:��
stft/hann_window/truedivRealDivstft/hann_window/mul_1:z:0stft/hann_window/Cast_1:y:0*
T0*
_output_shapes	
:�_
stft/hann_window/CosCosstft/hann_window/truediv:z:0*
T0*
_output_shapes	
:�]
stft/hann_window/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
stft/hann_window/mul_2Mul!stft/hann_window/mul_2/x:output:0stft/hann_window/Cos:y:0*
T0*
_output_shapes	
:�]
stft/hann_window/sub_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
stft/hann_window/sub_2Sub!stft/hann_window/sub_2/x:output:0stft/hann_window/mul_2:z:0*
T0*
_output_shapes	
:�y
stft/mulMulstft/frame/Reshape_3:output:0stft/hann_window/sub_2:z:0*
T0*$
_output_shapes
:��`
stft/rfft/packedPackstft/fft_length:output:0*
N*
T0*
_output_shapes
:_
stft/rfft/fft_lengthConst*
_output_shapes
:*
dtype0*
valueB:�d
	stft/rfftRFFTstft/mul:z:0stft/rfft/fft_length:output:0*$
_output_shapes
:��K
Abs
ComplexAbsstft/rfft:output:0*$
_output_shapes
:��l
)linear_to_mel_weight_matrix/sample_rate/xConst*
_output_shapes
: *
dtype0*
value
B :�}�
'linear_to_mel_weight_matrix/sample_rateCast2linear_to_mel_weight_matrix/sample_rate/x:output:0*

DstT0*

SrcT0*
_output_shapes
: q
,linear_to_mel_weight_matrix/lower_edge_hertzConst*
_output_shapes
: *
dtype0*
valueB
 *  �Bq
,linear_to_mel_weight_matrix/upper_edge_hertzConst*
_output_shapes
: *
dtype0*
valueB
 * ��Ef
!linear_to_mel_weight_matrix/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    j
%linear_to_mel_weight_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
#linear_to_mel_weight_matrix/truedivRealDiv+linear_to_mel_weight_matrix/sample_rate:y:0.linear_to_mel_weight_matrix/truediv/y:output:0*
T0*
_output_shapes
: k
(linear_to_mel_weight_matrix/linspace/numConst*
_output_shapes
: *
dtype0*
value
B :��
)linear_to_mel_weight_matrix/linspace/CastCast1linear_to_mel_weight_matrix/linspace/num:output:0*

DstT0*

SrcT0*
_output_shapes
: �
+linear_to_mel_weight_matrix/linspace/Cast_1Cast-linear_to_mel_weight_matrix/linspace/Cast:y:0*

DstT0*

SrcT0*
_output_shapes
: m
*linear_to_mel_weight_matrix/linspace/ShapeConst*
_output_shapes
: *
dtype0*
valueB o
,linear_to_mel_weight_matrix/linspace/Shape_1Const*
_output_shapes
: *
dtype0*
valueB �
2linear_to_mel_weight_matrix/linspace/BroadcastArgsBroadcastArgs3linear_to_mel_weight_matrix/linspace/Shape:output:05linear_to_mel_weight_matrix/linspace/Shape_1:output:0*
_output_shapes
: �
0linear_to_mel_weight_matrix/linspace/BroadcastToBroadcastTo*linear_to_mel_weight_matrix/Const:output:07linear_to_mel_weight_matrix/linspace/BroadcastArgs:r0:0*
T0*
_output_shapes
: �
2linear_to_mel_weight_matrix/linspace/BroadcastTo_1BroadcastTo'linear_to_mel_weight_matrix/truediv:z:07linear_to_mel_weight_matrix/linspace/BroadcastArgs:r0:0*
T0*
_output_shapes
: u
3linear_to_mel_weight_matrix/linspace/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : �
/linear_to_mel_weight_matrix/linspace/ExpandDims
ExpandDims9linear_to_mel_weight_matrix/linspace/BroadcastTo:output:0<linear_to_mel_weight_matrix/linspace/ExpandDims/dim:output:0*
T0*
_output_shapes
:w
5linear_to_mel_weight_matrix/linspace/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
1linear_to_mel_weight_matrix/linspace/ExpandDims_1
ExpandDims;linear_to_mel_weight_matrix/linspace/BroadcastTo_1:output:0>linear_to_mel_weight_matrix/linspace/ExpandDims_1/dim:output:0*
T0*
_output_shapes
:v
,linear_to_mel_weight_matrix/linspace/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:v
,linear_to_mel_weight_matrix/linspace/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:�
8linear_to_mel_weight_matrix/linspace/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
:linear_to_mel_weight_matrix/linspace/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
:linear_to_mel_weight_matrix/linspace/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
2linear_to_mel_weight_matrix/linspace/strided_sliceStridedSlice5linear_to_mel_weight_matrix/linspace/Shape_3:output:0Alinear_to_mel_weight_matrix/linspace/strided_slice/stack:output:0Clinear_to_mel_weight_matrix/linspace/strided_slice/stack_1:output:0Clinear_to_mel_weight_matrix/linspace/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*linear_to_mel_weight_matrix/linspace/add/yConst*
_output_shapes
: *
dtype0*
value	B : �
(linear_to_mel_weight_matrix/linspace/addAddV2;linear_to_mel_weight_matrix/linspace/strided_slice:output:03linear_to_mel_weight_matrix/linspace/add/y:output:0*
T0*
_output_shapes
: y
7linear_to_mel_weight_matrix/linspace/SelectV2/conditionConst*
_output_shapes
: *
dtype0
*
value	B
 Zq
/linear_to_mel_weight_matrix/linspace/SelectV2/tConst*
_output_shapes
: *
dtype0*
value	B : �
-linear_to_mel_weight_matrix/linspace/SelectV2SelectV2@linear_to_mel_weight_matrix/linspace/SelectV2/condition:output:08linear_to_mel_weight_matrix/linspace/SelectV2/t:output:0,linear_to_mel_weight_matrix/linspace/add:z:0*
T0*
_output_shapes
: l
*linear_to_mel_weight_matrix/linspace/sub/yConst*
_output_shapes
: *
dtype0*
value	B :�
(linear_to_mel_weight_matrix/linspace/subSub-linear_to_mel_weight_matrix/linspace/Cast:y:03linear_to_mel_weight_matrix/linspace/sub/y:output:0*
T0*
_output_shapes
: p
.linear_to_mel_weight_matrix/linspace/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B : �
,linear_to_mel_weight_matrix/linspace/MaximumMaximum,linear_to_mel_weight_matrix/linspace/sub:z:07linear_to_mel_weight_matrix/linspace/Maximum/y:output:0*
T0*
_output_shapes
: n
,linear_to_mel_weight_matrix/linspace/sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
*linear_to_mel_weight_matrix/linspace/sub_1Sub-linear_to_mel_weight_matrix/linspace/Cast:y:05linear_to_mel_weight_matrix/linspace/sub_1/y:output:0*
T0*
_output_shapes
: r
0linear_to_mel_weight_matrix/linspace/Maximum_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
.linear_to_mel_weight_matrix/linspace/Maximum_1Maximum.linear_to_mel_weight_matrix/linspace/sub_1:z:09linear_to_mel_weight_matrix/linspace/Maximum_1/y:output:0*
T0*
_output_shapes
: �
*linear_to_mel_weight_matrix/linspace/sub_2Sub:linear_to_mel_weight_matrix/linspace/ExpandDims_1:output:08linear_to_mel_weight_matrix/linspace/ExpandDims:output:0*
T0*
_output_shapes
:�
+linear_to_mel_weight_matrix/linspace/Cast_2Cast2linear_to_mel_weight_matrix/linspace/Maximum_1:z:0*

DstT0*

SrcT0*
_output_shapes
: �
,linear_to_mel_weight_matrix/linspace/truedivRealDiv.linear_to_mel_weight_matrix/linspace/sub_2:z:0/linear_to_mel_weight_matrix/linspace/Cast_2:y:0*
T0*
_output_shapes
:u
3linear_to_mel_weight_matrix/linspace/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
value	B : �
1linear_to_mel_weight_matrix/linspace/GreaterEqualGreaterEqual-linear_to_mel_weight_matrix/linspace/Cast:y:0<linear_to_mel_weight_matrix/linspace/GreaterEqual/y:output:0*
T0*
_output_shapes
: |
1linear_to_mel_weight_matrix/linspace/SelectV2_1/eConst*
_output_shapes
: *
dtype0*
valueB :
����������
/linear_to_mel_weight_matrix/linspace/SelectV2_1SelectV25linear_to_mel_weight_matrix/linspace/GreaterEqual:z:02linear_to_mel_weight_matrix/linspace/Maximum_1:z:0:linear_to_mel_weight_matrix/linspace/SelectV2_1/e:output:0*
T0*
_output_shapes
: r
0linear_to_mel_weight_matrix/linspace/range/startConst*
_output_shapes
: *
dtype0	*
value	B	 Rr
0linear_to_mel_weight_matrix/linspace/range/deltaConst*
_output_shapes
: *
dtype0	*
value	B	 R�
/linear_to_mel_weight_matrix/linspace/range/CastCast8linear_to_mel_weight_matrix/linspace/SelectV2_1:output:0*

DstT0	*

SrcT0*
_output_shapes
: �
*linear_to_mel_weight_matrix/linspace/rangeRange9linear_to_mel_weight_matrix/linspace/range/start:output:03linear_to_mel_weight_matrix/linspace/range/Cast:y:09linear_to_mel_weight_matrix/linspace/range/delta:output:0*

Tidx0	*
_output_shapes	
:��
+linear_to_mel_weight_matrix/linspace/Cast_3Cast3linear_to_mel_weight_matrix/linspace/range:output:0*

DstT0*

SrcT0	*
_output_shapes	
:�t
2linear_to_mel_weight_matrix/linspace/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : t
2linear_to_mel_weight_matrix/linspace/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
,linear_to_mel_weight_matrix/linspace/range_1Range;linear_to_mel_weight_matrix/linspace/range_1/start:output:0;linear_to_mel_weight_matrix/linspace/strided_slice:output:0;linear_to_mel_weight_matrix/linspace/range_1/delta:output:0*
_output_shapes
:�
*linear_to_mel_weight_matrix/linspace/EqualEqual6linear_to_mel_weight_matrix/linspace/SelectV2:output:05linear_to_mel_weight_matrix/linspace/range_1:output:0*
T0*
_output_shapes
:s
1linear_to_mel_weight_matrix/linspace/SelectV2_2/eConst*
_output_shapes
: *
dtype0*
value	B :�
/linear_to_mel_weight_matrix/linspace/SelectV2_2SelectV2.linear_to_mel_weight_matrix/linspace/Equal:z:00linear_to_mel_weight_matrix/linspace/Maximum:z:0:linear_to_mel_weight_matrix/linspace/SelectV2_2/e:output:0*
T0*
_output_shapes
:�
,linear_to_mel_weight_matrix/linspace/ReshapeReshape/linear_to_mel_weight_matrix/linspace/Cast_3:y:08linear_to_mel_weight_matrix/linspace/SelectV2_2:output:0*
T0*
_output_shapes	
:��
(linear_to_mel_weight_matrix/linspace/mulMul0linear_to_mel_weight_matrix/linspace/truediv:z:05linear_to_mel_weight_matrix/linspace/Reshape:output:0*
T0*
_output_shapes	
:��
*linear_to_mel_weight_matrix/linspace/add_1AddV28linear_to_mel_weight_matrix/linspace/ExpandDims:output:0,linear_to_mel_weight_matrix/linspace/mul:z:0*
T0*
_output_shapes	
:��
+linear_to_mel_weight_matrix/linspace/concatConcatV28linear_to_mel_weight_matrix/linspace/ExpandDims:output:0.linear_to_mel_weight_matrix/linspace/add_1:z:0:linear_to_mel_weight_matrix/linspace/ExpandDims_1:output:06linear_to_mel_weight_matrix/linspace/SelectV2:output:0*
N*
T0*
_output_shapes	
:�y
/linear_to_mel_weight_matrix/linspace/zeros_likeConst*
_output_shapes
:*
dtype0*
valueB: l
*linear_to_mel_weight_matrix/linspace/ConstConst*
_output_shapes
: *
dtype0*
value	B :�
:linear_to_mel_weight_matrix/linspace/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
<linear_to_mel_weight_matrix/linspace/strided_slice_1/stack_1Pack6linear_to_mel_weight_matrix/linspace/SelectV2:output:0*
N*
T0*
_output_shapes
:�
<linear_to_mel_weight_matrix/linspace/strided_slice_1/stack_2Pack3linear_to_mel_weight_matrix/linspace/Const:output:0*
N*
T0*
_output_shapes
:�
4linear_to_mel_weight_matrix/linspace/strided_slice_1StridedSlice5linear_to_mel_weight_matrix/linspace/Shape_2:output:0Clinear_to_mel_weight_matrix/linspace/strided_slice_1/stack:output:0Elinear_to_mel_weight_matrix/linspace/strided_slice_1/stack_1:output:0Elinear_to_mel_weight_matrix/linspace/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: ~
4linear_to_mel_weight_matrix/linspace/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
.linear_to_mel_weight_matrix/linspace/Reshape_1Reshape-linear_to_mel_weight_matrix/linspace/Cast:y:0=linear_to_mel_weight_matrix/linspace/Reshape_1/shape:output:0*
T0*
_output_shapes
:n
,linear_to_mel_weight_matrix/linspace/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :�
*linear_to_mel_weight_matrix/linspace/add_2AddV26linear_to_mel_weight_matrix/linspace/SelectV2:output:05linear_to_mel_weight_matrix/linspace/add_2/y:output:0*
T0*
_output_shapes
: n
,linear_to_mel_weight_matrix/linspace/Const_1Const*
_output_shapes
: *
dtype0*
value	B : n
,linear_to_mel_weight_matrix/linspace/Const_2Const*
_output_shapes
: *
dtype0*
value	B :�
:linear_to_mel_weight_matrix/linspace/strided_slice_2/stackPack.linear_to_mel_weight_matrix/linspace/add_2:z:0*
N*
T0*
_output_shapes
:�
<linear_to_mel_weight_matrix/linspace/strided_slice_2/stack_1Pack5linear_to_mel_weight_matrix/linspace/Const_1:output:0*
N*
T0*
_output_shapes
:�
<linear_to_mel_weight_matrix/linspace/strided_slice_2/stack_2Pack5linear_to_mel_weight_matrix/linspace/Const_2:output:0*
N*
T0*
_output_shapes
:�
4linear_to_mel_weight_matrix/linspace/strided_slice_2StridedSlice5linear_to_mel_weight_matrix/linspace/Shape_2:output:0Clinear_to_mel_weight_matrix/linspace/strided_slice_2/stack:output:0Elinear_to_mel_weight_matrix/linspace/strided_slice_2/stack_1:output:0Elinear_to_mel_weight_matrix/linspace/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_maskt
2linear_to_mel_weight_matrix/linspace/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
-linear_to_mel_weight_matrix/linspace/concat_1ConcatV2=linear_to_mel_weight_matrix/linspace/strided_slice_1:output:07linear_to_mel_weight_matrix/linspace/Reshape_1:output:0=linear_to_mel_weight_matrix/linspace/strided_slice_2:output:0;linear_to_mel_weight_matrix/linspace/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
*linear_to_mel_weight_matrix/linspace/SliceSlice4linear_to_mel_weight_matrix/linspace/concat:output:08linear_to_mel_weight_matrix/linspace/zeros_like:output:06linear_to_mel_weight_matrix/linspace/concat_1:output:0*
Index0*
T0*
_output_shapes	
:�y
/linear_to_mel_weight_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:{
1linear_to_mel_weight_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: {
1linear_to_mel_weight_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)linear_to_mel_weight_matrix/strided_sliceStridedSlice3linear_to_mel_weight_matrix/linspace/Slice:output:08linear_to_mel_weight_matrix/strided_slice/stack:output:0:linear_to_mel_weight_matrix/strided_slice/stack_1:output:0:linear_to_mel_weight_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes	
:�*
end_maskw
2linear_to_mel_weight_matrix/hertz_to_mel/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  /D�
0linear_to_mel_weight_matrix/hertz_to_mel/truedivRealDiv2linear_to_mel_weight_matrix/strided_slice:output:0;linear_to_mel_weight_matrix/hertz_to_mel/truediv/y:output:0*
T0*
_output_shapes	
:�s
.linear_to_mel_weight_matrix/hertz_to_mel/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
,linear_to_mel_weight_matrix/hertz_to_mel/addAddV27linear_to_mel_weight_matrix/hertz_to_mel/add/x:output:04linear_to_mel_weight_matrix/hertz_to_mel/truediv:z:0*
T0*
_output_shapes	
:��
,linear_to_mel_weight_matrix/hertz_to_mel/LogLog0linear_to_mel_weight_matrix/hertz_to_mel/add:z:0*
T0*
_output_shapes	
:�s
.linear_to_mel_weight_matrix/hertz_to_mel/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * ��D�
,linear_to_mel_weight_matrix/hertz_to_mel/mulMul7linear_to_mel_weight_matrix/hertz_to_mel/mul/x:output:00linear_to_mel_weight_matrix/hertz_to_mel/Log:y:0*
T0*
_output_shapes	
:�l
*linear_to_mel_weight_matrix/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
&linear_to_mel_weight_matrix/ExpandDims
ExpandDims0linear_to_mel_weight_matrix/hertz_to_mel/mul:z:03linear_to_mel_weight_matrix/ExpandDims/dim:output:0*
T0*
_output_shapes
:	�y
4linear_to_mel_weight_matrix/hertz_to_mel_1/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  /D�
2linear_to_mel_weight_matrix/hertz_to_mel_1/truedivRealDiv5linear_to_mel_weight_matrix/lower_edge_hertz:output:0=linear_to_mel_weight_matrix/hertz_to_mel_1/truediv/y:output:0*
T0*
_output_shapes
: u
0linear_to_mel_weight_matrix/hertz_to_mel_1/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
.linear_to_mel_weight_matrix/hertz_to_mel_1/addAddV29linear_to_mel_weight_matrix/hertz_to_mel_1/add/x:output:06linear_to_mel_weight_matrix/hertz_to_mel_1/truediv:z:0*
T0*
_output_shapes
: �
.linear_to_mel_weight_matrix/hertz_to_mel_1/LogLog2linear_to_mel_weight_matrix/hertz_to_mel_1/add:z:0*
T0*
_output_shapes
: u
0linear_to_mel_weight_matrix/hertz_to_mel_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * ��D�
.linear_to_mel_weight_matrix/hertz_to_mel_1/mulMul9linear_to_mel_weight_matrix/hertz_to_mel_1/mul/x:output:02linear_to_mel_weight_matrix/hertz_to_mel_1/Log:y:0*
T0*
_output_shapes
: y
4linear_to_mel_weight_matrix/hertz_to_mel_2/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  /D�
2linear_to_mel_weight_matrix/hertz_to_mel_2/truedivRealDiv5linear_to_mel_weight_matrix/upper_edge_hertz:output:0=linear_to_mel_weight_matrix/hertz_to_mel_2/truediv/y:output:0*
T0*
_output_shapes
: u
0linear_to_mel_weight_matrix/hertz_to_mel_2/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
.linear_to_mel_weight_matrix/hertz_to_mel_2/addAddV29linear_to_mel_weight_matrix/hertz_to_mel_2/add/x:output:06linear_to_mel_weight_matrix/hertz_to_mel_2/truediv:z:0*
T0*
_output_shapes
: �
.linear_to_mel_weight_matrix/hertz_to_mel_2/LogLog2linear_to_mel_weight_matrix/hertz_to_mel_2/add:z:0*
T0*
_output_shapes
: u
0linear_to_mel_weight_matrix/hertz_to_mel_2/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * ��D�
.linear_to_mel_weight_matrix/hertz_to_mel_2/mulMul9linear_to_mel_weight_matrix/hertz_to_mel_2/mul/x:output:02linear_to_mel_weight_matrix/hertz_to_mel_2/Log:y:0*
T0*
_output_shapes
: l
*linear_to_mel_weight_matrix/linspace_1/numConst*
_output_shapes
: *
dtype0*
value	B :R�
+linear_to_mel_weight_matrix/linspace_1/CastCast3linear_to_mel_weight_matrix/linspace_1/num:output:0*

DstT0*

SrcT0*
_output_shapes
: �
-linear_to_mel_weight_matrix/linspace_1/Cast_1Cast/linear_to_mel_weight_matrix/linspace_1/Cast:y:0*

DstT0*

SrcT0*
_output_shapes
: o
,linear_to_mel_weight_matrix/linspace_1/ShapeConst*
_output_shapes
: *
dtype0*
valueB q
.linear_to_mel_weight_matrix/linspace_1/Shape_1Const*
_output_shapes
: *
dtype0*
valueB �
4linear_to_mel_weight_matrix/linspace_1/BroadcastArgsBroadcastArgs5linear_to_mel_weight_matrix/linspace_1/Shape:output:07linear_to_mel_weight_matrix/linspace_1/Shape_1:output:0*
_output_shapes
: �
2linear_to_mel_weight_matrix/linspace_1/BroadcastToBroadcastTo2linear_to_mel_weight_matrix/hertz_to_mel_1/mul:z:09linear_to_mel_weight_matrix/linspace_1/BroadcastArgs:r0:0*
T0*
_output_shapes
: �
4linear_to_mel_weight_matrix/linspace_1/BroadcastTo_1BroadcastTo2linear_to_mel_weight_matrix/hertz_to_mel_2/mul:z:09linear_to_mel_weight_matrix/linspace_1/BroadcastArgs:r0:0*
T0*
_output_shapes
: w
5linear_to_mel_weight_matrix/linspace_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : �
1linear_to_mel_weight_matrix/linspace_1/ExpandDims
ExpandDims;linear_to_mel_weight_matrix/linspace_1/BroadcastTo:output:0>linear_to_mel_weight_matrix/linspace_1/ExpandDims/dim:output:0*
T0*
_output_shapes
:y
7linear_to_mel_weight_matrix/linspace_1/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
3linear_to_mel_weight_matrix/linspace_1/ExpandDims_1
ExpandDims=linear_to_mel_weight_matrix/linspace_1/BroadcastTo_1:output:0@linear_to_mel_weight_matrix/linspace_1/ExpandDims_1/dim:output:0*
T0*
_output_shapes
:x
.linear_to_mel_weight_matrix/linspace_1/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:x
.linear_to_mel_weight_matrix/linspace_1/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:�
:linear_to_mel_weight_matrix/linspace_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
<linear_to_mel_weight_matrix/linspace_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
<linear_to_mel_weight_matrix/linspace_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
4linear_to_mel_weight_matrix/linspace_1/strided_sliceStridedSlice7linear_to_mel_weight_matrix/linspace_1/Shape_3:output:0Clinear_to_mel_weight_matrix/linspace_1/strided_slice/stack:output:0Elinear_to_mel_weight_matrix/linspace_1/strided_slice/stack_1:output:0Elinear_to_mel_weight_matrix/linspace_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
,linear_to_mel_weight_matrix/linspace_1/add/yConst*
_output_shapes
: *
dtype0*
value	B : �
*linear_to_mel_weight_matrix/linspace_1/addAddV2=linear_to_mel_weight_matrix/linspace_1/strided_slice:output:05linear_to_mel_weight_matrix/linspace_1/add/y:output:0*
T0*
_output_shapes
: {
9linear_to_mel_weight_matrix/linspace_1/SelectV2/conditionConst*
_output_shapes
: *
dtype0
*
value	B
 Zs
1linear_to_mel_weight_matrix/linspace_1/SelectV2/tConst*
_output_shapes
: *
dtype0*
value	B : �
/linear_to_mel_weight_matrix/linspace_1/SelectV2SelectV2Blinear_to_mel_weight_matrix/linspace_1/SelectV2/condition:output:0:linear_to_mel_weight_matrix/linspace_1/SelectV2/t:output:0.linear_to_mel_weight_matrix/linspace_1/add:z:0*
T0*
_output_shapes
: n
,linear_to_mel_weight_matrix/linspace_1/sub/yConst*
_output_shapes
: *
dtype0*
value	B :�
*linear_to_mel_weight_matrix/linspace_1/subSub/linear_to_mel_weight_matrix/linspace_1/Cast:y:05linear_to_mel_weight_matrix/linspace_1/sub/y:output:0*
T0*
_output_shapes
: r
0linear_to_mel_weight_matrix/linspace_1/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B : �
.linear_to_mel_weight_matrix/linspace_1/MaximumMaximum.linear_to_mel_weight_matrix/linspace_1/sub:z:09linear_to_mel_weight_matrix/linspace_1/Maximum/y:output:0*
T0*
_output_shapes
: p
.linear_to_mel_weight_matrix/linspace_1/sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
,linear_to_mel_weight_matrix/linspace_1/sub_1Sub/linear_to_mel_weight_matrix/linspace_1/Cast:y:07linear_to_mel_weight_matrix/linspace_1/sub_1/y:output:0*
T0*
_output_shapes
: t
2linear_to_mel_weight_matrix/linspace_1/Maximum_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
0linear_to_mel_weight_matrix/linspace_1/Maximum_1Maximum0linear_to_mel_weight_matrix/linspace_1/sub_1:z:0;linear_to_mel_weight_matrix/linspace_1/Maximum_1/y:output:0*
T0*
_output_shapes
: �
,linear_to_mel_weight_matrix/linspace_1/sub_2Sub<linear_to_mel_weight_matrix/linspace_1/ExpandDims_1:output:0:linear_to_mel_weight_matrix/linspace_1/ExpandDims:output:0*
T0*
_output_shapes
:�
-linear_to_mel_weight_matrix/linspace_1/Cast_2Cast4linear_to_mel_weight_matrix/linspace_1/Maximum_1:z:0*

DstT0*

SrcT0*
_output_shapes
: �
.linear_to_mel_weight_matrix/linspace_1/truedivRealDiv0linear_to_mel_weight_matrix/linspace_1/sub_2:z:01linear_to_mel_weight_matrix/linspace_1/Cast_2:y:0*
T0*
_output_shapes
:w
5linear_to_mel_weight_matrix/linspace_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
value	B : �
3linear_to_mel_weight_matrix/linspace_1/GreaterEqualGreaterEqual/linear_to_mel_weight_matrix/linspace_1/Cast:y:0>linear_to_mel_weight_matrix/linspace_1/GreaterEqual/y:output:0*
T0*
_output_shapes
: ~
3linear_to_mel_weight_matrix/linspace_1/SelectV2_1/eConst*
_output_shapes
: *
dtype0*
valueB :
����������
1linear_to_mel_weight_matrix/linspace_1/SelectV2_1SelectV27linear_to_mel_weight_matrix/linspace_1/GreaterEqual:z:04linear_to_mel_weight_matrix/linspace_1/Maximum_1:z:0<linear_to_mel_weight_matrix/linspace_1/SelectV2_1/e:output:0*
T0*
_output_shapes
: t
2linear_to_mel_weight_matrix/linspace_1/range/startConst*
_output_shapes
: *
dtype0	*
value	B	 Rt
2linear_to_mel_weight_matrix/linspace_1/range/deltaConst*
_output_shapes
: *
dtype0	*
value	B	 R�
1linear_to_mel_weight_matrix/linspace_1/range/CastCast:linear_to_mel_weight_matrix/linspace_1/SelectV2_1:output:0*

DstT0	*

SrcT0*
_output_shapes
: �
,linear_to_mel_weight_matrix/linspace_1/rangeRange;linear_to_mel_weight_matrix/linspace_1/range/start:output:05linear_to_mel_weight_matrix/linspace_1/range/Cast:y:0;linear_to_mel_weight_matrix/linspace_1/range/delta:output:0*

Tidx0	*
_output_shapes
:P�
-linear_to_mel_weight_matrix/linspace_1/Cast_3Cast5linear_to_mel_weight_matrix/linspace_1/range:output:0*

DstT0*

SrcT0	*
_output_shapes
:Pv
4linear_to_mel_weight_matrix/linspace_1/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : v
4linear_to_mel_weight_matrix/linspace_1/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
.linear_to_mel_weight_matrix/linspace_1/range_1Range=linear_to_mel_weight_matrix/linspace_1/range_1/start:output:0=linear_to_mel_weight_matrix/linspace_1/strided_slice:output:0=linear_to_mel_weight_matrix/linspace_1/range_1/delta:output:0*
_output_shapes
:�
,linear_to_mel_weight_matrix/linspace_1/EqualEqual8linear_to_mel_weight_matrix/linspace_1/SelectV2:output:07linear_to_mel_weight_matrix/linspace_1/range_1:output:0*
T0*
_output_shapes
:u
3linear_to_mel_weight_matrix/linspace_1/SelectV2_2/eConst*
_output_shapes
: *
dtype0*
value	B :�
1linear_to_mel_weight_matrix/linspace_1/SelectV2_2SelectV20linear_to_mel_weight_matrix/linspace_1/Equal:z:02linear_to_mel_weight_matrix/linspace_1/Maximum:z:0<linear_to_mel_weight_matrix/linspace_1/SelectV2_2/e:output:0*
T0*
_output_shapes
:�
.linear_to_mel_weight_matrix/linspace_1/ReshapeReshape1linear_to_mel_weight_matrix/linspace_1/Cast_3:y:0:linear_to_mel_weight_matrix/linspace_1/SelectV2_2:output:0*
T0*
_output_shapes
:P�
*linear_to_mel_weight_matrix/linspace_1/mulMul2linear_to_mel_weight_matrix/linspace_1/truediv:z:07linear_to_mel_weight_matrix/linspace_1/Reshape:output:0*
T0*
_output_shapes
:P�
,linear_to_mel_weight_matrix/linspace_1/add_1AddV2:linear_to_mel_weight_matrix/linspace_1/ExpandDims:output:0.linear_to_mel_weight_matrix/linspace_1/mul:z:0*
T0*
_output_shapes
:P�
-linear_to_mel_weight_matrix/linspace_1/concatConcatV2:linear_to_mel_weight_matrix/linspace_1/ExpandDims:output:00linear_to_mel_weight_matrix/linspace_1/add_1:z:0<linear_to_mel_weight_matrix/linspace_1/ExpandDims_1:output:08linear_to_mel_weight_matrix/linspace_1/SelectV2:output:0*
N*
T0*
_output_shapes
:R{
1linear_to_mel_weight_matrix/linspace_1/zeros_likeConst*
_output_shapes
:*
dtype0*
valueB: n
,linear_to_mel_weight_matrix/linspace_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :�
<linear_to_mel_weight_matrix/linspace_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
>linear_to_mel_weight_matrix/linspace_1/strided_slice_1/stack_1Pack8linear_to_mel_weight_matrix/linspace_1/SelectV2:output:0*
N*
T0*
_output_shapes
:�
>linear_to_mel_weight_matrix/linspace_1/strided_slice_1/stack_2Pack5linear_to_mel_weight_matrix/linspace_1/Const:output:0*
N*
T0*
_output_shapes
:�
6linear_to_mel_weight_matrix/linspace_1/strided_slice_1StridedSlice7linear_to_mel_weight_matrix/linspace_1/Shape_2:output:0Elinear_to_mel_weight_matrix/linspace_1/strided_slice_1/stack:output:0Glinear_to_mel_weight_matrix/linspace_1/strided_slice_1/stack_1:output:0Glinear_to_mel_weight_matrix/linspace_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: �
6linear_to_mel_weight_matrix/linspace_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
0linear_to_mel_weight_matrix/linspace_1/Reshape_1Reshape/linear_to_mel_weight_matrix/linspace_1/Cast:y:0?linear_to_mel_weight_matrix/linspace_1/Reshape_1/shape:output:0*
T0*
_output_shapes
:p
.linear_to_mel_weight_matrix/linspace_1/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :�
,linear_to_mel_weight_matrix/linspace_1/add_2AddV28linear_to_mel_weight_matrix/linspace_1/SelectV2:output:07linear_to_mel_weight_matrix/linspace_1/add_2/y:output:0*
T0*
_output_shapes
: p
.linear_to_mel_weight_matrix/linspace_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B : p
.linear_to_mel_weight_matrix/linspace_1/Const_2Const*
_output_shapes
: *
dtype0*
value	B :�
<linear_to_mel_weight_matrix/linspace_1/strided_slice_2/stackPack0linear_to_mel_weight_matrix/linspace_1/add_2:z:0*
N*
T0*
_output_shapes
:�
>linear_to_mel_weight_matrix/linspace_1/strided_slice_2/stack_1Pack7linear_to_mel_weight_matrix/linspace_1/Const_1:output:0*
N*
T0*
_output_shapes
:�
>linear_to_mel_weight_matrix/linspace_1/strided_slice_2/stack_2Pack7linear_to_mel_weight_matrix/linspace_1/Const_2:output:0*
N*
T0*
_output_shapes
:�
6linear_to_mel_weight_matrix/linspace_1/strided_slice_2StridedSlice7linear_to_mel_weight_matrix/linspace_1/Shape_2:output:0Elinear_to_mel_weight_matrix/linspace_1/strided_slice_2/stack:output:0Glinear_to_mel_weight_matrix/linspace_1/strided_slice_2/stack_1:output:0Glinear_to_mel_weight_matrix/linspace_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_maskv
4linear_to_mel_weight_matrix/linspace_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
/linear_to_mel_weight_matrix/linspace_1/concat_1ConcatV2?linear_to_mel_weight_matrix/linspace_1/strided_slice_1:output:09linear_to_mel_weight_matrix/linspace_1/Reshape_1:output:0?linear_to_mel_weight_matrix/linspace_1/strided_slice_2:output:0=linear_to_mel_weight_matrix/linspace_1/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
,linear_to_mel_weight_matrix/linspace_1/SliceSlice6linear_to_mel_weight_matrix/linspace_1/concat:output:0:linear_to_mel_weight_matrix/linspace_1/zeros_like:output:08linear_to_mel_weight_matrix/linspace_1/concat_1:output:0*
Index0*
T0*
_output_shapes
:Rp
.linear_to_mel_weight_matrix/frame/frame_lengthConst*
_output_shapes
: *
dtype0*
value	B :n
,linear_to_mel_weight_matrix/frame/frame_stepConst*
_output_shapes
: *
dtype0*
value	B :q
&linear_to_mel_weight_matrix/frame/axisConst*
_output_shapes
: *
dtype0*
valueB :
���������q
'linear_to_mel_weight_matrix/frame/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ro
,linear_to_mel_weight_matrix/frame/Size/ConstConst*
_output_shapes
: *
dtype0*
valueB h
&linear_to_mel_weight_matrix/frame/SizeConst*
_output_shapes
: *
dtype0*
value	B : q
.linear_to_mel_weight_matrix/frame/Size_1/ConstConst*
_output_shapes
: *
dtype0*
valueB j
(linear_to_mel_weight_matrix/frame/Size_1Const*
_output_shapes
: *
dtype0*
value	B : i
'linear_to_mel_weight_matrix/frame/ConstConst*
_output_shapes
: *
dtype0*
value	B : i
'linear_to_mel_weight_matrix/frame/sub/xConst*
_output_shapes
: *
dtype0*
value	B :R�
%linear_to_mel_weight_matrix/frame/subSub0linear_to_mel_weight_matrix/frame/sub/x:output:07linear_to_mel_weight_matrix/frame/frame_length:output:0*
T0*
_output_shapes
: �
*linear_to_mel_weight_matrix/frame/floordivFloorDiv)linear_to_mel_weight_matrix/frame/sub:z:05linear_to_mel_weight_matrix/frame/frame_step:output:0*
T0*
_output_shapes
: i
'linear_to_mel_weight_matrix/frame/add/xConst*
_output_shapes
: *
dtype0*
value	B :�
%linear_to_mel_weight_matrix/frame/addAddV20linear_to_mel_weight_matrix/frame/add/x:output:0.linear_to_mel_weight_matrix/frame/floordiv:z:0*
T0*
_output_shapes
: �
)linear_to_mel_weight_matrix/frame/MaximumMaximum0linear_to_mel_weight_matrix/frame/Const:output:0)linear_to_mel_weight_matrix/frame/add:z:0*
T0*
_output_shapes
: m
+linear_to_mel_weight_matrix/frame/gcd/ConstConst*
_output_shapes
: *
dtype0*
value	B :p
.linear_to_mel_weight_matrix/frame/floordiv_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
,linear_to_mel_weight_matrix/frame/floordiv_1FloorDiv7linear_to_mel_weight_matrix/frame/frame_length:output:07linear_to_mel_weight_matrix/frame/floordiv_1/y:output:0*
T0*
_output_shapes
: p
.linear_to_mel_weight_matrix/frame/floordiv_2/yConst*
_output_shapes
: *
dtype0*
value	B :�
,linear_to_mel_weight_matrix/frame/floordiv_2FloorDiv5linear_to_mel_weight_matrix/frame/frame_step:output:07linear_to_mel_weight_matrix/frame/floordiv_2/y:output:0*
T0*
_output_shapes
: t
1linear_to_mel_weight_matrix/frame/concat/values_0Const*
_output_shapes
: *
dtype0*
valueB {
1linear_to_mel_weight_matrix/frame/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:Rt
1linear_to_mel_weight_matrix/frame/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB o
-linear_to_mel_weight_matrix/frame/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
(linear_to_mel_weight_matrix/frame/concatConcatV2:linear_to_mel_weight_matrix/frame/concat/values_0:output:0:linear_to_mel_weight_matrix/frame/concat/values_1:output:0:linear_to_mel_weight_matrix/frame/concat/values_2:output:06linear_to_mel_weight_matrix/frame/concat/axis:output:0*
N*
T0*
_output_shapes
:v
3linear_to_mel_weight_matrix/frame/concat_1/values_0Const*
_output_shapes
: *
dtype0*
valueB �
3linear_to_mel_weight_matrix/frame/concat_1/values_1Const*
_output_shapes
:*
dtype0*
valueB"R      v
3linear_to_mel_weight_matrix/frame/concat_1/values_2Const*
_output_shapes
: *
dtype0*
valueB q
/linear_to_mel_weight_matrix/frame/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
*linear_to_mel_weight_matrix/frame/concat_1ConcatV2<linear_to_mel_weight_matrix/frame/concat_1/values_0:output:0<linear_to_mel_weight_matrix/frame/concat_1/values_1:output:0<linear_to_mel_weight_matrix/frame/concat_1/values_2:output:08linear_to_mel_weight_matrix/frame/concat_1/axis:output:0*
N*
T0*
_output_shapes
:}
3linear_to_mel_weight_matrix/frame/zeros_like/tensorConst*
_output_shapes
:*
dtype0*
valueB:Rv
,linear_to_mel_weight_matrix/frame/zeros_likeConst*
_output_shapes
:*
dtype0*
valueB: �
Alinear_to_mel_weight_matrix/frame/ones_like/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:s
1linear_to_mel_weight_matrix/frame/ones_like/ConstConst*
_output_shapes
: *
dtype0*
value	B :�
+linear_to_mel_weight_matrix/frame/ones_likeFillJlinear_to_mel_weight_matrix/frame/ones_like/Shape/shape_as_tensor:output:0:linear_to_mel_weight_matrix/frame/ones_like/Const:output:0*
T0*
_output_shapes
:�
.linear_to_mel_weight_matrix/frame/StridedSliceStridedSlice5linear_to_mel_weight_matrix/linspace_1/Slice:output:05linear_to_mel_weight_matrix/frame/zeros_like:output:01linear_to_mel_weight_matrix/frame/concat:output:04linear_to_mel_weight_matrix/frame/ones_like:output:0*
Index0*
T0*
_output_shapes
:R�
)linear_to_mel_weight_matrix/frame/ReshapeReshape7linear_to_mel_weight_matrix/frame/StridedSlice:output:03linear_to_mel_weight_matrix/frame/concat_1:output:0*
T0*
_output_shapes

:Ro
-linear_to_mel_weight_matrix/frame/range/startConst*
_output_shapes
: *
dtype0*
value	B : o
-linear_to_mel_weight_matrix/frame/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
'linear_to_mel_weight_matrix/frame/rangeRange6linear_to_mel_weight_matrix/frame/range/start:output:0-linear_to_mel_weight_matrix/frame/Maximum:z:06linear_to_mel_weight_matrix/frame/range/delta:output:0*
_output_shapes
:P�
%linear_to_mel_weight_matrix/frame/mulMul0linear_to_mel_weight_matrix/frame/range:output:00linear_to_mel_weight_matrix/frame/floordiv_2:z:0*
T0*
_output_shapes
:Pu
3linear_to_mel_weight_matrix/frame/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
1linear_to_mel_weight_matrix/frame/Reshape_1/shapePack-linear_to_mel_weight_matrix/frame/Maximum:z:0<linear_to_mel_weight_matrix/frame/Reshape_1/shape/1:output:0*
N*
T0*
_output_shapes
:�
+linear_to_mel_weight_matrix/frame/Reshape_1Reshape)linear_to_mel_weight_matrix/frame/mul:z:0:linear_to_mel_weight_matrix/frame/Reshape_1/shape:output:0*
T0*
_output_shapes

:Pq
/linear_to_mel_weight_matrix/frame/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : q
/linear_to_mel_weight_matrix/frame/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
)linear_to_mel_weight_matrix/frame/range_1Range8linear_to_mel_weight_matrix/frame/range_1/start:output:00linear_to_mel_weight_matrix/frame/floordiv_1:z:08linear_to_mel_weight_matrix/frame/range_1/delta:output:0*
_output_shapes
:u
3linear_to_mel_weight_matrix/frame/Reshape_2/shape/0Const*
_output_shapes
: *
dtype0*
value	B :�
1linear_to_mel_weight_matrix/frame/Reshape_2/shapePack<linear_to_mel_weight_matrix/frame/Reshape_2/shape/0:output:00linear_to_mel_weight_matrix/frame/floordiv_1:z:0*
N*
T0*
_output_shapes
:�
+linear_to_mel_weight_matrix/frame/Reshape_2Reshape2linear_to_mel_weight_matrix/frame/range_1:output:0:linear_to_mel_weight_matrix/frame/Reshape_2/shape:output:0*
T0*
_output_shapes

:�
'linear_to_mel_weight_matrix/frame/add_1AddV24linear_to_mel_weight_matrix/frame/Reshape_1:output:04linear_to_mel_weight_matrix/frame/Reshape_2:output:0*
T0*
_output_shapes

:Pl
)linear_to_mel_weight_matrix/frame/Const_1Const*
_output_shapes
: *
dtype0*
valueB l
)linear_to_mel_weight_matrix/frame/Const_2Const*
_output_shapes
: *
dtype0*
valueB �
(linear_to_mel_weight_matrix/frame/packedPack-linear_to_mel_weight_matrix/frame/Maximum:z:07linear_to_mel_weight_matrix/frame/frame_length:output:0*
N*
T0*
_output_shapes
:q
/linear_to_mel_weight_matrix/frame/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
*linear_to_mel_weight_matrix/frame/GatherV2GatherV22linear_to_mel_weight_matrix/frame/Reshape:output:0+linear_to_mel_weight_matrix/frame/add_1:z:08linear_to_mel_weight_matrix/frame/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*"
_output_shapes
:Pq
/linear_to_mel_weight_matrix/frame/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
*linear_to_mel_weight_matrix/frame/concat_2ConcatV22linear_to_mel_weight_matrix/frame/Const_1:output:01linear_to_mel_weight_matrix/frame/packed:output:02linear_to_mel_weight_matrix/frame/Const_2:output:08linear_to_mel_weight_matrix/frame/concat_2/axis:output:0*
N*
T0*
_output_shapes
:�
+linear_to_mel_weight_matrix/frame/Reshape_3Reshape3linear_to_mel_weight_matrix/frame/GatherV2:output:03linear_to_mel_weight_matrix/frame/concat_2:output:0*
T0*
_output_shapes

:Pm
+linear_to_mel_weight_matrix/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
!linear_to_mel_weight_matrix/splitSplit4linear_to_mel_weight_matrix/split/split_dim:output:04linear_to_mel_weight_matrix/frame/Reshape_3:output:0*
T0*2
_output_shapes 
:P:P:P*
	num_splitz
)linear_to_mel_weight_matrix/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"   P   �
#linear_to_mel_weight_matrix/ReshapeReshape*linear_to_mel_weight_matrix/split:output:02linear_to_mel_weight_matrix/Reshape/shape:output:0*
T0*
_output_shapes

:P|
+linear_to_mel_weight_matrix/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   P   �
%linear_to_mel_weight_matrix/Reshape_1Reshape*linear_to_mel_weight_matrix/split:output:14linear_to_mel_weight_matrix/Reshape_1/shape:output:0*
T0*
_output_shapes

:P|
+linear_to_mel_weight_matrix/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"   P   �
%linear_to_mel_weight_matrix/Reshape_2Reshape*linear_to_mel_weight_matrix/split:output:24linear_to_mel_weight_matrix/Reshape_2/shape:output:0*
T0*
_output_shapes

:P�
linear_to_mel_weight_matrix/subSub/linear_to_mel_weight_matrix/ExpandDims:output:0,linear_to_mel_weight_matrix/Reshape:output:0*
T0*
_output_shapes
:	�P�
!linear_to_mel_weight_matrix/sub_1Sub.linear_to_mel_weight_matrix/Reshape_1:output:0,linear_to_mel_weight_matrix/Reshape:output:0*
T0*
_output_shapes

:P�
%linear_to_mel_weight_matrix/truediv_1RealDiv#linear_to_mel_weight_matrix/sub:z:0%linear_to_mel_weight_matrix/sub_1:z:0*
T0*
_output_shapes
:	�P�
!linear_to_mel_weight_matrix/sub_2Sub.linear_to_mel_weight_matrix/Reshape_2:output:0/linear_to_mel_weight_matrix/ExpandDims:output:0*
T0*
_output_shapes
:	�P�
!linear_to_mel_weight_matrix/sub_3Sub.linear_to_mel_weight_matrix/Reshape_2:output:0.linear_to_mel_weight_matrix/Reshape_1:output:0*
T0*
_output_shapes

:P�
%linear_to_mel_weight_matrix/truediv_2RealDiv%linear_to_mel_weight_matrix/sub_2:z:0%linear_to_mel_weight_matrix/sub_3:z:0*
T0*
_output_shapes
:	�P�
#linear_to_mel_weight_matrix/MinimumMinimum)linear_to_mel_weight_matrix/truediv_1:z:0)linear_to_mel_weight_matrix/truediv_2:z:0*
T0*
_output_shapes
:	�P�
#linear_to_mel_weight_matrix/MaximumMaximum*linear_to_mel_weight_matrix/Const:output:0'linear_to_mel_weight_matrix/Minimum:z:0*
T0*
_output_shapes
:	�P�
$linear_to_mel_weight_matrix/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               �
linear_to_mel_weight_matrixPad'linear_to_mel_weight_matrix/Maximum:z:0-linear_to_mel_weight_matrix/paddings:output:0*
T0*
_output_shapes
:	�Ph
Tensordot/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"9    r
Tensordot/ReshapeReshapeAbs:y:0 Tensordot/Reshape/shape:output:0*
T0* 
_output_shapes
:
���
Tensordot/MatMulMatMulTensordot/Reshape:output:0$linear_to_mel_weight_matrix:output:0*
T0*
_output_shapes
:	�Pd
Tensordot/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   9  P   x
	TensordotReshapeTensordot/MatMul:product:0Tensordot/shape:output:0*
T0*#
_output_shapes
:�PJ
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5^
addAddV2Tensordot:output:0add/y:output:0*
T0*#
_output_shapes
:�PA
LogLogadd:z:0*
T0*#
_output_shapes
:�Pn
)mfccs_from_log_mel_spectrograms/dct/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
*mfccs_from_log_mel_spectrograms/dct/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :P�
(mfccs_from_log_mel_spectrograms/dct/CastCast3mfccs_from_log_mel_spectrograms/dct/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: q
/mfccs_from_log_mel_spectrograms/dct/range/startConst*
_output_shapes
: *
dtype0*
value	B : q
/mfccs_from_log_mel_spectrograms/dct/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
.mfccs_from_log_mel_spectrograms/dct/range/CastCast8mfccs_from_log_mel_spectrograms/dct/range/start:output:0*

DstT0*

SrcT0*
_output_shapes
: �
0mfccs_from_log_mel_spectrograms/dct/range/Cast_1Cast8mfccs_from_log_mel_spectrograms/dct/range/delta:output:0*

DstT0*

SrcT0*
_output_shapes
: �
)mfccs_from_log_mel_spectrograms/dct/rangeRange2mfccs_from_log_mel_spectrograms/dct/range/Cast:y:0,mfccs_from_log_mel_spectrograms/dct/Cast:y:04mfccs_from_log_mel_spectrograms/dct/range/Cast_1:y:0*

Tidx0*
_output_shapes
:P�
'mfccs_from_log_mel_spectrograms/dct/NegNeg2mfccs_from_log_mel_spectrograms/dct/range:output:0*
T0*
_output_shapes
:Pn
)mfccs_from_log_mel_spectrograms/dct/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *�I@�
'mfccs_from_log_mel_spectrograms/dct/mulMul+mfccs_from_log_mel_spectrograms/dct/Neg:y:02mfccs_from_log_mel_spectrograms/dct/mul/y:output:0*
T0*
_output_shapes
:Pp
+mfccs_from_log_mel_spectrograms/dct/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
)mfccs_from_log_mel_spectrograms/dct/mul_1Mul+mfccs_from_log_mel_spectrograms/dct/mul:z:04mfccs_from_log_mel_spectrograms/dct/mul_1/y:output:0*
T0*
_output_shapes
:P�
+mfccs_from_log_mel_spectrograms/dct/truedivRealDiv-mfccs_from_log_mel_spectrograms/dct/mul_1:z:0,mfccs_from_log_mel_spectrograms/dct/Cast:y:0*
T0*
_output_shapes
:P�
+mfccs_from_log_mel_spectrograms/dct/ComplexComplex2mfccs_from_log_mel_spectrograms/dct/Const:output:0/mfccs_from_log_mel_spectrograms/dct/truediv:z:0*
_output_shapes
:P�
'mfccs_from_log_mel_spectrograms/dct/ExpExp1mfccs_from_log_mel_spectrograms/dct/Complex:out:0*
T0*
_output_shapes
:Pt
+mfccs_from_log_mel_spectrograms/dct/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB J   @    �
)mfccs_from_log_mel_spectrograms/dct/mul_2Mul4mfccs_from_log_mel_spectrograms/dct/mul_2/x:output:0+mfccs_from_log_mel_spectrograms/dct/Exp:y:0*
T0*
_output_shapes
:Py
.mfccs_from_log_mel_spectrograms/dct/rfft/ConstConst*
_output_shapes
:*
dtype0*
valueB:��
5mfccs_from_log_mel_spectrograms/dct/rfft/Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                    P   �
,mfccs_from_log_mel_spectrograms/dct/rfft/PadPadLog:y:0>mfccs_from_log_mel_spectrograms/dct/rfft/Pad/paddings:output:0*
T0*$
_output_shapes
:��~
3mfccs_from_log_mel_spectrograms/dct/rfft/fft_lengthConst*
_output_shapes
:*
dtype0*
valueB:��
(mfccs_from_log_mel_spectrograms/dct/rfftRFFT5mfccs_from_log_mel_spectrograms/dct/rfft/Pad:output:0<mfccs_from_log_mel_spectrograms/dct/rfft/fft_length:output:0*#
_output_shapes
:�Q�
7mfccs_from_log_mel_spectrograms/dct/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
9mfccs_from_log_mel_spectrograms/dct/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    P   �
9mfccs_from_log_mel_spectrograms/dct/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
1mfccs_from_log_mel_spectrograms/dct/strided_sliceStridedSlice1mfccs_from_log_mel_spectrograms/dct/rfft:output:0@mfccs_from_log_mel_spectrograms/dct/strided_slice/stack:output:0Bmfccs_from_log_mel_spectrograms/dct/strided_slice/stack_1:output:0Bmfccs_from_log_mel_spectrograms/dct/strided_slice/stack_2:output:0*
Index0*
T0*#
_output_shapes
:�P*

begin_mask*
ellipsis_mask�
)mfccs_from_log_mel_spectrograms/dct/mul_3Mul:mfccs_from_log_mel_spectrograms/dct/strided_slice:output:0-mfccs_from_log_mel_spectrograms/dct/mul_2:z:0*
T0*#
_output_shapes
:�P�
(mfccs_from_log_mel_spectrograms/dct/RealReal-mfccs_from_log_mel_spectrograms/dct/mul_3:z:0*#
_output_shapes
:�Ph
&mfccs_from_log_mel_spectrograms/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :P�
$mfccs_from_log_mel_spectrograms/CastCast/mfccs_from_log_mel_spectrograms/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: j
%mfccs_from_log_mel_spectrograms/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
#mfccs_from_log_mel_spectrograms/mulMul(mfccs_from_log_mel_spectrograms/Cast:y:0.mfccs_from_log_mel_spectrograms/mul/y:output:0*
T0*
_output_shapes
: x
%mfccs_from_log_mel_spectrograms/RsqrtRsqrt'mfccs_from_log_mel_spectrograms/mul:z:0*
T0*
_output_shapes
: �
%mfccs_from_log_mel_spectrograms/mul_1Mul1mfccs_from_log_mel_spectrograms/dct/Real:output:0)mfccs_from_log_mel_spectrograms/Rsqrt:y:0*
T0*#
_output_shapes
:�Pf
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSlice)mfccs_from_log_mel_spectrograms/mul_1:z:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:�*

begin_mask*
ellipsis_maskf
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSlicestrided_slice_1:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:�*
ellipsis_mask*
new_axis_maskv
%sequential_2_1/resizing_1/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      �
/sequential_2_1/resizing_1/resize/ResizeBilinearResizeBilinearstrided_slice_2:output:0.sequential_2_1/resizing_1/resize/size:output:0*
T0*&
_output_shapes
:*
half_pixel_centers(�
$sequential_2_1/normalization_2_1/SubSub@sequential_2_1/resizing_1/resize/ResizeBilinear:resized_images:0&sequential_2_1_normalization_2_1_sub_y*
T0*&
_output_shapes
:�
%sequential_2_1/normalization_2_1/SqrtSqrt'sequential_2_1_normalization_2_1_sqrt_x*
T0*&
_output_shapes
:k
&sequential_2_1/normalization_2_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
(sequential_2_1/normalization_2_1/MaximumMaximum)sequential_2_1/normalization_2_1/Sqrt:y:0/sequential_2_1/normalization_2_1/Const:output:0*
T0*&
_output_shapes
:�
(sequential_2_1/normalization_2_1/truedivRealDiv(sequential_2_1/normalization_2_1/Sub:z:0,sequential_2_1/normalization_2_1/Maximum:z:0*
T0*&
_output_shapes
:�
4sequential_2_1/conv2d_4_1/convolution/ReadVariableOpReadVariableOp=sequential_2_1_conv2d_4_1_convolution_readvariableop_resource*&
_output_shapes
:*
dtype0�
%sequential_2_1/conv2d_4_1/convolutionConv2D,sequential_2_1/normalization_2_1/truediv:z:0<sequential_2_1/conv2d_4_1/convolution/ReadVariableOp:value:0*
T0*&
_output_shapes
:*
paddingVALID*
strides
�
0sequential_2_1/conv2d_4_1/Reshape/ReadVariableOpReadVariableOp9sequential_2_1_conv2d_4_1_reshape_readvariableop_resource*
_output_shapes
:*
dtype0�
'sequential_2_1/conv2d_4_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
!sequential_2_1/conv2d_4_1/ReshapeReshape8sequential_2_1/conv2d_4_1/Reshape/ReadVariableOp:value:00sequential_2_1/conv2d_4_1/Reshape/shape:output:0*
T0*&
_output_shapes
:�
sequential_2_1/conv2d_4_1/addAddV2.sequential_2_1/conv2d_4_1/convolution:output:0*sequential_2_1/conv2d_4_1/Reshape:output:0*
T0*&
_output_shapes
:z
sequential_2_1/conv2d_4_1/ReluRelu!sequential_2_1/conv2d_4_1/add:z:0*
T0*&
_output_shapes
:�
*sequential_2_1/max_pooling2d_4_1/MaxPool2dMaxPool,sequential_2_1/conv2d_4_1/Relu:activations:0*&
_output_shapes
:*
ksize
*
paddingVALID*
strides
�
4sequential_2_1/conv2d_5_1/convolution/ReadVariableOpReadVariableOp=sequential_2_1_conv2d_5_1_convolution_readvariableop_resource*&
_output_shapes
:*
dtype0�
%sequential_2_1/conv2d_5_1/convolutionConv2D3sequential_2_1/max_pooling2d_4_1/MaxPool2d:output:0<sequential_2_1/conv2d_5_1/convolution/ReadVariableOp:value:0*
T0*&
_output_shapes
:*
paddingVALID*
strides
�
0sequential_2_1/conv2d_5_1/Reshape/ReadVariableOpReadVariableOp9sequential_2_1_conv2d_5_1_reshape_readvariableop_resource*
_output_shapes
:*
dtype0�
'sequential_2_1/conv2d_5_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
!sequential_2_1/conv2d_5_1/ReshapeReshape8sequential_2_1/conv2d_5_1/Reshape/ReadVariableOp:value:00sequential_2_1/conv2d_5_1/Reshape/shape:output:0*
T0*&
_output_shapes
:�
sequential_2_1/conv2d_5_1/addAddV2.sequential_2_1/conv2d_5_1/convolution:output:0*sequential_2_1/conv2d_5_1/Reshape:output:0*
T0*&
_output_shapes
:z
sequential_2_1/conv2d_5_1/ReluRelu!sequential_2_1/conv2d_5_1/add:z:0*
T0*&
_output_shapes
:�
*sequential_2_1/max_pooling2d_5_1/MaxPool2dMaxPool,sequential_2_1/conv2d_5_1/Relu:activations:0*&
_output_shapes
:*
ksize
*
paddingVALID*
strides
y
(sequential_2_1/flatten_2_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"   @   �
"sequential_2_1/flatten_2_1/ReshapeReshape3sequential_2_1/max_pooling2d_5_1/MaxPool2d:output:01sequential_2_1/flatten_2_1/Reshape/shape:output:0*
T0*
_output_shapes

:@�
,sequential_2_1/dense_4_1/Cast/ReadVariableOpReadVariableOp5sequential_2_1_dense_4_1_cast_readvariableop_resource*
_output_shapes

:@@*
dtype0�
sequential_2_1/dense_4_1/MatMulMatMul+sequential_2_1/flatten_2_1/Reshape:output:04sequential_2_1/dense_4_1/Cast/ReadVariableOp:value:0*
T0*
_output_shapes

:@�
+sequential_2_1/dense_4_1/Add/ReadVariableOpReadVariableOp4sequential_2_1_dense_4_1_add_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential_2_1/dense_4_1/AddAddV2)sequential_2_1/dense_4_1/MatMul:product:03sequential_2_1/dense_4_1/Add/ReadVariableOp:value:0*
T0*
_output_shapes

:@p
sequential_2_1/dense_4_1/ReluRelu sequential_2_1/dense_4_1/Add:z:0*
T0*
_output_shapes

:@�
,sequential_2_1/dense_5_1/Cast/ReadVariableOpReadVariableOp5sequential_2_1_dense_5_1_cast_readvariableop_resource*
_output_shapes

:@*
dtype0�
sequential_2_1/dense_5_1/MatMulMatMul+sequential_2_1/dense_4_1/Relu:activations:04sequential_2_1/dense_5_1/Cast/ReadVariableOp:value:0*
T0*
_output_shapes

:�
+sequential_2_1/dense_5_1/Add/ReadVariableOpReadVariableOp4sequential_2_1_dense_5_1_add_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_2_1/dense_5_1/AddAddV2)sequential_2_1/dense_5_1/MatMul:product:03sequential_2_1/dense_5_1/Add/ReadVariableOp:value:0*
T0*
_output_shapes

:v
 sequential_2_1/dense_5_1/SoftmaxSoftmax sequential_2_1/dense_5_1/Add:z:0*
T0*
_output_shapes

:[
ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
���������|
ArgMaxArgMax*sequential_2_1/dense_5_1/Softmax:softmax:0ArgMax/dimension:output:0*
T0*
_output_shapes
:j
GatherV2/paramsConst*
_output_shapes
:*
dtype0*'
valueBB	_abnormalB_normalO
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
GatherV2GatherV2GatherV2/params:output:0ArgMax:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*
_output_shapes
:Q
IdentityIdentityArgMax:output:0^NoOp*
T0	*
_output_shapes
:U

Identity_1IdentityGatherV2:output:0^NoOp*
T0*
_output_shapes
:r

Identity_2Identity*sequential_2_1/dense_5_1/Softmax:softmax:0^NoOp*
T0*
_output_shapes

:�
NoOpNoOp1^sequential_2_1/conv2d_4_1/Reshape/ReadVariableOp5^sequential_2_1/conv2d_4_1/convolution/ReadVariableOp1^sequential_2_1/conv2d_5_1/Reshape/ReadVariableOp5^sequential_2_1/conv2d_5_1/convolution/ReadVariableOp,^sequential_2_1/dense_4_1/Add/ReadVariableOp-^sequential_2_1/dense_4_1/Cast/ReadVariableOp,^sequential_2_1/dense_5_1/Add/ReadVariableOp-^sequential_2_1/dense_5_1/Cast/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6: ::: : : : : : : : 2d
0sequential_2_1/conv2d_4_1/Reshape/ReadVariableOp0sequential_2_1/conv2d_4_1/Reshape/ReadVariableOp2l
4sequential_2_1/conv2d_4_1/convolution/ReadVariableOp4sequential_2_1/conv2d_4_1/convolution/ReadVariableOp2d
0sequential_2_1/conv2d_5_1/Reshape/ReadVariableOp0sequential_2_1/conv2d_5_1/Reshape/ReadVariableOp2l
4sequential_2_1/conv2d_5_1/convolution/ReadVariableOp4sequential_2_1/conv2d_5_1/convolution/ReadVariableOp2Z
+sequential_2_1/dense_4_1/Add/ReadVariableOp+sequential_2_1/dense_4_1/Add/ReadVariableOp2\
,sequential_2_1/dense_4_1/Cast/ReadVariableOp,sequential_2_1/dense_4_1/Cast/ReadVariableOp2Z
+sequential_2_1/dense_5_1/Add/ReadVariableOp+sequential_2_1/dense_5_1/Add/ReadVariableOp2\
,sequential_2_1/dense_5_1/Cast/ReadVariableOp,sequential_2_1/dense_5_1/Cast/ReadVariableOp:9 5

_output_shapes
: 

_user_specified_namex:,(
&
_output_shapes
::,(
&
_output_shapes
::($
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
resource
��
�	
__inference___call___34376
x*
&sequential_2_1_normalization_2_1_sub_y+
'sequential_2_1_normalization_2_1_sqrt_xW
=sequential_2_1_conv2d_4_1_convolution_readvariableop_resource:G
9sequential_2_1_conv2d_4_1_reshape_readvariableop_resource:W
=sequential_2_1_conv2d_5_1_convolution_readvariableop_resource:G
9sequential_2_1_conv2d_5_1_reshape_readvariableop_resource:G
5sequential_2_1_dense_4_1_cast_readvariableop_resource:@@B
4sequential_2_1_dense_4_1_add_readvariableop_resource:@G
5sequential_2_1_dense_5_1_cast_readvariableop_resource:@B
4sequential_2_1_dense_5_1_add_readvariableop_resource:
identity	

identity_1

identity_2��0sequential_2_1/conv2d_4_1/Reshape/ReadVariableOp�4sequential_2_1/conv2d_4_1/convolution/ReadVariableOp�0sequential_2_1/conv2d_5_1/Reshape/ReadVariableOp�4sequential_2_1/conv2d_5_1/convolution/ReadVariableOp�+sequential_2_1/dense_4_1/Add/ReadVariableOp�,sequential_2_1/dense_4_1/Cast/ReadVariableOp�+sequential_2_1/dense_5_1/Add/ReadVariableOp�,sequential_2_1/dense_5_1/Cast/ReadVariableOpT
stft/frame_lengthConst*
_output_shapes
: *
dtype0*
value
B :�Q
stft/frame_stepConst*
_output_shapes
: *
dtype0*
value	B :0R
stft/fft_lengthConst*
_output_shapes
: *
dtype0*
value
B :�Z
stft/frame/axisConst*
_output_shapes
: *
dtype0*
valueB :
���������O
stft/frame/ShapeShapex*
T0*
_output_shapes
::��Q
stft/frame/RankConst*
_output_shapes
: *
dtype0*
value	B :X
stft/frame/range/startConst*
_output_shapes
: *
dtype0*
value	B : X
stft/frame/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
stft/frame/rangeRangestft/frame/range/start:output:0stft/frame/Rank:output:0stft/frame/range/delta:output:0*
_output_shapes
:q
stft/frame/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
 stft/frame/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 stft/frame/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
stft/frame/strided_sliceStridedSlicestft/frame/range:output:0'stft/frame/strided_slice/stack:output:0)stft/frame/strided_slice/stack_1:output:0)stft/frame/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
stft/frame/sub/yConst*
_output_shapes
: *
dtype0*
value	B :k
stft/frame/subSubstft/frame/Rank:output:0stft/frame/sub/y:output:0*
T0*
_output_shapes
: o
stft/frame/sub_1Substft/frame/sub:z:0!stft/frame/strided_slice:output:0*
T0*
_output_shapes
: U
stft/frame/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
stft/frame/packedPack!stft/frame/strided_slice:output:0stft/frame/packed/1:output:0stft/frame/sub_1:z:0*
N*
T0*
_output_shapes
:\
stft/frame/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B : �
stft/frame/splitSplitVstft/frame/Shape:output:0stft/frame/packed:output:0#stft/frame/split/split_dim:output:0*
T0*

Tlen0*$
_output_shapes
::: *
	num_split[
stft/frame/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB ]
stft/frame/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB ~
stft/frame/ReshapeReshapestft/frame/split:output:1#stft/frame/Reshape/shape_1:output:0*
T0*
_output_shapes
: Q
stft/frame/SizeConst*
_output_shapes
: *
dtype0*
value	B :S
stft/frame/Size_1Const*
_output_shapes
: *
dtype0*
value	B : R
stft/frame/ConstConst*
_output_shapes
: *
dtype0*
value	B : q
stft/frame/sub_2Substft/frame/Reshape:output:0stft/frame_length:output:0*
T0*
_output_shapes
: p
stft/frame/floordivFloorDivstft/frame/sub_2:z:0stft/frame_step:output:0*
T0*
_output_shapes
: R
stft/frame/add/xConst*
_output_shapes
: *
dtype0*
value	B :l
stft/frame/addAddV2stft/frame/add/x:output:0stft/frame/floordiv:z:0*
T0*
_output_shapes
: m
stft/frame/MaximumMaximumstft/frame/Const:output:0stft/frame/add:z:0*
T0*
_output_shapes
: V
stft/frame/gcd/ConstConst*
_output_shapes
: *
dtype0*
value	B :Y
stft/frame/floordiv_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
stft/frame/floordiv_1FloorDivstft/frame_length:output:0 stft/frame/floordiv_1/y:output:0*
T0*
_output_shapes
: Y
stft/frame/floordiv_2/yConst*
_output_shapes
: *
dtype0*
value	B :~
stft/frame/floordiv_2FloorDivstft/frame_step:output:0 stft/frame/floordiv_2/y:output:0*
T0*
_output_shapes
: Y
stft/frame/floordiv_3/yConst*
_output_shapes
: *
dtype0*
value	B :�
stft/frame/floordiv_3FloorDivstft/frame/Reshape:output:0 stft/frame/floordiv_3/y:output:0*
T0*
_output_shapes
: R
stft/frame/mul/yConst*
_output_shapes
: *
dtype0*
value	B :l
stft/frame/mulMulstft/frame/floordiv_3:z:0stft/frame/mul/y:output:0*
T0*
_output_shapes
: d
stft/frame/concat/values_1Packstft/frame/mul:z:0*
N*
T0*
_output_shapes
:X
stft/frame/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
stft/frame/concatConcatV2stft/frame/split:output:0#stft/frame/concat/values_1:output:0stft/frame/split:output:2stft/frame/concat/axis:output:0*
N*
T0*
_output_shapes
:`
stft/frame/concat_1/values_1/1Const*
_output_shapes
: *
dtype0*
value	B :�
stft/frame/concat_1/values_1Packstft/frame/floordiv_3:z:0'stft/frame/concat_1/values_1/1:output:0*
N*
T0*
_output_shapes
:Z
stft/frame/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
stft/frame/concat_1ConcatV2stft/frame/split:output:0%stft/frame/concat_1/values_1:output:0stft/frame/split:output:2!stft/frame/concat_1/axis:output:0*
N*
T0*
_output_shapes
:_
stft/frame/zeros_likeConst*
_output_shapes
:*
dtype0*
valueB: t
*stft/frame/ones_like/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:\
stft/frame/ones_like/ConstConst*
_output_shapes
: *
dtype0*
value	B :�
stft/frame/ones_likeFill3stft/frame/ones_like/Shape/shape_as_tensor:output:0#stft/frame/ones_like/Const:output:0*
T0*
_output_shapes
:�
stft/frame/StridedSliceStridedSlicexstft/frame/zeros_like:output:0stft/frame/concat:output:0stft/frame/ones_like:output:0*
Index0*
T0*0
_output_shapes
:�������������������
stft/frame/Reshape_1Reshape stft/frame/StridedSlice:output:0stft/frame/concat_1:output:0*
T0*4
_output_shapes"
 :������������������Z
stft/frame/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : Z
stft/frame/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
stft/frame/range_1Range!stft/frame/range_1/start:output:0stft/frame/Maximum:z:0!stft/frame/range_1/delta:output:0*#
_output_shapes
:���������}
stft/frame/mul_1Mulstft/frame/range_1:output:0stft/frame/floordiv_2:z:0*
T0*#
_output_shapes
:���������^
stft/frame/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
stft/frame/Reshape_2/shapePackstft/frame/Maximum:z:0%stft/frame/Reshape_2/shape/1:output:0*
N*
T0*
_output_shapes
:�
stft/frame/Reshape_2Reshapestft/frame/mul_1:z:0#stft/frame/Reshape_2/shape:output:0*
T0*'
_output_shapes
:���������Z
stft/frame/range_2/startConst*
_output_shapes
: *
dtype0*
value	B : Z
stft/frame/range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
stft/frame/range_2Range!stft/frame/range_2/start:output:0stft/frame/floordiv_1:z:0!stft/frame/range_2/delta:output:0*
_output_shapes
:@^
stft/frame/Reshape_3/shape/0Const*
_output_shapes
: *
dtype0*
value	B :�
stft/frame/Reshape_3/shapePack%stft/frame/Reshape_3/shape/0:output:0stft/frame/floordiv_1:z:0*
N*
T0*
_output_shapes
:�
stft/frame/Reshape_3Reshapestft/frame/range_2:output:0#stft/frame/Reshape_3/shape:output:0*
T0*
_output_shapes

:@�
stft/frame/add_1AddV2stft/frame/Reshape_2:output:0stft/frame/Reshape_3:output:0*
T0*'
_output_shapes
:���������@}
stft/frame/packed_1Packstft/frame/Maximum:z:0stft/frame_length:output:0*
N*
T0*
_output_shapes
:�
stft/frame/GatherV2GatherV2stft/frame/Reshape_1:output:0stft/frame/add_1:z:0!stft/frame/strided_slice:output:0*
Taxis0*
Tindices0*
Tparams0*8
_output_shapes&
$:"������������������@Z
stft/frame/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
stft/frame/concat_2ConcatV2stft/frame/split:output:0stft/frame/packed_1:output:0stft/frame/split:output:2!stft/frame/concat_2/axis:output:0*
N*
T0*
_output_shapes
:�
stft/frame/Reshape_4Reshapestft/frame/GatherV2:output:0stft/frame/concat_2:output:0*
T0*-
_output_shapes
:�����������[
stft/hann_window/periodicConst*
_output_shapes
: *
dtype0
*
value	B
 Zq
stft/hann_window/CastCast"stft/hann_window/periodic:output:0*

DstT0*

SrcT0
*
_output_shapes
: X
stft/hann_window/mod/yConst*
_output_shapes
: *
dtype0*
value	B :~
stft/hann_window/modFloorModstft/frame_length:output:0stft/hann_window/mod/y:output:0*
T0*
_output_shapes
: X
stft/hann_window/sub/xConst*
_output_shapes
: *
dtype0*
value	B :w
stft/hann_window/subSubstft/hann_window/sub/x:output:0stft/hann_window/mod:z:0*
T0*
_output_shapes
: q
stft/hann_window/mulMulstft/hann_window/Cast:y:0stft/hann_window/sub:z:0*
T0*
_output_shapes
: t
stft/hann_window/addAddV2stft/frame_length:output:0stft/hann_window/mul:z:0*
T0*
_output_shapes
: Z
stft/hann_window/sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :{
stft/hann_window/sub_1Substft/hann_window/add:z:0!stft/hann_window/sub_1/y:output:0*
T0*
_output_shapes
: k
stft/hann_window/Cast_1Caststft/hann_window/sub_1:z:0*

DstT0*

SrcT0*
_output_shapes
: ^
stft/hann_window/range/startConst*
_output_shapes
: *
dtype0*
value	B : ^
stft/hann_window/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
stft/hann_window/rangeRange%stft/hann_window/range/start:output:0stft/frame_length:output:0%stft/hann_window/range/delta:output:0*
_output_shapes	
:�u
stft/hann_window/Cast_2Caststft/hann_window/range:output:0*

DstT0*

SrcT0*
_output_shapes	
:�[
stft/hann_window/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��@�
stft/hann_window/mul_1Mulstft/hann_window/Const:output:0stft/hann_window/Cast_2:y:0*
T0*
_output_shapes	
:��
stft/hann_window/truedivRealDivstft/hann_window/mul_1:z:0stft/hann_window/Cast_1:y:0*
T0*
_output_shapes	
:�_
stft/hann_window/CosCosstft/hann_window/truediv:z:0*
T0*
_output_shapes	
:�]
stft/hann_window/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
stft/hann_window/mul_2Mul!stft/hann_window/mul_2/x:output:0stft/hann_window/Cos:y:0*
T0*
_output_shapes	
:�]
stft/hann_window/sub_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
stft/hann_window/sub_2Sub!stft/hann_window/sub_2/x:output:0stft/hann_window/mul_2:z:0*
T0*
_output_shapes	
:��
stft/mulMulstft/frame/Reshape_4:output:0stft/hann_window/sub_2:z:0*
T0*-
_output_shapes
:�����������`
stft/rfft/packedPackstft/fft_length:output:0*
N*
T0*
_output_shapes
:_
stft/rfft/fft_lengthConst*
_output_shapes
:*
dtype0*
valueB:�m
	stft/rfftRFFTstft/mul:z:0stft/rfft/fft_length:output:0*-
_output_shapes
:�����������T
Abs
ComplexAbsstft/rfft:output:0*-
_output_shapes
:�����������l
)linear_to_mel_weight_matrix/sample_rate/xConst*
_output_shapes
: *
dtype0*
value
B :�}�
'linear_to_mel_weight_matrix/sample_rateCast2linear_to_mel_weight_matrix/sample_rate/x:output:0*

DstT0*

SrcT0*
_output_shapes
: q
,linear_to_mel_weight_matrix/lower_edge_hertzConst*
_output_shapes
: *
dtype0*
valueB
 *  �Bq
,linear_to_mel_weight_matrix/upper_edge_hertzConst*
_output_shapes
: *
dtype0*
valueB
 * ��Ef
!linear_to_mel_weight_matrix/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    j
%linear_to_mel_weight_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
#linear_to_mel_weight_matrix/truedivRealDiv+linear_to_mel_weight_matrix/sample_rate:y:0.linear_to_mel_weight_matrix/truediv/y:output:0*
T0*
_output_shapes
: k
(linear_to_mel_weight_matrix/linspace/numConst*
_output_shapes
: *
dtype0*
value
B :��
)linear_to_mel_weight_matrix/linspace/CastCast1linear_to_mel_weight_matrix/linspace/num:output:0*

DstT0*

SrcT0*
_output_shapes
: �
+linear_to_mel_weight_matrix/linspace/Cast_1Cast-linear_to_mel_weight_matrix/linspace/Cast:y:0*

DstT0*

SrcT0*
_output_shapes
: m
*linear_to_mel_weight_matrix/linspace/ShapeConst*
_output_shapes
: *
dtype0*
valueB o
,linear_to_mel_weight_matrix/linspace/Shape_1Const*
_output_shapes
: *
dtype0*
valueB �
2linear_to_mel_weight_matrix/linspace/BroadcastArgsBroadcastArgs3linear_to_mel_weight_matrix/linspace/Shape:output:05linear_to_mel_weight_matrix/linspace/Shape_1:output:0*
_output_shapes
: �
0linear_to_mel_weight_matrix/linspace/BroadcastToBroadcastTo*linear_to_mel_weight_matrix/Const:output:07linear_to_mel_weight_matrix/linspace/BroadcastArgs:r0:0*
T0*
_output_shapes
: �
2linear_to_mel_weight_matrix/linspace/BroadcastTo_1BroadcastTo'linear_to_mel_weight_matrix/truediv:z:07linear_to_mel_weight_matrix/linspace/BroadcastArgs:r0:0*
T0*
_output_shapes
: u
3linear_to_mel_weight_matrix/linspace/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : �
/linear_to_mel_weight_matrix/linspace/ExpandDims
ExpandDims9linear_to_mel_weight_matrix/linspace/BroadcastTo:output:0<linear_to_mel_weight_matrix/linspace/ExpandDims/dim:output:0*
T0*
_output_shapes
:w
5linear_to_mel_weight_matrix/linspace/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
1linear_to_mel_weight_matrix/linspace/ExpandDims_1
ExpandDims;linear_to_mel_weight_matrix/linspace/BroadcastTo_1:output:0>linear_to_mel_weight_matrix/linspace/ExpandDims_1/dim:output:0*
T0*
_output_shapes
:v
,linear_to_mel_weight_matrix/linspace/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:v
,linear_to_mel_weight_matrix/linspace/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:�
8linear_to_mel_weight_matrix/linspace/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
:linear_to_mel_weight_matrix/linspace/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
:linear_to_mel_weight_matrix/linspace/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
2linear_to_mel_weight_matrix/linspace/strided_sliceStridedSlice5linear_to_mel_weight_matrix/linspace/Shape_3:output:0Alinear_to_mel_weight_matrix/linspace/strided_slice/stack:output:0Clinear_to_mel_weight_matrix/linspace/strided_slice/stack_1:output:0Clinear_to_mel_weight_matrix/linspace/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*linear_to_mel_weight_matrix/linspace/add/yConst*
_output_shapes
: *
dtype0*
value	B : �
(linear_to_mel_weight_matrix/linspace/addAddV2;linear_to_mel_weight_matrix/linspace/strided_slice:output:03linear_to_mel_weight_matrix/linspace/add/y:output:0*
T0*
_output_shapes
: y
7linear_to_mel_weight_matrix/linspace/SelectV2/conditionConst*
_output_shapes
: *
dtype0
*
value	B
 Zq
/linear_to_mel_weight_matrix/linspace/SelectV2/tConst*
_output_shapes
: *
dtype0*
value	B : �
-linear_to_mel_weight_matrix/linspace/SelectV2SelectV2@linear_to_mel_weight_matrix/linspace/SelectV2/condition:output:08linear_to_mel_weight_matrix/linspace/SelectV2/t:output:0,linear_to_mel_weight_matrix/linspace/add:z:0*
T0*
_output_shapes
: l
*linear_to_mel_weight_matrix/linspace/sub/yConst*
_output_shapes
: *
dtype0*
value	B :�
(linear_to_mel_weight_matrix/linspace/subSub-linear_to_mel_weight_matrix/linspace/Cast:y:03linear_to_mel_weight_matrix/linspace/sub/y:output:0*
T0*
_output_shapes
: p
.linear_to_mel_weight_matrix/linspace/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B : �
,linear_to_mel_weight_matrix/linspace/MaximumMaximum,linear_to_mel_weight_matrix/linspace/sub:z:07linear_to_mel_weight_matrix/linspace/Maximum/y:output:0*
T0*
_output_shapes
: n
,linear_to_mel_weight_matrix/linspace/sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
*linear_to_mel_weight_matrix/linspace/sub_1Sub-linear_to_mel_weight_matrix/linspace/Cast:y:05linear_to_mel_weight_matrix/linspace/sub_1/y:output:0*
T0*
_output_shapes
: r
0linear_to_mel_weight_matrix/linspace/Maximum_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
.linear_to_mel_weight_matrix/linspace/Maximum_1Maximum.linear_to_mel_weight_matrix/linspace/sub_1:z:09linear_to_mel_weight_matrix/linspace/Maximum_1/y:output:0*
T0*
_output_shapes
: �
*linear_to_mel_weight_matrix/linspace/sub_2Sub:linear_to_mel_weight_matrix/linspace/ExpandDims_1:output:08linear_to_mel_weight_matrix/linspace/ExpandDims:output:0*
T0*
_output_shapes
:�
+linear_to_mel_weight_matrix/linspace/Cast_2Cast2linear_to_mel_weight_matrix/linspace/Maximum_1:z:0*

DstT0*

SrcT0*
_output_shapes
: �
,linear_to_mel_weight_matrix/linspace/truedivRealDiv.linear_to_mel_weight_matrix/linspace/sub_2:z:0/linear_to_mel_weight_matrix/linspace/Cast_2:y:0*
T0*
_output_shapes
:u
3linear_to_mel_weight_matrix/linspace/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
value	B : �
1linear_to_mel_weight_matrix/linspace/GreaterEqualGreaterEqual-linear_to_mel_weight_matrix/linspace/Cast:y:0<linear_to_mel_weight_matrix/linspace/GreaterEqual/y:output:0*
T0*
_output_shapes
: |
1linear_to_mel_weight_matrix/linspace/SelectV2_1/eConst*
_output_shapes
: *
dtype0*
valueB :
����������
/linear_to_mel_weight_matrix/linspace/SelectV2_1SelectV25linear_to_mel_weight_matrix/linspace/GreaterEqual:z:02linear_to_mel_weight_matrix/linspace/Maximum_1:z:0:linear_to_mel_weight_matrix/linspace/SelectV2_1/e:output:0*
T0*
_output_shapes
: r
0linear_to_mel_weight_matrix/linspace/range/startConst*
_output_shapes
: *
dtype0	*
value	B	 Rr
0linear_to_mel_weight_matrix/linspace/range/deltaConst*
_output_shapes
: *
dtype0	*
value	B	 R�
/linear_to_mel_weight_matrix/linspace/range/CastCast8linear_to_mel_weight_matrix/linspace/SelectV2_1:output:0*

DstT0	*

SrcT0*
_output_shapes
: �
*linear_to_mel_weight_matrix/linspace/rangeRange9linear_to_mel_weight_matrix/linspace/range/start:output:03linear_to_mel_weight_matrix/linspace/range/Cast:y:09linear_to_mel_weight_matrix/linspace/range/delta:output:0*

Tidx0	*
_output_shapes	
:��
+linear_to_mel_weight_matrix/linspace/Cast_3Cast3linear_to_mel_weight_matrix/linspace/range:output:0*

DstT0*

SrcT0	*
_output_shapes	
:�t
2linear_to_mel_weight_matrix/linspace/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : t
2linear_to_mel_weight_matrix/linspace/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
,linear_to_mel_weight_matrix/linspace/range_1Range;linear_to_mel_weight_matrix/linspace/range_1/start:output:0;linear_to_mel_weight_matrix/linspace/strided_slice:output:0;linear_to_mel_weight_matrix/linspace/range_1/delta:output:0*
_output_shapes
:�
*linear_to_mel_weight_matrix/linspace/EqualEqual6linear_to_mel_weight_matrix/linspace/SelectV2:output:05linear_to_mel_weight_matrix/linspace/range_1:output:0*
T0*
_output_shapes
:s
1linear_to_mel_weight_matrix/linspace/SelectV2_2/eConst*
_output_shapes
: *
dtype0*
value	B :�
/linear_to_mel_weight_matrix/linspace/SelectV2_2SelectV2.linear_to_mel_weight_matrix/linspace/Equal:z:00linear_to_mel_weight_matrix/linspace/Maximum:z:0:linear_to_mel_weight_matrix/linspace/SelectV2_2/e:output:0*
T0*
_output_shapes
:�
,linear_to_mel_weight_matrix/linspace/ReshapeReshape/linear_to_mel_weight_matrix/linspace/Cast_3:y:08linear_to_mel_weight_matrix/linspace/SelectV2_2:output:0*
T0*
_output_shapes	
:��
(linear_to_mel_weight_matrix/linspace/mulMul0linear_to_mel_weight_matrix/linspace/truediv:z:05linear_to_mel_weight_matrix/linspace/Reshape:output:0*
T0*
_output_shapes	
:��
*linear_to_mel_weight_matrix/linspace/add_1AddV28linear_to_mel_weight_matrix/linspace/ExpandDims:output:0,linear_to_mel_weight_matrix/linspace/mul:z:0*
T0*
_output_shapes	
:��
+linear_to_mel_weight_matrix/linspace/concatConcatV28linear_to_mel_weight_matrix/linspace/ExpandDims:output:0.linear_to_mel_weight_matrix/linspace/add_1:z:0:linear_to_mel_weight_matrix/linspace/ExpandDims_1:output:06linear_to_mel_weight_matrix/linspace/SelectV2:output:0*
N*
T0*
_output_shapes	
:�y
/linear_to_mel_weight_matrix/linspace/zeros_likeConst*
_output_shapes
:*
dtype0*
valueB: l
*linear_to_mel_weight_matrix/linspace/ConstConst*
_output_shapes
: *
dtype0*
value	B :�
:linear_to_mel_weight_matrix/linspace/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
<linear_to_mel_weight_matrix/linspace/strided_slice_1/stack_1Pack6linear_to_mel_weight_matrix/linspace/SelectV2:output:0*
N*
T0*
_output_shapes
:�
<linear_to_mel_weight_matrix/linspace/strided_slice_1/stack_2Pack3linear_to_mel_weight_matrix/linspace/Const:output:0*
N*
T0*
_output_shapes
:�
4linear_to_mel_weight_matrix/linspace/strided_slice_1StridedSlice5linear_to_mel_weight_matrix/linspace/Shape_2:output:0Clinear_to_mel_weight_matrix/linspace/strided_slice_1/stack:output:0Elinear_to_mel_weight_matrix/linspace/strided_slice_1/stack_1:output:0Elinear_to_mel_weight_matrix/linspace/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: ~
4linear_to_mel_weight_matrix/linspace/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
.linear_to_mel_weight_matrix/linspace/Reshape_1Reshape-linear_to_mel_weight_matrix/linspace/Cast:y:0=linear_to_mel_weight_matrix/linspace/Reshape_1/shape:output:0*
T0*
_output_shapes
:n
,linear_to_mel_weight_matrix/linspace/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :�
*linear_to_mel_weight_matrix/linspace/add_2AddV26linear_to_mel_weight_matrix/linspace/SelectV2:output:05linear_to_mel_weight_matrix/linspace/add_2/y:output:0*
T0*
_output_shapes
: n
,linear_to_mel_weight_matrix/linspace/Const_1Const*
_output_shapes
: *
dtype0*
value	B : n
,linear_to_mel_weight_matrix/linspace/Const_2Const*
_output_shapes
: *
dtype0*
value	B :�
:linear_to_mel_weight_matrix/linspace/strided_slice_2/stackPack.linear_to_mel_weight_matrix/linspace/add_2:z:0*
N*
T0*
_output_shapes
:�
<linear_to_mel_weight_matrix/linspace/strided_slice_2/stack_1Pack5linear_to_mel_weight_matrix/linspace/Const_1:output:0*
N*
T0*
_output_shapes
:�
<linear_to_mel_weight_matrix/linspace/strided_slice_2/stack_2Pack5linear_to_mel_weight_matrix/linspace/Const_2:output:0*
N*
T0*
_output_shapes
:�
4linear_to_mel_weight_matrix/linspace/strided_slice_2StridedSlice5linear_to_mel_weight_matrix/linspace/Shape_2:output:0Clinear_to_mel_weight_matrix/linspace/strided_slice_2/stack:output:0Elinear_to_mel_weight_matrix/linspace/strided_slice_2/stack_1:output:0Elinear_to_mel_weight_matrix/linspace/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_maskt
2linear_to_mel_weight_matrix/linspace/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
-linear_to_mel_weight_matrix/linspace/concat_1ConcatV2=linear_to_mel_weight_matrix/linspace/strided_slice_1:output:07linear_to_mel_weight_matrix/linspace/Reshape_1:output:0=linear_to_mel_weight_matrix/linspace/strided_slice_2:output:0;linear_to_mel_weight_matrix/linspace/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
*linear_to_mel_weight_matrix/linspace/SliceSlice4linear_to_mel_weight_matrix/linspace/concat:output:08linear_to_mel_weight_matrix/linspace/zeros_like:output:06linear_to_mel_weight_matrix/linspace/concat_1:output:0*
Index0*
T0*
_output_shapes	
:�y
/linear_to_mel_weight_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:{
1linear_to_mel_weight_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: {
1linear_to_mel_weight_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)linear_to_mel_weight_matrix/strided_sliceStridedSlice3linear_to_mel_weight_matrix/linspace/Slice:output:08linear_to_mel_weight_matrix/strided_slice/stack:output:0:linear_to_mel_weight_matrix/strided_slice/stack_1:output:0:linear_to_mel_weight_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes	
:�*
end_maskw
2linear_to_mel_weight_matrix/hertz_to_mel/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  /D�
0linear_to_mel_weight_matrix/hertz_to_mel/truedivRealDiv2linear_to_mel_weight_matrix/strided_slice:output:0;linear_to_mel_weight_matrix/hertz_to_mel/truediv/y:output:0*
T0*
_output_shapes	
:�s
.linear_to_mel_weight_matrix/hertz_to_mel/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
,linear_to_mel_weight_matrix/hertz_to_mel/addAddV27linear_to_mel_weight_matrix/hertz_to_mel/add/x:output:04linear_to_mel_weight_matrix/hertz_to_mel/truediv:z:0*
T0*
_output_shapes	
:��
,linear_to_mel_weight_matrix/hertz_to_mel/LogLog0linear_to_mel_weight_matrix/hertz_to_mel/add:z:0*
T0*
_output_shapes	
:�s
.linear_to_mel_weight_matrix/hertz_to_mel/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * ��D�
,linear_to_mel_weight_matrix/hertz_to_mel/mulMul7linear_to_mel_weight_matrix/hertz_to_mel/mul/x:output:00linear_to_mel_weight_matrix/hertz_to_mel/Log:y:0*
T0*
_output_shapes	
:�l
*linear_to_mel_weight_matrix/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :�
&linear_to_mel_weight_matrix/ExpandDims
ExpandDims0linear_to_mel_weight_matrix/hertz_to_mel/mul:z:03linear_to_mel_weight_matrix/ExpandDims/dim:output:0*
T0*
_output_shapes
:	�y
4linear_to_mel_weight_matrix/hertz_to_mel_1/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  /D�
2linear_to_mel_weight_matrix/hertz_to_mel_1/truedivRealDiv5linear_to_mel_weight_matrix/lower_edge_hertz:output:0=linear_to_mel_weight_matrix/hertz_to_mel_1/truediv/y:output:0*
T0*
_output_shapes
: u
0linear_to_mel_weight_matrix/hertz_to_mel_1/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
.linear_to_mel_weight_matrix/hertz_to_mel_1/addAddV29linear_to_mel_weight_matrix/hertz_to_mel_1/add/x:output:06linear_to_mel_weight_matrix/hertz_to_mel_1/truediv:z:0*
T0*
_output_shapes
: �
.linear_to_mel_weight_matrix/hertz_to_mel_1/LogLog2linear_to_mel_weight_matrix/hertz_to_mel_1/add:z:0*
T0*
_output_shapes
: u
0linear_to_mel_weight_matrix/hertz_to_mel_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * ��D�
.linear_to_mel_weight_matrix/hertz_to_mel_1/mulMul9linear_to_mel_weight_matrix/hertz_to_mel_1/mul/x:output:02linear_to_mel_weight_matrix/hertz_to_mel_1/Log:y:0*
T0*
_output_shapes
: y
4linear_to_mel_weight_matrix/hertz_to_mel_2/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  /D�
2linear_to_mel_weight_matrix/hertz_to_mel_2/truedivRealDiv5linear_to_mel_weight_matrix/upper_edge_hertz:output:0=linear_to_mel_weight_matrix/hertz_to_mel_2/truediv/y:output:0*
T0*
_output_shapes
: u
0linear_to_mel_weight_matrix/hertz_to_mel_2/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
.linear_to_mel_weight_matrix/hertz_to_mel_2/addAddV29linear_to_mel_weight_matrix/hertz_to_mel_2/add/x:output:06linear_to_mel_weight_matrix/hertz_to_mel_2/truediv:z:0*
T0*
_output_shapes
: �
.linear_to_mel_weight_matrix/hertz_to_mel_2/LogLog2linear_to_mel_weight_matrix/hertz_to_mel_2/add:z:0*
T0*
_output_shapes
: u
0linear_to_mel_weight_matrix/hertz_to_mel_2/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 * ��D�
.linear_to_mel_weight_matrix/hertz_to_mel_2/mulMul9linear_to_mel_weight_matrix/hertz_to_mel_2/mul/x:output:02linear_to_mel_weight_matrix/hertz_to_mel_2/Log:y:0*
T0*
_output_shapes
: l
*linear_to_mel_weight_matrix/linspace_1/numConst*
_output_shapes
: *
dtype0*
value	B :R�
+linear_to_mel_weight_matrix/linspace_1/CastCast3linear_to_mel_weight_matrix/linspace_1/num:output:0*

DstT0*

SrcT0*
_output_shapes
: �
-linear_to_mel_weight_matrix/linspace_1/Cast_1Cast/linear_to_mel_weight_matrix/linspace_1/Cast:y:0*

DstT0*

SrcT0*
_output_shapes
: o
,linear_to_mel_weight_matrix/linspace_1/ShapeConst*
_output_shapes
: *
dtype0*
valueB q
.linear_to_mel_weight_matrix/linspace_1/Shape_1Const*
_output_shapes
: *
dtype0*
valueB �
4linear_to_mel_weight_matrix/linspace_1/BroadcastArgsBroadcastArgs5linear_to_mel_weight_matrix/linspace_1/Shape:output:07linear_to_mel_weight_matrix/linspace_1/Shape_1:output:0*
_output_shapes
: �
2linear_to_mel_weight_matrix/linspace_1/BroadcastToBroadcastTo2linear_to_mel_weight_matrix/hertz_to_mel_1/mul:z:09linear_to_mel_weight_matrix/linspace_1/BroadcastArgs:r0:0*
T0*
_output_shapes
: �
4linear_to_mel_weight_matrix/linspace_1/BroadcastTo_1BroadcastTo2linear_to_mel_weight_matrix/hertz_to_mel_2/mul:z:09linear_to_mel_weight_matrix/linspace_1/BroadcastArgs:r0:0*
T0*
_output_shapes
: w
5linear_to_mel_weight_matrix/linspace_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : �
1linear_to_mel_weight_matrix/linspace_1/ExpandDims
ExpandDims;linear_to_mel_weight_matrix/linspace_1/BroadcastTo:output:0>linear_to_mel_weight_matrix/linspace_1/ExpandDims/dim:output:0*
T0*
_output_shapes
:y
7linear_to_mel_weight_matrix/linspace_1/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
3linear_to_mel_weight_matrix/linspace_1/ExpandDims_1
ExpandDims=linear_to_mel_weight_matrix/linspace_1/BroadcastTo_1:output:0@linear_to_mel_weight_matrix/linspace_1/ExpandDims_1/dim:output:0*
T0*
_output_shapes
:x
.linear_to_mel_weight_matrix/linspace_1/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:x
.linear_to_mel_weight_matrix/linspace_1/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:�
:linear_to_mel_weight_matrix/linspace_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
<linear_to_mel_weight_matrix/linspace_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
<linear_to_mel_weight_matrix/linspace_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
4linear_to_mel_weight_matrix/linspace_1/strided_sliceStridedSlice7linear_to_mel_weight_matrix/linspace_1/Shape_3:output:0Clinear_to_mel_weight_matrix/linspace_1/strided_slice/stack:output:0Elinear_to_mel_weight_matrix/linspace_1/strided_slice/stack_1:output:0Elinear_to_mel_weight_matrix/linspace_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
,linear_to_mel_weight_matrix/linspace_1/add/yConst*
_output_shapes
: *
dtype0*
value	B : �
*linear_to_mel_weight_matrix/linspace_1/addAddV2=linear_to_mel_weight_matrix/linspace_1/strided_slice:output:05linear_to_mel_weight_matrix/linspace_1/add/y:output:0*
T0*
_output_shapes
: {
9linear_to_mel_weight_matrix/linspace_1/SelectV2/conditionConst*
_output_shapes
: *
dtype0
*
value	B
 Zs
1linear_to_mel_weight_matrix/linspace_1/SelectV2/tConst*
_output_shapes
: *
dtype0*
value	B : �
/linear_to_mel_weight_matrix/linspace_1/SelectV2SelectV2Blinear_to_mel_weight_matrix/linspace_1/SelectV2/condition:output:0:linear_to_mel_weight_matrix/linspace_1/SelectV2/t:output:0.linear_to_mel_weight_matrix/linspace_1/add:z:0*
T0*
_output_shapes
: n
,linear_to_mel_weight_matrix/linspace_1/sub/yConst*
_output_shapes
: *
dtype0*
value	B :�
*linear_to_mel_weight_matrix/linspace_1/subSub/linear_to_mel_weight_matrix/linspace_1/Cast:y:05linear_to_mel_weight_matrix/linspace_1/sub/y:output:0*
T0*
_output_shapes
: r
0linear_to_mel_weight_matrix/linspace_1/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B : �
.linear_to_mel_weight_matrix/linspace_1/MaximumMaximum.linear_to_mel_weight_matrix/linspace_1/sub:z:09linear_to_mel_weight_matrix/linspace_1/Maximum/y:output:0*
T0*
_output_shapes
: p
.linear_to_mel_weight_matrix/linspace_1/sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
,linear_to_mel_weight_matrix/linspace_1/sub_1Sub/linear_to_mel_weight_matrix/linspace_1/Cast:y:07linear_to_mel_weight_matrix/linspace_1/sub_1/y:output:0*
T0*
_output_shapes
: t
2linear_to_mel_weight_matrix/linspace_1/Maximum_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
0linear_to_mel_weight_matrix/linspace_1/Maximum_1Maximum0linear_to_mel_weight_matrix/linspace_1/sub_1:z:0;linear_to_mel_weight_matrix/linspace_1/Maximum_1/y:output:0*
T0*
_output_shapes
: �
,linear_to_mel_weight_matrix/linspace_1/sub_2Sub<linear_to_mel_weight_matrix/linspace_1/ExpandDims_1:output:0:linear_to_mel_weight_matrix/linspace_1/ExpandDims:output:0*
T0*
_output_shapes
:�
-linear_to_mel_weight_matrix/linspace_1/Cast_2Cast4linear_to_mel_weight_matrix/linspace_1/Maximum_1:z:0*

DstT0*

SrcT0*
_output_shapes
: �
.linear_to_mel_weight_matrix/linspace_1/truedivRealDiv0linear_to_mel_weight_matrix/linspace_1/sub_2:z:01linear_to_mel_weight_matrix/linspace_1/Cast_2:y:0*
T0*
_output_shapes
:w
5linear_to_mel_weight_matrix/linspace_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
value	B : �
3linear_to_mel_weight_matrix/linspace_1/GreaterEqualGreaterEqual/linear_to_mel_weight_matrix/linspace_1/Cast:y:0>linear_to_mel_weight_matrix/linspace_1/GreaterEqual/y:output:0*
T0*
_output_shapes
: ~
3linear_to_mel_weight_matrix/linspace_1/SelectV2_1/eConst*
_output_shapes
: *
dtype0*
valueB :
����������
1linear_to_mel_weight_matrix/linspace_1/SelectV2_1SelectV27linear_to_mel_weight_matrix/linspace_1/GreaterEqual:z:04linear_to_mel_weight_matrix/linspace_1/Maximum_1:z:0<linear_to_mel_weight_matrix/linspace_1/SelectV2_1/e:output:0*
T0*
_output_shapes
: t
2linear_to_mel_weight_matrix/linspace_1/range/startConst*
_output_shapes
: *
dtype0	*
value	B	 Rt
2linear_to_mel_weight_matrix/linspace_1/range/deltaConst*
_output_shapes
: *
dtype0	*
value	B	 R�
1linear_to_mel_weight_matrix/linspace_1/range/CastCast:linear_to_mel_weight_matrix/linspace_1/SelectV2_1:output:0*

DstT0	*

SrcT0*
_output_shapes
: �
,linear_to_mel_weight_matrix/linspace_1/rangeRange;linear_to_mel_weight_matrix/linspace_1/range/start:output:05linear_to_mel_weight_matrix/linspace_1/range/Cast:y:0;linear_to_mel_weight_matrix/linspace_1/range/delta:output:0*

Tidx0	*
_output_shapes
:P�
-linear_to_mel_weight_matrix/linspace_1/Cast_3Cast5linear_to_mel_weight_matrix/linspace_1/range:output:0*

DstT0*

SrcT0	*
_output_shapes
:Pv
4linear_to_mel_weight_matrix/linspace_1/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : v
4linear_to_mel_weight_matrix/linspace_1/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
.linear_to_mel_weight_matrix/linspace_1/range_1Range=linear_to_mel_weight_matrix/linspace_1/range_1/start:output:0=linear_to_mel_weight_matrix/linspace_1/strided_slice:output:0=linear_to_mel_weight_matrix/linspace_1/range_1/delta:output:0*
_output_shapes
:�
,linear_to_mel_weight_matrix/linspace_1/EqualEqual8linear_to_mel_weight_matrix/linspace_1/SelectV2:output:07linear_to_mel_weight_matrix/linspace_1/range_1:output:0*
T0*
_output_shapes
:u
3linear_to_mel_weight_matrix/linspace_1/SelectV2_2/eConst*
_output_shapes
: *
dtype0*
value	B :�
1linear_to_mel_weight_matrix/linspace_1/SelectV2_2SelectV20linear_to_mel_weight_matrix/linspace_1/Equal:z:02linear_to_mel_weight_matrix/linspace_1/Maximum:z:0<linear_to_mel_weight_matrix/linspace_1/SelectV2_2/e:output:0*
T0*
_output_shapes
:�
.linear_to_mel_weight_matrix/linspace_1/ReshapeReshape1linear_to_mel_weight_matrix/linspace_1/Cast_3:y:0:linear_to_mel_weight_matrix/linspace_1/SelectV2_2:output:0*
T0*
_output_shapes
:P�
*linear_to_mel_weight_matrix/linspace_1/mulMul2linear_to_mel_weight_matrix/linspace_1/truediv:z:07linear_to_mel_weight_matrix/linspace_1/Reshape:output:0*
T0*
_output_shapes
:P�
,linear_to_mel_weight_matrix/linspace_1/add_1AddV2:linear_to_mel_weight_matrix/linspace_1/ExpandDims:output:0.linear_to_mel_weight_matrix/linspace_1/mul:z:0*
T0*
_output_shapes
:P�
-linear_to_mel_weight_matrix/linspace_1/concatConcatV2:linear_to_mel_weight_matrix/linspace_1/ExpandDims:output:00linear_to_mel_weight_matrix/linspace_1/add_1:z:0<linear_to_mel_weight_matrix/linspace_1/ExpandDims_1:output:08linear_to_mel_weight_matrix/linspace_1/SelectV2:output:0*
N*
T0*
_output_shapes
:R{
1linear_to_mel_weight_matrix/linspace_1/zeros_likeConst*
_output_shapes
:*
dtype0*
valueB: n
,linear_to_mel_weight_matrix/linspace_1/ConstConst*
_output_shapes
: *
dtype0*
value	B :�
<linear_to_mel_weight_matrix/linspace_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
>linear_to_mel_weight_matrix/linspace_1/strided_slice_1/stack_1Pack8linear_to_mel_weight_matrix/linspace_1/SelectV2:output:0*
N*
T0*
_output_shapes
:�
>linear_to_mel_weight_matrix/linspace_1/strided_slice_1/stack_2Pack5linear_to_mel_weight_matrix/linspace_1/Const:output:0*
N*
T0*
_output_shapes
:�
6linear_to_mel_weight_matrix/linspace_1/strided_slice_1StridedSlice7linear_to_mel_weight_matrix/linspace_1/Shape_2:output:0Elinear_to_mel_weight_matrix/linspace_1/strided_slice_1/stack:output:0Glinear_to_mel_weight_matrix/linspace_1/strided_slice_1/stack_1:output:0Glinear_to_mel_weight_matrix/linspace_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: �
6linear_to_mel_weight_matrix/linspace_1/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
0linear_to_mel_weight_matrix/linspace_1/Reshape_1Reshape/linear_to_mel_weight_matrix/linspace_1/Cast:y:0?linear_to_mel_weight_matrix/linspace_1/Reshape_1/shape:output:0*
T0*
_output_shapes
:p
.linear_to_mel_weight_matrix/linspace_1/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :�
,linear_to_mel_weight_matrix/linspace_1/add_2AddV28linear_to_mel_weight_matrix/linspace_1/SelectV2:output:07linear_to_mel_weight_matrix/linspace_1/add_2/y:output:0*
T0*
_output_shapes
: p
.linear_to_mel_weight_matrix/linspace_1/Const_1Const*
_output_shapes
: *
dtype0*
value	B : p
.linear_to_mel_weight_matrix/linspace_1/Const_2Const*
_output_shapes
: *
dtype0*
value	B :�
<linear_to_mel_weight_matrix/linspace_1/strided_slice_2/stackPack0linear_to_mel_weight_matrix/linspace_1/add_2:z:0*
N*
T0*
_output_shapes
:�
>linear_to_mel_weight_matrix/linspace_1/strided_slice_2/stack_1Pack7linear_to_mel_weight_matrix/linspace_1/Const_1:output:0*
N*
T0*
_output_shapes
:�
>linear_to_mel_weight_matrix/linspace_1/strided_slice_2/stack_2Pack7linear_to_mel_weight_matrix/linspace_1/Const_2:output:0*
N*
T0*
_output_shapes
:�
6linear_to_mel_weight_matrix/linspace_1/strided_slice_2StridedSlice7linear_to_mel_weight_matrix/linspace_1/Shape_2:output:0Elinear_to_mel_weight_matrix/linspace_1/strided_slice_2/stack:output:0Glinear_to_mel_weight_matrix/linspace_1/strided_slice_2/stack_1:output:0Glinear_to_mel_weight_matrix/linspace_1/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_maskv
4linear_to_mel_weight_matrix/linspace_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
/linear_to_mel_weight_matrix/linspace_1/concat_1ConcatV2?linear_to_mel_weight_matrix/linspace_1/strided_slice_1:output:09linear_to_mel_weight_matrix/linspace_1/Reshape_1:output:0?linear_to_mel_weight_matrix/linspace_1/strided_slice_2:output:0=linear_to_mel_weight_matrix/linspace_1/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
,linear_to_mel_weight_matrix/linspace_1/SliceSlice6linear_to_mel_weight_matrix/linspace_1/concat:output:0:linear_to_mel_weight_matrix/linspace_1/zeros_like:output:08linear_to_mel_weight_matrix/linspace_1/concat_1:output:0*
Index0*
T0*
_output_shapes
:Rp
.linear_to_mel_weight_matrix/frame/frame_lengthConst*
_output_shapes
: *
dtype0*
value	B :n
,linear_to_mel_weight_matrix/frame/frame_stepConst*
_output_shapes
: *
dtype0*
value	B :q
&linear_to_mel_weight_matrix/frame/axisConst*
_output_shapes
: *
dtype0*
valueB :
���������q
'linear_to_mel_weight_matrix/frame/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ro
,linear_to_mel_weight_matrix/frame/Size/ConstConst*
_output_shapes
: *
dtype0*
valueB h
&linear_to_mel_weight_matrix/frame/SizeConst*
_output_shapes
: *
dtype0*
value	B : q
.linear_to_mel_weight_matrix/frame/Size_1/ConstConst*
_output_shapes
: *
dtype0*
valueB j
(linear_to_mel_weight_matrix/frame/Size_1Const*
_output_shapes
: *
dtype0*
value	B : i
'linear_to_mel_weight_matrix/frame/ConstConst*
_output_shapes
: *
dtype0*
value	B : i
'linear_to_mel_weight_matrix/frame/sub/xConst*
_output_shapes
: *
dtype0*
value	B :R�
%linear_to_mel_weight_matrix/frame/subSub0linear_to_mel_weight_matrix/frame/sub/x:output:07linear_to_mel_weight_matrix/frame/frame_length:output:0*
T0*
_output_shapes
: �
*linear_to_mel_weight_matrix/frame/floordivFloorDiv)linear_to_mel_weight_matrix/frame/sub:z:05linear_to_mel_weight_matrix/frame/frame_step:output:0*
T0*
_output_shapes
: i
'linear_to_mel_weight_matrix/frame/add/xConst*
_output_shapes
: *
dtype0*
value	B :�
%linear_to_mel_weight_matrix/frame/addAddV20linear_to_mel_weight_matrix/frame/add/x:output:0.linear_to_mel_weight_matrix/frame/floordiv:z:0*
T0*
_output_shapes
: �
)linear_to_mel_weight_matrix/frame/MaximumMaximum0linear_to_mel_weight_matrix/frame/Const:output:0)linear_to_mel_weight_matrix/frame/add:z:0*
T0*
_output_shapes
: m
+linear_to_mel_weight_matrix/frame/gcd/ConstConst*
_output_shapes
: *
dtype0*
value	B :p
.linear_to_mel_weight_matrix/frame/floordiv_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
,linear_to_mel_weight_matrix/frame/floordiv_1FloorDiv7linear_to_mel_weight_matrix/frame/frame_length:output:07linear_to_mel_weight_matrix/frame/floordiv_1/y:output:0*
T0*
_output_shapes
: p
.linear_to_mel_weight_matrix/frame/floordiv_2/yConst*
_output_shapes
: *
dtype0*
value	B :�
,linear_to_mel_weight_matrix/frame/floordiv_2FloorDiv5linear_to_mel_weight_matrix/frame/frame_step:output:07linear_to_mel_weight_matrix/frame/floordiv_2/y:output:0*
T0*
_output_shapes
: t
1linear_to_mel_weight_matrix/frame/concat/values_0Const*
_output_shapes
: *
dtype0*
valueB {
1linear_to_mel_weight_matrix/frame/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB:Rt
1linear_to_mel_weight_matrix/frame/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB o
-linear_to_mel_weight_matrix/frame/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
(linear_to_mel_weight_matrix/frame/concatConcatV2:linear_to_mel_weight_matrix/frame/concat/values_0:output:0:linear_to_mel_weight_matrix/frame/concat/values_1:output:0:linear_to_mel_weight_matrix/frame/concat/values_2:output:06linear_to_mel_weight_matrix/frame/concat/axis:output:0*
N*
T0*
_output_shapes
:v
3linear_to_mel_weight_matrix/frame/concat_1/values_0Const*
_output_shapes
: *
dtype0*
valueB �
3linear_to_mel_weight_matrix/frame/concat_1/values_1Const*
_output_shapes
:*
dtype0*
valueB"R      v
3linear_to_mel_weight_matrix/frame/concat_1/values_2Const*
_output_shapes
: *
dtype0*
valueB q
/linear_to_mel_weight_matrix/frame/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
*linear_to_mel_weight_matrix/frame/concat_1ConcatV2<linear_to_mel_weight_matrix/frame/concat_1/values_0:output:0<linear_to_mel_weight_matrix/frame/concat_1/values_1:output:0<linear_to_mel_weight_matrix/frame/concat_1/values_2:output:08linear_to_mel_weight_matrix/frame/concat_1/axis:output:0*
N*
T0*
_output_shapes
:}
3linear_to_mel_weight_matrix/frame/zeros_like/tensorConst*
_output_shapes
:*
dtype0*
valueB:Rv
,linear_to_mel_weight_matrix/frame/zeros_likeConst*
_output_shapes
:*
dtype0*
valueB: �
Alinear_to_mel_weight_matrix/frame/ones_like/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:s
1linear_to_mel_weight_matrix/frame/ones_like/ConstConst*
_output_shapes
: *
dtype0*
value	B :�
+linear_to_mel_weight_matrix/frame/ones_likeFillJlinear_to_mel_weight_matrix/frame/ones_like/Shape/shape_as_tensor:output:0:linear_to_mel_weight_matrix/frame/ones_like/Const:output:0*
T0*
_output_shapes
:�
.linear_to_mel_weight_matrix/frame/StridedSliceStridedSlice5linear_to_mel_weight_matrix/linspace_1/Slice:output:05linear_to_mel_weight_matrix/frame/zeros_like:output:01linear_to_mel_weight_matrix/frame/concat:output:04linear_to_mel_weight_matrix/frame/ones_like:output:0*
Index0*
T0*
_output_shapes
:R�
)linear_to_mel_weight_matrix/frame/ReshapeReshape7linear_to_mel_weight_matrix/frame/StridedSlice:output:03linear_to_mel_weight_matrix/frame/concat_1:output:0*
T0*
_output_shapes

:Ro
-linear_to_mel_weight_matrix/frame/range/startConst*
_output_shapes
: *
dtype0*
value	B : o
-linear_to_mel_weight_matrix/frame/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
'linear_to_mel_weight_matrix/frame/rangeRange6linear_to_mel_weight_matrix/frame/range/start:output:0-linear_to_mel_weight_matrix/frame/Maximum:z:06linear_to_mel_weight_matrix/frame/range/delta:output:0*
_output_shapes
:P�
%linear_to_mel_weight_matrix/frame/mulMul0linear_to_mel_weight_matrix/frame/range:output:00linear_to_mel_weight_matrix/frame/floordiv_2:z:0*
T0*
_output_shapes
:Pu
3linear_to_mel_weight_matrix/frame/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
1linear_to_mel_weight_matrix/frame/Reshape_1/shapePack-linear_to_mel_weight_matrix/frame/Maximum:z:0<linear_to_mel_weight_matrix/frame/Reshape_1/shape/1:output:0*
N*
T0*
_output_shapes
:�
+linear_to_mel_weight_matrix/frame/Reshape_1Reshape)linear_to_mel_weight_matrix/frame/mul:z:0:linear_to_mel_weight_matrix/frame/Reshape_1/shape:output:0*
T0*
_output_shapes

:Pq
/linear_to_mel_weight_matrix/frame/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : q
/linear_to_mel_weight_matrix/frame/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
)linear_to_mel_weight_matrix/frame/range_1Range8linear_to_mel_weight_matrix/frame/range_1/start:output:00linear_to_mel_weight_matrix/frame/floordiv_1:z:08linear_to_mel_weight_matrix/frame/range_1/delta:output:0*
_output_shapes
:u
3linear_to_mel_weight_matrix/frame/Reshape_2/shape/0Const*
_output_shapes
: *
dtype0*
value	B :�
1linear_to_mel_weight_matrix/frame/Reshape_2/shapePack<linear_to_mel_weight_matrix/frame/Reshape_2/shape/0:output:00linear_to_mel_weight_matrix/frame/floordiv_1:z:0*
N*
T0*
_output_shapes
:�
+linear_to_mel_weight_matrix/frame/Reshape_2Reshape2linear_to_mel_weight_matrix/frame/range_1:output:0:linear_to_mel_weight_matrix/frame/Reshape_2/shape:output:0*
T0*
_output_shapes

:�
'linear_to_mel_weight_matrix/frame/add_1AddV24linear_to_mel_weight_matrix/frame/Reshape_1:output:04linear_to_mel_weight_matrix/frame/Reshape_2:output:0*
T0*
_output_shapes

:Pl
)linear_to_mel_weight_matrix/frame/Const_1Const*
_output_shapes
: *
dtype0*
valueB l
)linear_to_mel_weight_matrix/frame/Const_2Const*
_output_shapes
: *
dtype0*
valueB �
(linear_to_mel_weight_matrix/frame/packedPack-linear_to_mel_weight_matrix/frame/Maximum:z:07linear_to_mel_weight_matrix/frame/frame_length:output:0*
N*
T0*
_output_shapes
:q
/linear_to_mel_weight_matrix/frame/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
*linear_to_mel_weight_matrix/frame/GatherV2GatherV22linear_to_mel_weight_matrix/frame/Reshape:output:0+linear_to_mel_weight_matrix/frame/add_1:z:08linear_to_mel_weight_matrix/frame/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*"
_output_shapes
:Pq
/linear_to_mel_weight_matrix/frame/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
*linear_to_mel_weight_matrix/frame/concat_2ConcatV22linear_to_mel_weight_matrix/frame/Const_1:output:01linear_to_mel_weight_matrix/frame/packed:output:02linear_to_mel_weight_matrix/frame/Const_2:output:08linear_to_mel_weight_matrix/frame/concat_2/axis:output:0*
N*
T0*
_output_shapes
:�
+linear_to_mel_weight_matrix/frame/Reshape_3Reshape3linear_to_mel_weight_matrix/frame/GatherV2:output:03linear_to_mel_weight_matrix/frame/concat_2:output:0*
T0*
_output_shapes

:Pm
+linear_to_mel_weight_matrix/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
!linear_to_mel_weight_matrix/splitSplit4linear_to_mel_weight_matrix/split/split_dim:output:04linear_to_mel_weight_matrix/frame/Reshape_3:output:0*
T0*2
_output_shapes 
:P:P:P*
	num_splitz
)linear_to_mel_weight_matrix/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"   P   �
#linear_to_mel_weight_matrix/ReshapeReshape*linear_to_mel_weight_matrix/split:output:02linear_to_mel_weight_matrix/Reshape/shape:output:0*
T0*
_output_shapes

:P|
+linear_to_mel_weight_matrix/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   P   �
%linear_to_mel_weight_matrix/Reshape_1Reshape*linear_to_mel_weight_matrix/split:output:14linear_to_mel_weight_matrix/Reshape_1/shape:output:0*
T0*
_output_shapes

:P|
+linear_to_mel_weight_matrix/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"   P   �
%linear_to_mel_weight_matrix/Reshape_2Reshape*linear_to_mel_weight_matrix/split:output:24linear_to_mel_weight_matrix/Reshape_2/shape:output:0*
T0*
_output_shapes

:P�
linear_to_mel_weight_matrix/subSub/linear_to_mel_weight_matrix/ExpandDims:output:0,linear_to_mel_weight_matrix/Reshape:output:0*
T0*
_output_shapes
:	�P�
!linear_to_mel_weight_matrix/sub_1Sub.linear_to_mel_weight_matrix/Reshape_1:output:0,linear_to_mel_weight_matrix/Reshape:output:0*
T0*
_output_shapes

:P�
%linear_to_mel_weight_matrix/truediv_1RealDiv#linear_to_mel_weight_matrix/sub:z:0%linear_to_mel_weight_matrix/sub_1:z:0*
T0*
_output_shapes
:	�P�
!linear_to_mel_weight_matrix/sub_2Sub.linear_to_mel_weight_matrix/Reshape_2:output:0/linear_to_mel_weight_matrix/ExpandDims:output:0*
T0*
_output_shapes
:	�P�
!linear_to_mel_weight_matrix/sub_3Sub.linear_to_mel_weight_matrix/Reshape_2:output:0.linear_to_mel_weight_matrix/Reshape_1:output:0*
T0*
_output_shapes

:P�
%linear_to_mel_weight_matrix/truediv_2RealDiv%linear_to_mel_weight_matrix/sub_2:z:0%linear_to_mel_weight_matrix/sub_3:z:0*
T0*
_output_shapes
:	�P�
#linear_to_mel_weight_matrix/MinimumMinimum)linear_to_mel_weight_matrix/truediv_1:z:0)linear_to_mel_weight_matrix/truediv_2:z:0*
T0*
_output_shapes
:	�P�
#linear_to_mel_weight_matrix/MaximumMaximum*linear_to_mel_weight_matrix/Const:output:0'linear_to_mel_weight_matrix/Minimum:z:0*
T0*
_output_shapes
:	�P�
$linear_to_mel_weight_matrix/paddingsConst*
_output_shapes

:*
dtype0*)
value B"               �
linear_to_mel_weight_matrixPad'linear_to_mel_weight_matrix/Maximum:z:0-linear_to_mel_weight_matrix/paddings:output:0*
T0*
_output_shapes
:	�PX
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       T
Tensordot/ShapeShapeAbs:y:0*
T0*
_output_shapes
::��Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:|
Tensordot/transpose	TransposeAbs:y:0Tensordot/concat:output:0*
T0*-
_output_shapes
:������������
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0$linear_to_mel_weight_matrix:output:0*
T0*'
_output_shapes
:���������P[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:PY
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:����������PJ
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5g
addAddV2Tensordot:output:0add/y:output:0*
T0*,
_output_shapes
:����������PJ
LogLogadd:z:0*
T0*,
_output_shapes
:����������Pn
)mfccs_from_log_mel_spectrograms/dct/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
*mfccs_from_log_mel_spectrograms/dct/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :P�
(mfccs_from_log_mel_spectrograms/dct/CastCast3mfccs_from_log_mel_spectrograms/dct/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: q
/mfccs_from_log_mel_spectrograms/dct/range/startConst*
_output_shapes
: *
dtype0*
value	B : q
/mfccs_from_log_mel_spectrograms/dct/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
.mfccs_from_log_mel_spectrograms/dct/range/CastCast8mfccs_from_log_mel_spectrograms/dct/range/start:output:0*

DstT0*

SrcT0*
_output_shapes
: �
0mfccs_from_log_mel_spectrograms/dct/range/Cast_1Cast8mfccs_from_log_mel_spectrograms/dct/range/delta:output:0*

DstT0*

SrcT0*
_output_shapes
: �
)mfccs_from_log_mel_spectrograms/dct/rangeRange2mfccs_from_log_mel_spectrograms/dct/range/Cast:y:0,mfccs_from_log_mel_spectrograms/dct/Cast:y:04mfccs_from_log_mel_spectrograms/dct/range/Cast_1:y:0*

Tidx0*
_output_shapes
:P�
'mfccs_from_log_mel_spectrograms/dct/NegNeg2mfccs_from_log_mel_spectrograms/dct/range:output:0*
T0*
_output_shapes
:Pn
)mfccs_from_log_mel_spectrograms/dct/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *�I@�
'mfccs_from_log_mel_spectrograms/dct/mulMul+mfccs_from_log_mel_spectrograms/dct/Neg:y:02mfccs_from_log_mel_spectrograms/dct/mul/y:output:0*
T0*
_output_shapes
:Pp
+mfccs_from_log_mel_spectrograms/dct/mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
)mfccs_from_log_mel_spectrograms/dct/mul_1Mul+mfccs_from_log_mel_spectrograms/dct/mul:z:04mfccs_from_log_mel_spectrograms/dct/mul_1/y:output:0*
T0*
_output_shapes
:P�
+mfccs_from_log_mel_spectrograms/dct/truedivRealDiv-mfccs_from_log_mel_spectrograms/dct/mul_1:z:0,mfccs_from_log_mel_spectrograms/dct/Cast:y:0*
T0*
_output_shapes
:P�
+mfccs_from_log_mel_spectrograms/dct/ComplexComplex2mfccs_from_log_mel_spectrograms/dct/Const:output:0/mfccs_from_log_mel_spectrograms/dct/truediv:z:0*
_output_shapes
:P�
'mfccs_from_log_mel_spectrograms/dct/ExpExp1mfccs_from_log_mel_spectrograms/dct/Complex:out:0*
T0*
_output_shapes
:Pt
+mfccs_from_log_mel_spectrograms/dct/mul_2/xConst*
_output_shapes
: *
dtype0*
valueB J   @    �
)mfccs_from_log_mel_spectrograms/dct/mul_2Mul4mfccs_from_log_mel_spectrograms/dct/mul_2/x:output:0+mfccs_from_log_mel_spectrograms/dct/Exp:y:0*
T0*
_output_shapes
:Py
.mfccs_from_log_mel_spectrograms/dct/rfft/ConstConst*
_output_shapes
:*
dtype0*
valueB:��
5mfccs_from_log_mel_spectrograms/dct/rfft/Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                    P   �
,mfccs_from_log_mel_spectrograms/dct/rfft/PadPadLog:y:0>mfccs_from_log_mel_spectrograms/dct/rfft/Pad/paddings:output:0*
T0*-
_output_shapes
:�����������~
3mfccs_from_log_mel_spectrograms/dct/rfft/fft_lengthConst*
_output_shapes
:*
dtype0*
valueB:��
(mfccs_from_log_mel_spectrograms/dct/rfftRFFT5mfccs_from_log_mel_spectrograms/dct/rfft/Pad:output:0<mfccs_from_log_mel_spectrograms/dct/rfft/fft_length:output:0*,
_output_shapes
:����������Q�
7mfccs_from_log_mel_spectrograms/dct/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
9mfccs_from_log_mel_spectrograms/dct/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    P   �
9mfccs_from_log_mel_spectrograms/dct/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
1mfccs_from_log_mel_spectrograms/dct/strided_sliceStridedSlice1mfccs_from_log_mel_spectrograms/dct/rfft:output:0@mfccs_from_log_mel_spectrograms/dct/strided_slice/stack:output:0Bmfccs_from_log_mel_spectrograms/dct/strided_slice/stack_1:output:0Bmfccs_from_log_mel_spectrograms/dct/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:����������P*

begin_mask*
ellipsis_mask�
)mfccs_from_log_mel_spectrograms/dct/mul_3Mul:mfccs_from_log_mel_spectrograms/dct/strided_slice:output:0-mfccs_from_log_mel_spectrograms/dct/mul_2:z:0*
T0*,
_output_shapes
:����������P�
(mfccs_from_log_mel_spectrograms/dct/RealReal-mfccs_from_log_mel_spectrograms/dct/mul_3:z:0*,
_output_shapes
:����������Ph
&mfccs_from_log_mel_spectrograms/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :P�
$mfccs_from_log_mel_spectrograms/CastCast/mfccs_from_log_mel_spectrograms/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: j
%mfccs_from_log_mel_spectrograms/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
#mfccs_from_log_mel_spectrograms/mulMul(mfccs_from_log_mel_spectrograms/Cast:y:0.mfccs_from_log_mel_spectrograms/mul/y:output:0*
T0*
_output_shapes
: x
%mfccs_from_log_mel_spectrograms/RsqrtRsqrt'mfccs_from_log_mel_spectrograms/mul:z:0*
T0*
_output_shapes
: �
%mfccs_from_log_mel_spectrograms/mul_1Mul1mfccs_from_log_mel_spectrograms/dct/Real:output:0)mfccs_from_log_mel_spectrograms/Rsqrt:y:0*
T0*,
_output_shapes
:����������Pd
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSlice)mfccs_from_log_mel_spectrograms/mul_1:z:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:����������*

begin_mask*
ellipsis_maskf
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSlicestrided_slice:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*0
_output_shapes
:����������*
ellipsis_mask*
new_axis_maskv
%sequential_2_1/resizing_1/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      �
/sequential_2_1/resizing_1/resize/ResizeBilinearResizeBilinearstrided_slice_1:output:0.sequential_2_1/resizing_1/resize/size:output:0*
T0*/
_output_shapes
:���������*
half_pixel_centers(�
$sequential_2_1/normalization_2_1/SubSub@sequential_2_1/resizing_1/resize/ResizeBilinear:resized_images:0&sequential_2_1_normalization_2_1_sub_y*
T0*/
_output_shapes
:����������
%sequential_2_1/normalization_2_1/SqrtSqrt'sequential_2_1_normalization_2_1_sqrt_x*
T0*&
_output_shapes
:k
&sequential_2_1/normalization_2_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
(sequential_2_1/normalization_2_1/MaximumMaximum)sequential_2_1/normalization_2_1/Sqrt:y:0/sequential_2_1/normalization_2_1/Const:output:0*
T0*&
_output_shapes
:�
(sequential_2_1/normalization_2_1/truedivRealDiv(sequential_2_1/normalization_2_1/Sub:z:0,sequential_2_1/normalization_2_1/Maximum:z:0*
T0*/
_output_shapes
:����������
4sequential_2_1/conv2d_4_1/convolution/ReadVariableOpReadVariableOp=sequential_2_1_conv2d_4_1_convolution_readvariableop_resource*&
_output_shapes
:*
dtype0�
%sequential_2_1/conv2d_4_1/convolutionConv2D,sequential_2_1/normalization_2_1/truediv:z:0<sequential_2_1/conv2d_4_1/convolution/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
0sequential_2_1/conv2d_4_1/Reshape/ReadVariableOpReadVariableOp9sequential_2_1_conv2d_4_1_reshape_readvariableop_resource*
_output_shapes
:*
dtype0�
'sequential_2_1/conv2d_4_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
!sequential_2_1/conv2d_4_1/ReshapeReshape8sequential_2_1/conv2d_4_1/Reshape/ReadVariableOp:value:00sequential_2_1/conv2d_4_1/Reshape/shape:output:0*
T0*&
_output_shapes
:�
sequential_2_1/conv2d_4_1/addAddV2.sequential_2_1/conv2d_4_1/convolution:output:0*sequential_2_1/conv2d_4_1/Reshape:output:0*
T0*/
_output_shapes
:����������
sequential_2_1/conv2d_4_1/ReluRelu!sequential_2_1/conv2d_4_1/add:z:0*
T0*/
_output_shapes
:����������
*sequential_2_1/max_pooling2d_4_1/MaxPool2dMaxPool,sequential_2_1/conv2d_4_1/Relu:activations:0*/
_output_shapes
:���������*
ksize
*
paddingVALID*
strides
�
4sequential_2_1/conv2d_5_1/convolution/ReadVariableOpReadVariableOp=sequential_2_1_conv2d_5_1_convolution_readvariableop_resource*&
_output_shapes
:*
dtype0�
%sequential_2_1/conv2d_5_1/convolutionConv2D3sequential_2_1/max_pooling2d_4_1/MaxPool2d:output:0<sequential_2_1/conv2d_5_1/convolution/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingVALID*
strides
�
0sequential_2_1/conv2d_5_1/Reshape/ReadVariableOpReadVariableOp9sequential_2_1_conv2d_5_1_reshape_readvariableop_resource*
_output_shapes
:*
dtype0�
'sequential_2_1/conv2d_5_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
!sequential_2_1/conv2d_5_1/ReshapeReshape8sequential_2_1/conv2d_5_1/Reshape/ReadVariableOp:value:00sequential_2_1/conv2d_5_1/Reshape/shape:output:0*
T0*&
_output_shapes
:�
sequential_2_1/conv2d_5_1/addAddV2.sequential_2_1/conv2d_5_1/convolution:output:0*sequential_2_1/conv2d_5_1/Reshape:output:0*
T0*/
_output_shapes
:����������
sequential_2_1/conv2d_5_1/ReluRelu!sequential_2_1/conv2d_5_1/add:z:0*
T0*/
_output_shapes
:����������
*sequential_2_1/max_pooling2d_5_1/MaxPool2dMaxPool,sequential_2_1/conv2d_5_1/Relu:activations:0*/
_output_shapes
:���������*
ksize
*
paddingVALID*
strides
y
(sequential_2_1/flatten_2_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
"sequential_2_1/flatten_2_1/ReshapeReshape3sequential_2_1/max_pooling2d_5_1/MaxPool2d:output:01sequential_2_1/flatten_2_1/Reshape/shape:output:0*
T0*'
_output_shapes
:���������@�
,sequential_2_1/dense_4_1/Cast/ReadVariableOpReadVariableOp5sequential_2_1_dense_4_1_cast_readvariableop_resource*
_output_shapes

:@@*
dtype0�
sequential_2_1/dense_4_1/MatMulMatMul+sequential_2_1/flatten_2_1/Reshape:output:04sequential_2_1/dense_4_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
+sequential_2_1/dense_4_1/Add/ReadVariableOpReadVariableOp4sequential_2_1_dense_4_1_add_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential_2_1/dense_4_1/AddAddV2)sequential_2_1/dense_4_1/MatMul:product:03sequential_2_1/dense_4_1/Add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@y
sequential_2_1/dense_4_1/ReluRelu sequential_2_1/dense_4_1/Add:z:0*
T0*'
_output_shapes
:���������@�
,sequential_2_1/dense_5_1/Cast/ReadVariableOpReadVariableOp5sequential_2_1_dense_5_1_cast_readvariableop_resource*
_output_shapes

:@*
dtype0�
sequential_2_1/dense_5_1/MatMulMatMul+sequential_2_1/dense_4_1/Relu:activations:04sequential_2_1/dense_5_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
+sequential_2_1/dense_5_1/Add/ReadVariableOpReadVariableOp4sequential_2_1_dense_5_1_add_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_2_1/dense_5_1/AddAddV2)sequential_2_1/dense_5_1/MatMul:product:03sequential_2_1/dense_5_1/Add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
 sequential_2_1/dense_5_1/SoftmaxSoftmax sequential_2_1/dense_5_1/Add:z:0*
T0*'
_output_shapes
:���������[
ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
����������
ArgMaxArgMax*sequential_2_1/dense_5_1/Softmax:softmax:0ArgMax/dimension:output:0*
T0*#
_output_shapes
:���������j
GatherV2/paramsConst*
_output_shapes
:*
dtype0*'
valueBB	_abnormalB_normalO
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
GatherV2GatherV2GatherV2/params:output:0ArgMax:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0	*
Tparams0*#
_output_shapes
:���������Z
IdentityIdentityArgMax:output:0^NoOp*
T0	*#
_output_shapes
:���������^

Identity_1IdentityGatherV2:output:0^NoOp*
T0*#
_output_shapes
:���������{

Identity_2Identity*sequential_2_1/dense_5_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp1^sequential_2_1/conv2d_4_1/Reshape/ReadVariableOp5^sequential_2_1/conv2d_4_1/convolution/ReadVariableOp1^sequential_2_1/conv2d_5_1/Reshape/ReadVariableOp5^sequential_2_1/conv2d_5_1/convolution/ReadVariableOp,^sequential_2_1/dense_4_1/Add/ReadVariableOp-^sequential_2_1/dense_4_1/Cast/ReadVariableOp,^sequential_2_1/dense_5_1/Add/ReadVariableOp-^sequential_2_1/dense_5_1/Cast/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:����������}::: : : : : : : : 2d
0sequential_2_1/conv2d_4_1/Reshape/ReadVariableOp0sequential_2_1/conv2d_4_1/Reshape/ReadVariableOp2l
4sequential_2_1/conv2d_4_1/convolution/ReadVariableOp4sequential_2_1/conv2d_4_1/convolution/ReadVariableOp2d
0sequential_2_1/conv2d_5_1/Reshape/ReadVariableOp0sequential_2_1/conv2d_5_1/Reshape/ReadVariableOp2l
4sequential_2_1/conv2d_5_1/convolution/ReadVariableOp4sequential_2_1/conv2d_5_1/convolution/ReadVariableOp2Z
+sequential_2_1/dense_4_1/Add/ReadVariableOp+sequential_2_1/dense_4_1/Add/ReadVariableOp2\
,sequential_2_1/dense_4_1/Cast/ReadVariableOp,sequential_2_1/dense_4_1/Cast/ReadVariableOp2Z
+sequential_2_1/dense_5_1/Add/ReadVariableOp+sequential_2_1/dense_5_1/Add/ReadVariableOp2\
,sequential_2_1/dense_5_1/Cast/ReadVariableOp,sequential_2_1/dense_5_1/Cast/ReadVariableOp:K G
(
_output_shapes
:����������}

_user_specified_namex:,(
&
_output_shapes
::,(
&
_output_shapes
::($
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
resource"�J
saver_filename:0StatefulPartitionedCall:0StatefulPartitionedCall_18"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp:�N
G
	model
__call__

signatures"
_generic_user_object
�
_functional
	optimizer
_default_save_signature
_inbound_nodes
_outbound_nodes
	_losses

	_loss_ids
_losses_override
_layers
_build_shapes_dict"
_generic_user_object
�
trace_0
trace_12�
__inference___call___33894
__inference___call___34376�
���
FullArgSpec
args�
jx
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
 ztrace_0ztrace_1
"
signature_map
�
_tracked
_inbound_nodes
_outbound_nodes
_losses
_losses_override
_operations
_layers
_build_shapes_dict
output_names
_default_save_signature"
_generic_user_object
�

_variables
_trainable_variables
 _trainable_variables_indices

iterations
_learning_rate

_momentums
 _velocities"
_generic_user_object
�
!trace_02�
!__inference_serving_default_34425�
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
annotations� *%�"
 ����������z!trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
n
"0
#1
$2
%3
&4
'5
(6
)7
*8
+9
,10"
trackable_list_wrapper
 "
trackable_dict_wrapper
�
-	capture_0
.	capture_1B�
__inference___call___33894x"�
���
FullArgSpec
args�
jx
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
 z-	capture_0z.	capture_1
�
-	capture_0
.	capture_1B�
__inference___call___34376x"�
���
FullArgSpec
args�
jx
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
 z-	capture_0z.	capture_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
n
"0
#1
$2
%3
&4
'5
(6
)7
*8
+9
,10"
trackable_list_wrapper
n
"0
#1
$2
%3
&4
'5
(6
)7
*8
+9
,10"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
�
/trace_02�
!__inference_serving_default_34474�
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
annotations� *%�"
 ����������z/trace_0
�
0
1
02
13
24
35
46
57
68
79
810
911
:12
;13
<14
=15
>16
?17"
trackable_list_wrapper
X
@0
A1
B2
C3
D4
E5
F6
G7"
trackable_list_wrapper
 "
trackable_dict_wrapper
:	 2adam/iteration
: 2adam/learning_rate
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
-	capture_0
.	capture_1B�
!__inference_serving_default_34425inputs"�
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
 z-	capture_0z.	capture_1
y
H_inbound_nodes
I_outbound_nodes
J_losses
K	_loss_ids
L_losses_override"
_generic_user_object
�
M_inbound_nodes
N_outbound_nodes
O_losses
P	_loss_ids
Q_losses_override
R_build_shapes_dict"
_generic_user_object
�
S
adapt_mean
Tadapt_variance
	Ucount
V_inbound_nodes
W_outbound_nodes
X_losses
Y	_loss_ids
Z_losses_override
[_reduce_axis_mask
\_broadcast_shape
]_build_shapes_dict"
_generic_user_object
�
@_kernel
Abias
^_inbound_nodes
__outbound_nodes
`_losses
a	_loss_ids
b_losses_override
c_build_shapes_dict"
_generic_user_object
�
d_inbound_nodes
e_outbound_nodes
f_losses
g	_loss_ids
h_losses_override
i_build_shapes_dict"
_generic_user_object
�
B_kernel
Cbias
j_inbound_nodes
k_outbound_nodes
l_losses
m	_loss_ids
n_losses_override
o_build_shapes_dict"
_generic_user_object
�
p_inbound_nodes
q_outbound_nodes
r_losses
s	_loss_ids
t_losses_override
u_build_shapes_dict"
_generic_user_object
�
v_inbound_nodes
w_outbound_nodes
x_losses
y	_loss_ids
z_losses_override
{_build_shapes_dict"
_generic_user_object
�
D_kernel
Ebias
|_inbound_nodes
}_outbound_nodes
~_losses
	_loss_ids
�_losses_override
�_build_shapes_dict"
_generic_user_object
�
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict"
_generic_user_object
�
F_kernel
Gbias
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict"
_generic_user_object
!J	
Const_1jtf.TrackableConstant
J
Constjtf.TrackableConstant
�
-	capture_0
.	capture_1B�
!__inference_serving_default_34474inputs"�
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
 z-	capture_0z.	capture_1
B:@2*adam/sequential_2_conv2d_4_kernel_momentum
B:@2*adam/sequential_2_conv2d_4_kernel_velocity
4:22(adam/sequential_2_conv2d_4_bias_momentum
4:22(adam/sequential_2_conv2d_4_bias_velocity
B:@2*adam/sequential_2_conv2d_5_kernel_momentum
B:@2*adam/sequential_2_conv2d_5_kernel_velocity
4:22(adam/sequential_2_conv2d_5_bias_momentum
4:22(adam/sequential_2_conv2d_5_bias_velocity
9:7@@2)adam/sequential_2_dense_4_kernel_momentum
9:7@@2)adam/sequential_2_dense_4_kernel_velocity
3:1@2'adam/sequential_2_dense_4_bias_momentum
3:1@2'adam/sequential_2_dense_4_bias_velocity
9:7@2)adam/sequential_2_dense_5_kernel_momentum
9:7@2)adam/sequential_2_dense_5_kernel_velocity
3:12'adam/sequential_2_dense_5_bias_momentum
3:12'adam/sequential_2_dense_5_bias_velocity
6:42sequential_2/conv2d_4/kernel
(:&2sequential_2/conv2d_4/bias
6:42sequential_2/conv2d_5/kernel
(:&2sequential_2/conv2d_5/bias
-:+@@2sequential_2/dense_4/kernel
':%@2sequential_2/dense_4/bias
-:+@2sequential_2/dense_5/kernel
':%2sequential_2/dense_5/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
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
 :2normalization_2/mean
$:"2normalization_2/variance
:	 2normalization_2/count
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
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
 "
trackable_list_wrapper
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
 "
trackable_list_wrapper
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
 "
trackable_list_wrapper
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
 "
trackable_list_wrapper
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
 "
trackable_list_wrapper
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
 "
trackable_list_wrapper
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
 "
trackable_list_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper�
__inference___call___33894�
-.@ABCDEFG�
�

�
x 
� "~�{
#
	class_ids�
	class_ids	
'
class_names�
class_names
+
predictions�
predictions�
__inference___call___34376�
-.@ABCDEFG+�(
!�
�
x����������}
� "���
,
	class_ids�
	class_ids���������	
0
class_names!�
class_names���������
4
predictions%�"
predictions����������
!__inference_serving_default_34425h
-.@ABCDEFG7�4
-�*
(�%
inputs���������
� "!�
unknown����������
!__inference_serving_default_34474h
-.@ABCDEFG7�4
-�*
(�%
inputs���������
� "!�
unknown���������