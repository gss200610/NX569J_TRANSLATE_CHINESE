.class public Lcn/nubia/Particle/ParticleUtil;
.super Ljava/lang/Object;
.source "ParticleUtil.java"


# static fields
.field public static final TEXTURE_COORDINATION_HAIL:[[I

.field public static final TEXTURE_COORDINATION_RAIN:[[I

.field public static final TEXTURE_COORDINATION_SAND_STORM:[[I

.field public static final TEXTURE_COORDINATION_SHINE:[[I

.field public static final TEXTURE_COORDINATION_SNOW:[[I

.field public static final TEXTURE_COORDINATION_STAR:[[I

.field public static final TEXTURE_SIZE_HAIL:[I

.field public static final TEXTURE_SIZE_RAIN:[I

.field public static final TEXTURE_SIZE_SAND_STORM:[I

.field public static final TEXTURE_SIZE_SHINE:[I

.field public static final TEXTURE_SIZE_SNOW:[I

.field public static final TEXTURE_SIZE_STAR:[I

.field private static mRandom:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x4

    .line 6
    new-array v0, v6, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/Particle/ParticleUtil;->TEXTURE_SIZE_SHINE:[I

    .line 7
    const/16 v0, 0xf

    new-array v0, v0, [[I

    .line 8
    new-array v1, v5, [I

    const/16 v2, 0x6a

    aput v2, v1, v6

    const/16 v2, 0x6a

    aput v2, v1, v7

    aput-object v1, v0, v8

    const/4 v1, 0x1

    .line 9
    new-array v2, v5, [I

    const/16 v3, 0x6a

    aput v3, v2, v8

    const/16 v3, 0xd4

    aput v3, v2, v6

    const/16 v3, 0x6a

    aput v3, v2, v7

    aput-object v2, v0, v1

    .line 10
    new-array v1, v5, [I

    const/16 v2, 0xd4

    aput v2, v1, v8

    const/16 v2, 0x13e

    aput v2, v1, v6

    const/16 v2, 0x6a

    aput v2, v1, v7

    aput-object v1, v0, v6

    .line 11
    new-array v1, v5, [I

    const/16 v2, 0x13e

    aput v2, v1, v8

    const/16 v2, 0x1a8

    aput v2, v1, v6

    const/16 v2, 0x6a

    aput v2, v1, v7

    aput-object v1, v0, v7

    .line 12
    new-array v1, v5, [I

    const/16 v2, 0x1a8

    aput v2, v1, v8

    const/16 v2, 0x212

    aput v2, v1, v6

    const/16 v2, 0x6a

    aput v2, v1, v7

    aput-object v1, v0, v5

    .line 13
    new-array v1, v5, [I

    const/16 v2, 0x212

    aput v2, v1, v8

    const/16 v2, 0x27c

    aput v2, v1, v6

    const/16 v2, 0x6a

    aput v2, v1, v7

    aput-object v1, v0, v9

    const/4 v1, 0x6

    .line 14
    new-array v2, v5, [I

    const/16 v3, 0x27c

    aput v3, v2, v8

    const/16 v3, 0x2e6

    aput v3, v2, v6

    const/16 v3, 0x6a

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 15
    new-array v2, v5, [I

    const/16 v3, 0x2e6

    aput v3, v2, v8

    const/16 v3, 0x350

    aput v3, v2, v6

    const/16 v3, 0x6a

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 16
    new-array v2, v5, [I

    const/16 v3, 0x350

    aput v3, v2, v8

    const/16 v3, 0x3ba

    aput v3, v2, v6

    const/16 v3, 0x6a

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 17
    new-array v2, v5, [I

    const/16 v3, 0x3ba

    aput v3, v2, v8

    const/16 v3, 0x424

    aput v3, v2, v6

    const/16 v3, 0x6a

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 18
    new-array v2, v5, [I

    const/16 v3, 0x424

    aput v3, v2, v8

    const/16 v3, 0x48e

    aput v3, v2, v6

    const/16 v3, 0x6a

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 19
    new-array v2, v5, [I

    const/16 v3, 0x48e

    aput v3, v2, v8

    const/16 v3, 0x4f8

    aput v3, v2, v6

    const/16 v3, 0x6a

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 20
    new-array v2, v5, [I

    const/16 v3, 0x4f8

    aput v3, v2, v8

    const/16 v3, 0x562

    aput v3, v2, v6

    const/16 v3, 0x6a

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 21
    new-array v2, v5, [I

    const/16 v3, 0x562

    aput v3, v2, v8

    const/16 v3, 0x5cc

    aput v3, v2, v6

    const/16 v3, 0x6a

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 22
    new-array v2, v5, [I

    const/16 v3, 0x5cc

    aput v3, v2, v8

    const/16 v3, 0x636

    aput v3, v2, v6

    const/16 v3, 0x6a

    aput v3, v2, v7

    aput-object v2, v0, v1

    .line 7
    sput-object v0, Lcn/nubia/Particle/ParticleUtil;->TEXTURE_COORDINATION_SHINE:[[I

    .line 25
    new-array v0, v6, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcn/nubia/Particle/ParticleUtil;->TEXTURE_SIZE_RAIN:[I

    .line 26
    const/16 v0, 0x18

    new-array v0, v0, [[I

    .line 27
    new-array v1, v5, [I

    const/16 v2, 0x9

    aput v2, v1, v6

    const/16 v2, 0x37

    aput v2, v1, v7

    aput-object v1, v0, v8

    const/4 v1, 0x1

    .line 28
    new-array v2, v5, [I

    const/16 v3, 0x12

    aput v3, v2, v8

    const/16 v3, 0x1a

    aput v3, v2, v6

    const/16 v3, 0x30

    aput v3, v2, v7

    aput-object v2, v0, v1

    .line 29
    new-array v1, v5, [I

    const/16 v2, 0x24

    aput v2, v1, v8

    const/16 v2, 0x2b

    aput v2, v1, v6

    const/16 v2, 0x2a

    aput v2, v1, v7

    aput-object v1, v0, v6

    .line 30
    new-array v1, v5, [I

    const/16 v2, 0x36

    aput v2, v1, v8

    const/16 v2, 0x40

    aput v2, v1, v6

    const/16 v2, 0x37

    aput v2, v1, v7

    aput-object v1, v0, v7

    .line 31
    new-array v1, v5, [I

    const/16 v2, 0x48

    aput v2, v1, v8

    const/16 v2, 0x50

    aput v2, v1, v6

    const/16 v2, 0x30

    aput v2, v1, v7

    aput-object v1, v0, v5

    .line 32
    new-array v1, v5, [I

    const/16 v2, 0x5a

    aput v2, v1, v8

    const/16 v2, 0x61

    aput v2, v1, v6

    const/16 v2, 0x29

    aput v2, v1, v7

    aput-object v1, v0, v9

    const/4 v1, 0x6

    .line 34
    new-array v2, v5, [I

    const/16 v3, 0x6c

    aput v3, v2, v8

    const/16 v3, 0x70

    aput v3, v2, v6

    const/16 v3, 0x67

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 35
    new-array v2, v5, [I

    const/16 v3, 0x7e

    aput v3, v2, v8

    const/16 v3, 0x82

    aput v3, v2, v6

    const/16 v3, 0x88

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 36
    new-array v2, v5, [I

    const/16 v3, 0x90

    aput v3, v2, v8

    const/16 v3, 0x94

    aput v3, v2, v6

    const/16 v3, 0xa8

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 37
    new-array v2, v5, [I

    const/16 v3, 0xa2

    aput v3, v2, v8

    const/16 v3, 0xa6

    aput v3, v2, v6

    const/16 v3, 0x68

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 38
    new-array v2, v5, [I

    const/16 v3, 0xb4

    aput v3, v2, v8

    const/16 v3, 0xb8

    aput v3, v2, v6

    const/16 v3, 0x88

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 39
    new-array v2, v5, [I

    const/16 v3, 0xc6

    aput v3, v2, v8

    const/16 v3, 0xca

    aput v3, v2, v6

    const/16 v3, 0xa8

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 41
    new-array v2, v5, [I

    const/4 v3, 0x1

    const/16 v4, 0x46

    aput v4, v2, v3

    const/16 v3, 0x8

    aput v3, v2, v6

    const/16 v3, 0x71

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 42
    new-array v2, v5, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 43
    new-array v2, v5, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 44
    new-array v2, v5, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 45
    new-array v2, v5, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 46
    new-array v2, v5, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 48
    new-array v2, v5, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 49
    new-array v2, v5, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 50
    new-array v2, v5, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 51
    new-array v2, v5, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 52
    new-array v2, v5, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 53
    new-array v2, v5, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    .line 26
    sput-object v0, Lcn/nubia/Particle/ParticleUtil;->TEXTURE_COORDINATION_RAIN:[[I

    .line 56
    new-array v0, v6, [I

    fill-array-data v0, :array_d

    sput-object v0, Lcn/nubia/Particle/ParticleUtil;->TEXTURE_SIZE_SNOW:[I

    .line 57
    const/16 v0, 0x1b

    new-array v0, v0, [[I

    .line 58
    new-array v1, v5, [I

    const/16 v2, 0x13

    aput v2, v1, v6

    const/16 v2, 0x13

    aput v2, v1, v7

    aput-object v1, v0, v8

    const/4 v1, 0x1

    .line 59
    new-array v2, v5, [I

    const/16 v3, 0x1f

    aput v3, v2, v8

    const/16 v3, 0x30

    aput v3, v2, v6

    const/16 v3, 0x11

    aput v3, v2, v7

    aput-object v2, v0, v1

    .line 60
    new-array v1, v5, [I

    const/16 v2, 0x3e

    aput v2, v1, v8

    const/16 v2, 0x4d

    aput v2, v1, v6

    const/16 v2, 0xf

    aput v2, v1, v7

    aput-object v1, v0, v6

    .line 61
    new-array v1, v5, [I

    const/16 v2, 0x5d

    aput v2, v1, v8

    const/16 v2, 0x6c

    aput v2, v1, v6

    const/16 v2, 0xf

    aput v2, v1, v7

    aput-object v1, v0, v7

    .line 62
    new-array v1, v5, [I

    const/16 v2, 0x7c

    aput v2, v1, v8

    const/16 v2, 0x89

    aput v2, v1, v6

    const/16 v2, 0xd

    aput v2, v1, v7

    aput-object v1, v0, v5

    .line 63
    new-array v1, v5, [I

    const/16 v2, 0x9b

    aput v2, v1, v8

    const/16 v2, 0xa6

    aput v2, v1, v6

    const/16 v2, 0xb

    aput v2, v1, v7

    aput-object v1, v0, v9

    const/4 v1, 0x6

    .line 65
    new-array v2, v5, [I

    const/4 v3, 0x1

    const/16 v4, 0x19

    aput v4, v2, v3

    const/16 v3, 0x1c

    aput v3, v2, v6

    const/16 v3, 0x35

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 66
    new-array v2, v5, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 67
    new-array v2, v5, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 68
    new-array v2, v5, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 69
    new-array v2, v5, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 70
    new-array v2, v5, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 72
    new-array v2, v5, [I

    const/4 v3, 0x1

    const/16 v4, 0x3e

    aput v4, v2, v3

    const/16 v3, 0x1c

    aput v3, v2, v6

    const/16 v3, 0x67

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 73
    new-array v2, v5, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 74
    new-array v2, v5, [I

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 75
    new-array v2, v5, [I

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 76
    new-array v2, v5, [I

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 78
    new-array v2, v5, [I

    const/4 v3, 0x1

    const/16 v4, 0x6c

    aput v4, v2, v3

    const/16 v3, 0xb

    aput v3, v2, v6

    const/16 v3, 0x77

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 79
    new-array v2, v5, [I

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 80
    new-array v2, v5, [I

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 81
    new-array v2, v5, [I

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 82
    new-array v2, v5, [I

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 83
    new-array v2, v5, [I

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 85
    new-array v2, v5, [I

    const/4 v3, 0x1

    const/16 v4, 0x80

    aput v4, v2, v3

    const/16 v3, 0x10

    aput v3, v2, v6

    const/16 v3, 0x94

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 86
    new-array v2, v5, [I

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 87
    new-array v2, v5, [I

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 88
    new-array v2, v5, [I

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    .line 57
    sput-object v0, Lcn/nubia/Particle/ParticleUtil;->TEXTURE_COORDINATION_SNOW:[[I

    .line 91
    new-array v0, v6, [I

    fill-array-data v0, :array_1f

    sput-object v0, Lcn/nubia/Particle/ParticleUtil;->TEXTURE_SIZE_HAIL:[I

    .line 92
    new-array v0, v9, [[I

    .line 93
    new-array v1, v5, [I

    const/16 v2, 0x1a

    aput v2, v1, v8

    const/16 v2, 0x2a

    aput v2, v1, v6

    const/16 v2, 0x23

    aput v2, v1, v7

    aput-object v1, v0, v8

    const/4 v1, 0x1

    .line 94
    new-array v2, v5, [I

    const/16 v3, 0x33

    aput v3, v2, v8

    const/16 v3, 0x47

    aput v3, v2, v6

    const/16 v3, 0x26

    aput v3, v2, v7

    aput-object v2, v0, v1

    .line 96
    new-array v1, v5, [I

    const/4 v2, 0x1

    const/16 v3, 0x2a

    aput v3, v1, v2

    const/16 v2, 0x14

    aput v2, v1, v6

    const/16 v2, 0x4a

    aput v2, v1, v7

    aput-object v1, v0, v6

    .line 97
    new-array v1, v5, [I

    fill-array-data v1, :array_20

    aput-object v1, v0, v7

    .line 98
    new-array v1, v5, [I

    fill-array-data v1, :array_21

    aput-object v1, v0, v5

    .line 92
    sput-object v0, Lcn/nubia/Particle/ParticleUtil;->TEXTURE_COORDINATION_HAIL:[[I

    .line 101
    new-array v0, v6, [I

    fill-array-data v0, :array_22

    sput-object v0, Lcn/nubia/Particle/ParticleUtil;->TEXTURE_SIZE_SAND_STORM:[I

    .line 102
    const/4 v0, 0x7

    new-array v0, v0, [[I

    .line 103
    new-array v1, v5, [I

    const/16 v2, 0xa

    aput v2, v1, v6

    const/16 v2, 0xa

    aput v2, v1, v7

    aput-object v1, v0, v8

    const/4 v1, 0x1

    .line 104
    new-array v2, v5, [I

    const/16 v3, 0xc

    aput v3, v2, v8

    const/16 v3, 0x16

    aput v3, v2, v6

    const/16 v3, 0xa

    aput v3, v2, v7

    aput-object v2, v0, v1

    .line 105
    new-array v1, v5, [I

    const/16 v2, 0x18

    aput v2, v1, v8

    const/16 v2, 0x22

    aput v2, v1, v6

    const/16 v2, 0xa

    aput v2, v1, v7

    aput-object v1, v0, v6

    .line 106
    new-array v1, v5, [I

    const/16 v2, 0x24

    aput v2, v1, v8

    const/16 v2, 0x2e

    aput v2, v1, v6

    const/16 v2, 0xa

    aput v2, v1, v7

    aput-object v1, v0, v7

    .line 107
    new-array v1, v5, [I

    const/16 v2, 0x30

    aput v2, v1, v8

    const/16 v2, 0x3c

    aput v2, v1, v6

    const/16 v2, 0xc

    aput v2, v1, v7

    aput-object v1, v0, v5

    .line 108
    new-array v1, v5, [I

    const/16 v2, 0x3e

    aput v2, v1, v8

    const/16 v2, 0x4a

    aput v2, v1, v6

    const/16 v2, 0xc

    aput v2, v1, v7

    aput-object v1, v0, v9

    const/4 v1, 0x6

    .line 109
    new-array v2, v5, [I

    const/16 v3, 0x4c

    aput v3, v2, v8

    const/16 v3, 0x5a

    aput v3, v2, v6

    const/16 v3, 0xe

    aput v3, v2, v7

    aput-object v2, v0, v1

    .line 102
    sput-object v0, Lcn/nubia/Particle/ParticleUtil;->TEXTURE_COORDINATION_SAND_STORM:[[I

    .line 112
    new-array v0, v6, [I

    fill-array-data v0, :array_23

    sput-object v0, Lcn/nubia/Particle/ParticleUtil;->TEXTURE_SIZE_STAR:[I

    .line 113
    const/16 v0, 0x22

    new-array v0, v0, [[I

    .line 114
    new-array v1, v5, [I

    aput v9, v1, v6

    aput v9, v1, v7

    aput-object v1, v0, v8

    const/4 v1, 0x1

    .line 115
    new-array v2, v5, [I

    aput v9, v2, v8

    const/16 v3, 0xa

    aput v3, v2, v6

    aput v9, v2, v7

    aput-object v2, v0, v1

    .line 116
    new-array v1, v5, [I

    const/16 v2, 0xa

    aput v2, v1, v8

    const/16 v2, 0xf

    aput v2, v1, v6

    aput v9, v1, v7

    aput-object v1, v0, v6

    .line 117
    new-array v1, v5, [I

    const/16 v2, 0xf

    aput v2, v1, v8

    const/16 v2, 0x14

    aput v2, v1, v6

    aput v9, v1, v7

    aput-object v1, v0, v7

    .line 118
    new-array v1, v5, [I

    const/16 v2, 0x14

    aput v2, v1, v8

    const/16 v2, 0x19

    aput v2, v1, v6

    aput v9, v1, v7

    aput-object v1, v0, v5

    .line 119
    new-array v1, v5, [I

    const/16 v2, 0x19

    aput v2, v1, v8

    const/16 v2, 0x1e

    aput v2, v1, v6

    aput v9, v1, v7

    aput-object v1, v0, v9

    const/4 v1, 0x6

    .line 120
    new-array v2, v5, [I

    const/16 v3, 0x1e

    aput v3, v2, v8

    const/16 v3, 0x23

    aput v3, v2, v6

    aput v9, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 122
    new-array v2, v5, [I

    const/4 v3, 0x1

    aput v9, v2, v3

    aput v9, v2, v6

    const/16 v3, 0xa

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 123
    new-array v2, v5, [I

    fill-array-data v2, :array_24

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 124
    new-array v2, v5, [I

    fill-array-data v2, :array_25

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 125
    new-array v2, v5, [I

    fill-array-data v2, :array_26

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 126
    new-array v2, v5, [I

    fill-array-data v2, :array_27

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 127
    new-array v2, v5, [I

    fill-array-data v2, :array_28

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 128
    new-array v2, v5, [I

    fill-array-data v2, :array_29

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 130
    new-array v2, v5, [I

    const/4 v3, 0x1

    const/16 v4, 0xa

    aput v4, v2, v3

    aput v9, v2, v6

    const/16 v3, 0xf

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 131
    new-array v2, v5, [I

    fill-array-data v2, :array_2a

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 132
    new-array v2, v5, [I

    fill-array-data v2, :array_2b

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 133
    new-array v2, v5, [I

    fill-array-data v2, :array_2c

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 134
    new-array v2, v5, [I

    fill-array-data v2, :array_2d

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 135
    new-array v2, v5, [I

    fill-array-data v2, :array_2e

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 136
    new-array v2, v5, [I

    fill-array-data v2, :array_2f

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 138
    new-array v2, v5, [I

    const/4 v3, 0x1

    const/16 v4, 0xf

    aput v4, v2, v3

    aput v9, v2, v6

    const/16 v3, 0x14

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 139
    new-array v2, v5, [I

    fill-array-data v2, :array_30

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 140
    new-array v2, v5, [I

    fill-array-data v2, :array_31

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 141
    new-array v2, v5, [I

    fill-array-data v2, :array_32

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 142
    new-array v2, v5, [I

    fill-array-data v2, :array_33

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 143
    new-array v2, v5, [I

    fill-array-data v2, :array_34

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 144
    new-array v2, v5, [I

    fill-array-data v2, :array_35

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 146
    new-array v2, v5, [I

    fill-array-data v2, :array_36

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 147
    new-array v2, v5, [I

    fill-array-data v2, :array_37

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 148
    new-array v2, v5, [I

    fill-array-data v2, :array_38

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 149
    new-array v2, v5, [I

    fill-array-data v2, :array_39

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 150
    new-array v2, v5, [I

    fill-array-data v2, :array_3a

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 151
    new-array v2, v5, [I

    fill-array-data v2, :array_3b

    aput-object v2, v0, v1

    .line 113
    sput-object v0, Lcn/nubia/Particle/ParticleUtil;->TEXTURE_COORDINATION_STAR:[[I

    .line 154
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcn/nubia/Particle/ParticleUtil;->mRandom:Ljava/util/Random;

    return-void

    .line 6
    :array_0
    .array-data 4
        0x636
        0x6a
    .end array-data

    .line 25
    :array_1
    .array-data 4
        0xd8
        0x103
    .end array-data

    .line 42
    :array_2
    .array-data 4
        0xe
        0x46
        0x16
        0x70
    .end array-data

    .line 43
    :array_3
    .array-data 4
        0x1c
        0x46
        0x23
        0x6a
    .end array-data

    .line 44
    :array_4
    .array-data 4
        0x29
        0x46
        0x30
        0x6a
    .end array-data

    .line 45
    :array_5
    .array-data 4
        0x36
        0x46
        0x3c
        0x62
    .end array-data

    .line 46
    :array_6
    .array-data 4
        0x42
        0x46
        0x48
        0x62
    .end array-data

    .line 48
    :array_7
    .array-data 4
        0x2
        0x8e
        0x5
        0xd1
    .end array-data

    .line 49
    :array_8
    .array-data 4
        0x14
        0x8e
        0x17
        0xe6
    .end array-data

    .line 50
    :array_9
    .array-data 4
        0x26
        0x8e
        0x29
        0xfa
    .end array-data

    .line 51
    :array_a
    .array-data 4
        0x38
        0x8e
        0x3b
        0xd1
    .end array-data

    .line 52
    :array_b
    .array-data 4
        0x4a
        0x8e
        0x4d
        0xe5
    .end array-data

    .line 53
    :array_c
    .array-data 4
        0x5c
        0x8e
        0x5f
        0xf9
    .end array-data

    .line 56
    :array_d
    .array-data 4
        0xba
        0xa0
    .end array-data

    .line 66
    :array_e
    .array-data 4
        0x20
        0x19
        0x3b
        0x35
    .end array-data

    .line 67
    :array_f
    .array-data 4
        0x3e
        0x19
        0x52
        0x2d
    .end array-data

    .line 68
    :array_10
    .array-data 4
        0x5e
        0x19
        0x71
        0x35
    .end array-data

    .line 69
    :array_11
    .array-data 4
        0x7c
        0x19
        0x8c
        0x29
    .end array-data

    .line 70
    :array_12
    .array-data 4
        0x9c
        0x19
        0xac
        0x29
    .end array-data

    .line 73
    :array_13
    .array-data 4
        0x26
        0x3e
        0x3e
        0x60
    .end array-data

    .line 74
    :array_14
    .array-data 4
        0x4b
        0x3e
        0x61
        0x5b
    .end array-data

    .line 75
    :array_15
    .array-data 4
        0x70
        0x3e
        0x82
        0x5a
    .end array-data

    .line 76
    :array_16
    .array-data 4
        0x94
        0x3e
        0xa5
        0x52
    .end array-data

    .line 79
    :array_17
    .array-data 4
        0x1f
        0x6c
        0x29
        0x76
    .end array-data

    .line 80
    :array_18
    .array-data 4
        0x3e
        0x6c
        0x48
        0x76
    .end array-data

    .line 81
    :array_19
    .array-data 4
        0x5d
        0x6c
        0x66
        0x75
    .end array-data

    .line 82
    :array_1a
    .array-data 4
        0x7c
        0x6c
        0x84
        0x74
    .end array-data

    .line 83
    :array_1b
    .array-data 4
        0x9b
        0x6c
        0xa2
        0x73
    .end array-data

    .line 86
    :array_1c
    .array-data 4
        0x20
        0x80
        0x2e
        0x92
    .end array-data

    .line 87
    :array_1d
    .array-data 4
        0x3e
        0x80
        0x4c
        0x90
    .end array-data

    .line 88
    :array_1e
    .array-data 4
        0x5e
        0x80
        0x6a
        0x90
    .end array-data

    .line 91
    :array_1f
    .array-data 4
        0x4b
        0x7b
    .end array-data

    .line 97
    :array_20
    .array-data 4
        0x1a
        0x2a
        0x2a
        0x48
    .end array-data

    .line 98
    :array_21
    .array-data 4
        0x33
        0x2a
        0x43
        0x48
    .end array-data

    .line 101
    :array_22
    .array-data 4
        0x5a
        0xe
    .end array-data

    .line 112
    :array_23
    .array-data 4
        0x23
        0x19
    .end array-data

    .line 123
    :array_24
    .array-data 4
        0x5
        0x5
        0xa
        0xa
    .end array-data

    .line 124
    :array_25
    .array-data 4
        0xa
        0x5
        0xf
        0xa
    .end array-data

    .line 125
    :array_26
    .array-data 4
        0xf
        0x5
        0x14
        0xa
    .end array-data

    .line 126
    :array_27
    .array-data 4
        0x14
        0x5
        0x19
        0xa
    .end array-data

    .line 127
    :array_28
    .array-data 4
        0x19
        0x5
        0x1e
        0xa
    .end array-data

    .line 128
    :array_29
    .array-data 4
        0x1e
        0x5
        0x23
        0xa
    .end array-data

    .line 131
    :array_2a
    .array-data 4
        0x5
        0xa
        0xa
        0xf
    .end array-data

    .line 132
    :array_2b
    .array-data 4
        0xa
        0xa
        0xf
        0xf
    .end array-data

    .line 133
    :array_2c
    .array-data 4
        0xf
        0xa
        0x14
        0xf
    .end array-data

    .line 134
    :array_2d
    .array-data 4
        0x14
        0xa
        0x19
        0xf
    .end array-data

    .line 135
    :array_2e
    .array-data 4
        0x19
        0xa
        0x1e
        0xf
    .end array-data

    .line 136
    :array_2f
    .array-data 4
        0x1e
        0xa
        0x23
        0xf
    .end array-data

    .line 139
    :array_30
    .array-data 4
        0x5
        0xf
        0xa
        0x14
    .end array-data

    .line 140
    :array_31
    .array-data 4
        0xa
        0xf
        0xf
        0x14
    .end array-data

    .line 141
    :array_32
    .array-data 4
        0xf
        0xf
        0x14
        0x14
    .end array-data

    .line 142
    :array_33
    .array-data 4
        0x14
        0xf
        0x19
        0x14
    .end array-data

    .line 143
    :array_34
    .array-data 4
        0x19
        0xf
        0x1e
        0x14
    .end array-data

    .line 144
    :array_35
    .array-data 4
        0x1e
        0xf
        0x23
        0x14
    .end array-data

    .line 146
    :array_36
    .array-data 4
        0x5
        0x14
        0xa
        0x19
    .end array-data

    .line 147
    :array_37
    .array-data 4
        0xa
        0x14
        0xf
        0x19
    .end array-data

    .line 148
    :array_38
    .array-data 4
        0xf
        0x14
        0x14
        0x19
    .end array-data

    .line 149
    :array_39
    .array-data 4
        0x14
        0x14
        0x19
        0x19
    .end array-data

    .line 150
    :array_3a
    .array-data 4
        0x19
        0x14
        0x1e
        0x19
    .end array-data

    .line 151
    :array_3b
    .array-data 4
        0x1e
        0x14
        0x23
        0x19
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRandomOffsetValue(FF)F
    .locals 3
    .param p0, "base"    # F
    .param p1, "offset"    # F

    .prologue
    .line 162
    sget-object v1, Lcn/nubia/Particle/ParticleUtil;->mRandom:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    mul-float/2addr v1, p1

    sub-float/2addr v1, p1

    add-float v0, p0, v1

    .line 163
    .local v0, "value":F
    return v0
.end method

.method public static getRandomPercentValue(FF)F
    .locals 4
    .param p0, "base"    # F
    .param p1, "percent"    # F

    .prologue
    .line 157
    const/high16 v1, 0x3f800000    # 1.0f

    sget-object v2, Lcn/nubia/Particle/ParticleUtil;->mRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    mul-float/2addr v2, p1

    sub-float/2addr v2, p1

    sub-float/2addr v1, v2

    mul-float v0, p0, v1

    .line 158
    .local v0, "value":F
    return v0
.end method

.method public static getRandomValue(FF)F
    .locals 3
    .param p0, "value1"    # F
    .param p1, "value2"    # F

    .prologue
    .line 167
    sub-float v1, p1, p0

    sget-object v2, Lcn/nubia/Particle/ParticleUtil;->mRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    mul-float/2addr v1, v2

    add-float v0, p0, v1

    .line 168
    .local v0, "value":F
    return v0
.end method
