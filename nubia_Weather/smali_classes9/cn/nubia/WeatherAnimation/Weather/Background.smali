.class public Lcn/nubia/WeatherAnimation/Weather/Background;
.super Lcn/nubia/WeatherAnimation/Weather/DrawElement;
.source "Background.java"


# instance fields
.field private final mBackgroundColor:[[I

.field private mBottomB:F

.field private mBottomG:F

.field private mBottomR:F

.field private mFlashValue:F

.field private mTopB:F

.field private mTopG:F

.field private mTopR:F


# direct methods
.method public constructor <init>(IIFF)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "widthScale"    # F
    .param p4, "heightScale"    # F

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x437f0000    # 255.0f

    const/4 v4, 0x2

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/WeatherAnimation/Weather/DrawElement;-><init>(IIFF)V

    .line 15
    const/16 v1, 0x2a

    new-array v1, v1, [[I

    .line 17
    new-array v2, v4, [I

    fill-array-data v2, :array_0

    aput-object v2, v1, v6

    .line 18
    new-array v2, v4, [I

    fill-array-data v2, :array_1

    aput-object v2, v1, v7

    .line 19
    new-array v2, v4, [I

    fill-array-data v2, :array_2

    aput-object v2, v1, v4

    const/4 v2, 0x3

    .line 20
    new-array v3, v4, [I

    fill-array-data v3, :array_3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 21
    new-array v3, v4, [I

    fill-array-data v3, :array_4

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 22
    new-array v3, v4, [I

    fill-array-data v3, :array_5

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 23
    new-array v3, v4, [I

    fill-array-data v3, :array_6

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 24
    new-array v3, v4, [I

    fill-array-data v3, :array_7

    aput-object v3, v1, v2

    const/16 v2, 0x8

    .line 25
    new-array v3, v4, [I

    fill-array-data v3, :array_8

    aput-object v3, v1, v2

    const/16 v2, 0x9

    .line 26
    new-array v3, v4, [I

    fill-array-data v3, :array_9

    aput-object v3, v1, v2

    const/16 v2, 0xa

    .line 27
    new-array v3, v4, [I

    fill-array-data v3, :array_a

    aput-object v3, v1, v2

    const/16 v2, 0xb

    .line 28
    new-array v3, v4, [I

    fill-array-data v3, :array_b

    aput-object v3, v1, v2

    const/16 v2, 0xc

    .line 29
    new-array v3, v4, [I

    fill-array-data v3, :array_c

    aput-object v3, v1, v2

    const/16 v2, 0xd

    .line 30
    new-array v3, v4, [I

    fill-array-data v3, :array_d

    aput-object v3, v1, v2

    const/16 v2, 0xe

    .line 31
    new-array v3, v4, [I

    fill-array-data v3, :array_e

    aput-object v3, v1, v2

    const/16 v2, 0xf

    .line 32
    new-array v3, v4, [I

    fill-array-data v3, :array_f

    aput-object v3, v1, v2

    const/16 v2, 0x10

    .line 33
    new-array v3, v4, [I

    fill-array-data v3, :array_10

    aput-object v3, v1, v2

    const/16 v2, 0x11

    .line 34
    new-array v3, v4, [I

    fill-array-data v3, :array_11

    aput-object v3, v1, v2

    const/16 v2, 0x12

    .line 35
    new-array v3, v4, [I

    fill-array-data v3, :array_12

    aput-object v3, v1, v2

    const/16 v2, 0x13

    .line 36
    new-array v3, v4, [I

    fill-array-data v3, :array_13

    aput-object v3, v1, v2

    const/16 v2, 0x14

    .line 37
    new-array v3, v4, [I

    fill-array-data v3, :array_14

    aput-object v3, v1, v2

    const/16 v2, 0x15

    .line 39
    new-array v3, v4, [I

    fill-array-data v3, :array_15

    aput-object v3, v1, v2

    const/16 v2, 0x16

    .line 40
    new-array v3, v4, [I

    fill-array-data v3, :array_16

    aput-object v3, v1, v2

    const/16 v2, 0x17

    .line 41
    new-array v3, v4, [I

    fill-array-data v3, :array_17

    aput-object v3, v1, v2

    const/16 v2, 0x18

    .line 42
    new-array v3, v4, [I

    fill-array-data v3, :array_18

    aput-object v3, v1, v2

    const/16 v2, 0x19

    .line 43
    new-array v3, v4, [I

    fill-array-data v3, :array_19

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    .line 44
    new-array v3, v4, [I

    fill-array-data v3, :array_1a

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    .line 45
    new-array v3, v4, [I

    fill-array-data v3, :array_1b

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    .line 46
    new-array v3, v4, [I

    fill-array-data v3, :array_1c

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    .line 47
    new-array v3, v4, [I

    fill-array-data v3, :array_1d

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    .line 48
    new-array v3, v4, [I

    fill-array-data v3, :array_1e

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    .line 49
    new-array v3, v4, [I

    fill-array-data v3, :array_1f

    aput-object v3, v1, v2

    const/16 v2, 0x20

    .line 50
    new-array v3, v4, [I

    fill-array-data v3, :array_20

    aput-object v3, v1, v2

    const/16 v2, 0x21

    .line 51
    new-array v3, v4, [I

    fill-array-data v3, :array_21

    aput-object v3, v1, v2

    const/16 v2, 0x22

    .line 52
    new-array v3, v4, [I

    fill-array-data v3, :array_22

    aput-object v3, v1, v2

    const/16 v2, 0x23

    .line 53
    new-array v3, v4, [I

    fill-array-data v3, :array_23

    aput-object v3, v1, v2

    const/16 v2, 0x24

    .line 54
    new-array v3, v4, [I

    fill-array-data v3, :array_24

    aput-object v3, v1, v2

    const/16 v2, 0x25

    .line 55
    new-array v3, v4, [I

    fill-array-data v3, :array_25

    aput-object v3, v1, v2

    const/16 v2, 0x26

    .line 56
    new-array v3, v4, [I

    fill-array-data v3, :array_26

    aput-object v3, v1, v2

    const/16 v2, 0x27

    .line 57
    new-array v3, v4, [I

    fill-array-data v3, :array_27

    aput-object v3, v1, v2

    const/16 v2, 0x28

    .line 58
    new-array v3, v4, [I

    fill-array-data v3, :array_28

    aput-object v3, v1, v2

    const/16 v2, 0x29

    .line 59
    new-array v3, v4, [I

    fill-array-data v3, :array_29

    aput-object v3, v1, v2

    iput-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Background;->mBackgroundColor:[[I

    .line 71
    const/4 v1, 0x0

    iput v1, p0, Lcn/nubia/WeatherAnimation/Weather/Background;->mFlashValue:F

    .line 72
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Background;->mBackgroundColor:[[I

    aget-object v1, v1, v6

    aget v0, v1, v6

    .line 73
    .local v0, "color":I
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    iput v1, p0, Lcn/nubia/WeatherAnimation/Weather/Background;->mTopR:F

    .line 74
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    iput v1, p0, Lcn/nubia/WeatherAnimation/Weather/Background;->mTopG:F

    .line 75
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    iput v1, p0, Lcn/nubia/WeatherAnimation/Weather/Background;->mTopB:F

    .line 76
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Background;->mBackgroundColor:[[I

    aget-object v1, v1, v6

    aget v0, v1, v7

    .line 77
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    iput v1, p0, Lcn/nubia/WeatherAnimation/Weather/Background;->mBottomR:F

    .line 78
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    iput v1, p0, Lcn/nubia/WeatherAnimation/Weather/Background;->mBottomG:F

    .line 79
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    iput v1, p0, Lcn/nubia/WeatherAnimation/Weather/Background;->mBottomB:F

    .line 80
    return-void

    .line 17
    nop

    :array_0
    .array-data 4
        -0xa55d23
        -0xaf5e23
    .end array-data

    .line 18
    :array_1
    .array-data 4
        -0xa55d23
        -0xaf5e23
    .end array-data

    .line 19
    :array_2
    .array-data 4
        -0xa06e58
        -0xb57047
    .end array-data

    .line 20
    :array_3
    .array-data 4
        -0xab9b9c
        -0x8d7478
    .end array-data

    .line 21
    :array_4
    .array-data 4
        -0xac9e9e
        -0xa38b80
    .end array-data

    .line 22
    :array_5
    .array-data 4
        -0xba9d95
        -0xa68775
    .end array-data

    .line 23
    :array_6
    .array-data 4
        -0x7c4b2b
        -0x986a5b
    .end array-data

    .line 24
    :array_7
    .array-data 4
        -0x7c4b2b
        -0x986a5b
    .end array-data

    .line 25
    :array_8
    .array-data 4
        -0x7c4b2b
        -0x986a5b
    .end array-data

    .line 26
    :array_9
    .array-data 4
        -0x8e8074
        -0x9f8160
    .end array-data

    .line 27
    :array_a
    .array-data 4
        -0x8e8074
        -0x9f8160
    .end array-data

    .line 28
    :array_b
    .array-data 4
        -0xab9b9c
        -0x8d7478
    .end array-data

    .line 29
    :array_c
    .array-data 4
        -0xab9b9c
        -0x8d7478
    .end array-data

    .line 30
    :array_d
    .array-data 4
        -0x7b6244
        -0xa5642b
    .end array-data

    .line 31
    :array_e
    .array-data 4
        -0x7b6244
        -0xa5642b
    .end array-data

    .line 32
    :array_f
    .array-data 4
        -0x7b6244
        -0x634f35
    .end array-data

    .line 33
    :array_10
    .array-data 4
        -0x7b6244
        -0x634f35
    .end array-data

    .line 34
    :array_11
    .array-data 4
        -0x5f402d
        -0x7e4e3b
    .end array-data

    .line 35
    :array_12
    .array-data 4
        -0x7d6f67
        -0x8f746a
    .end array-data

    .line 36
    :array_13
    .array-data 4
        -0x52332e
        -0x294b97
    .end array-data

    .line 37
    :array_14
    .array-data 4
        -0x3774ce
        -0x2e59a8
    .end array-data

    .line 39
    :array_15
    .array-data 4
        -0xe1d5c6
        -0xe8e4da
    .end array-data

    .line 40
    :array_16
    .array-data 4
        -0xe1d5c6
        -0xe8e4da
    .end array-data

    .line 41
    :array_17
    .array-data 4
        -0xe1d6c5
        -0xe8e4da
    .end array-data

    .line 42
    :array_18
    .array-data 4
        -0xc9c4bf
        -0xd8d8d1
    .end array-data

    .line 43
    :array_19
    .array-data 4
        -0xe6e3df
        -0xdddbd0
    .end array-data

    .line 44
    :array_1a
    .array-data 4
        -0xe6e3df
        -0xdddbd0
    .end array-data

    .line 45
    :array_1b
    .array-data 4
        -0xc9c4bf
        -0xd8d8d1
    .end array-data

    .line 46
    :array_1c
    .array-data 4
        -0xddd3c7
        -0xdddbd0
    .end array-data

    .line 47
    :array_1d
    .array-data 4
        -0xe6e3df
        -0xdddbd0
    .end array-data

    .line 48
    :array_1e
    .array-data 4
        -0xddd3c7
        -0xdddbd0
    .end array-data

    .line 49
    :array_1f
    .array-data 4
        -0xddd3c7
        -0xdddbd0
    .end array-data

    .line 50
    :array_20
    .array-data 4
        -0xddd3c7
        -0xdddbd0
    .end array-data

    .line 51
    :array_21
    .array-data 4
        -0xddd3c7
        -0xdddbd0
    .end array-data

    .line 52
    :array_22
    .array-data 4
        -0xc9c4bf
        -0xd8d8d1
    .end array-data

    .line 53
    :array_23
    .array-data 4
        -0xc9c4bf
        -0xd8d8d1
    .end array-data

    .line 54
    :array_24
    .array-data 4
        -0xc9c4bf
        -0xd8d8d1
    .end array-data

    .line 55
    :array_25
    .array-data 4
        -0xc9c4bf
        -0xd8d8d1
    .end array-data

    .line 56
    :array_26
    .array-data 4
        -0xcfc6b6
        -0xe1e0dc
    .end array-data

    .line 57
    :array_27
    .array-data 4
        -0xbdb8b4
        -0xc5c4bf
    .end array-data

    .line 58
    :array_28
    .array-data 4
        -0xa58374
        -0xa8b6cf
    .end array-data

    .line 59
    :array_29
    .array-data 4
        -0xb1b4bb
        -0xcfd0d7
    .end array-data
.end method


# virtual methods
.method public create()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->create()V

    .line 85
    const/16 v0, 0x20

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Background;->mVbb:Ljava/nio/ByteBuffer;

    .line 86
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Background;->mVbb:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 87
    const/16 v0, 0x40

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Background;->mCbb:Ljava/nio/ByteBuffer;

    .line 88
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Background;->mCbb:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 89
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-super {p0}, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->destroy()V

    .line 94
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Background;->mVbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 95
    iput-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Background;->mVbb:Ljava/nio/ByteBuffer;

    .line 96
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Background;->mCbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 97
    iput-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Background;->mCbb:Ljava/nio/ByteBuffer;

    .line 98
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)[F
    .locals 21
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 111
    const/16 v1, 0x8

    new-array v0, v1, [F

    move-object/from16 v20, v0

    const/4 v1, 0x0

    .line 112
    const/4 v2, 0x0

    aput v2, v20, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v20, v1

    const/4 v1, 0x2

    .line 113
    const/4 v2, 0x0

    aput v2, v20, v1

    const/4 v1, 0x3

    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/WeatherAnimation/Weather/Background;->mHeight:I

    int-to-float v2, v2

    aput v2, v20, v1

    const/4 v1, 0x4

    .line 114
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/WeatherAnimation/Weather/Background;->mWidth:I

    int-to-float v2, v2

    aput v2, v20, v1

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput v2, v20, v1

    const/4 v1, 0x6

    .line 115
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/WeatherAnimation/Weather/Background;->mWidth:I

    int-to-float v2, v2

    aput v2, v20, v1

    const/4 v1, 0x7

    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/WeatherAnimation/Weather/Background;->mHeight:I

    int-to-float v2, v2

    aput v2, v20, v1

    .line 118
    .local v20, "vertices":[F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/WeatherAnimation/Weather/Background;->mVbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    .line 119
    .local v6, "mVertexBuffer":Ljava/nio/FloatBuffer;
    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 120
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 125
    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/WeatherAnimation/Weather/Background;->mTopR:F

    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/WeatherAnimation/Weather/Background;->mFlashValue:F

    add-float v19, v1, v2

    .line 126
    .local v19, "topR":F
    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/WeatherAnimation/Weather/Background;->mTopG:F

    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/WeatherAnimation/Weather/Background;->mFlashValue:F

    add-float v18, v1, v2

    .line 127
    .local v18, "topG":F
    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/WeatherAnimation/Weather/Background;->mTopB:F

    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/WeatherAnimation/Weather/Background;->mFlashValue:F

    add-float v17, v1, v2

    .line 128
    .local v17, "topB":F
    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/WeatherAnimation/Weather/Background;->mBottomR:F

    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/WeatherAnimation/Weather/Background;->mFlashValue:F

    add-float v15, v1, v2

    .line 129
    .local v15, "bottomR":F
    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/WeatherAnimation/Weather/Background;->mBottomG:F

    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/WeatherAnimation/Weather/Background;->mFlashValue:F

    add-float v14, v1, v2

    .line 130
    .local v14, "bottomG":F
    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/WeatherAnimation/Weather/Background;->mBottomB:F

    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/WeatherAnimation/Weather/Background;->mFlashValue:F

    add-float v13, v1, v2

    .line 132
    .local v13, "bottomB":F
    const/16 v1, 0x10

    new-array v0, v1, [F

    move-object/from16 v16, v0

    const/4 v1, 0x0

    .line 133
    aput v19, v16, v1

    const/4 v1, 0x1

    aput v18, v16, v1

    const/4 v1, 0x2

    aput v17, v16, v1

    const/4 v1, 0x3

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v16, v1

    const/4 v1, 0x4

    .line 134
    aput v15, v16, v1

    const/4 v1, 0x5

    aput v14, v16, v1

    const/4 v1, 0x6

    aput v13, v16, v1

    const/4 v1, 0x7

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v16, v1

    const/16 v1, 0x8

    .line 135
    aput v19, v16, v1

    const/16 v1, 0x9

    aput v18, v16, v1

    const/16 v1, 0xa

    aput v17, v16, v1

    const/16 v1, 0xb

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v16, v1

    const/16 v1, 0xc

    .line 136
    aput v15, v16, v1

    const/16 v1, 0xd

    aput v14, v16, v1

    const/16 v1, 0xe

    aput v13, v16, v1

    const/16 v1, 0xf

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v16, v1

    .line 139
    .local v16, "colors":[F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/WeatherAnimation/Weather/Background;->mCbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v12

    .line 140
    .local v12, "mColorBuffer":Ljava/nio/FloatBuffer;
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 141
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 143
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/WeatherAnimation/Weather/Background;->mShaderProgram:Lcn/nubia/OpenGL/ShaderProgram;

    iget v1, v1, Lcn/nubia/OpenGL/ShaderProgram;->mId:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 144
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/WeatherAnimation/Weather/Background;->mShaderProgram:Lcn/nubia/OpenGL/ShaderProgram;

    iget v1, v1, Lcn/nubia/OpenGL/ShaderProgram;->mMVPMatrixHandle:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcn/nubia/OpenGL/MatrixState;->getVPMatrix()[F

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 145
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/WeatherAnimation/Weather/Background;->mShaderProgram:Lcn/nubia/OpenGL/ShaderProgram;

    iget v1, v1, Lcn/nubia/OpenGL/ShaderProgram;->mPositionHandle:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/WeatherAnimation/Weather/Background;->mShaderProgram:Lcn/nubia/OpenGL/ShaderProgram;

    iget v7, v1, Lcn/nubia/OpenGL/ShaderProgram;->mColorHandle:I

    const/4 v8, 0x4

    const/16 v9, 0x1406

    const/4 v10, 0x0

    const/16 v11, 0x10

    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 147
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/WeatherAnimation/Weather/Background;->mShaderProgram:Lcn/nubia/OpenGL/ShaderProgram;

    iget v1, v1, Lcn/nubia/OpenGL/ShaderProgram;->mPositionHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 148
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/WeatherAnimation/Weather/Background;->mShaderProgram:Lcn/nubia/OpenGL/ShaderProgram;

    iget v1, v1, Lcn/nubia/OpenGL/ShaderProgram;->mColorHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 149
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 151
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/WeatherAnimation/Weather/Background;->mDrawInfo:[F

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    aput v3, v1, v2

    .line 152
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/WeatherAnimation/Weather/Background;->mDrawInfo:[F

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/WeatherAnimation/Weather/Background;->mWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/WeatherAnimation/Weather/Background;->mHeight:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, v1, v2

    .line 153
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/WeatherAnimation/Weather/Background;->mDrawInfo:[F

    return-object v1
.end method

.method public onProcessFrame(F)V
    .locals 0
    .param p1, "time"    # F

    .prologue
    .line 103
    return-void
.end method

.method public setColor(Lcn/nubia/WeatherAnimation/WeatherType;)V
    .locals 5
    .param p1, "type"    # Lcn/nubia/WeatherAnimation/WeatherType;

    .prologue
    const/high16 v4, 0x437f0000    # 255.0f

    .line 161
    invoke-virtual {p1}, Lcn/nubia/WeatherAnimation/WeatherType;->ordinal()I

    move-result v1

    .line 164
    .local v1, "index":I
    iget-object v2, p0, Lcn/nubia/WeatherAnimation/Weather/Background;->mBackgroundColor:[[I

    aget-object v2, v2, v1

    const/4 v3, 0x0

    aget v0, v2, v3

    .line 165
    .local v0, "color":I
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    iput v2, p0, Lcn/nubia/WeatherAnimation/Weather/Background;->mTopR:F

    .line 166
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    iput v2, p0, Lcn/nubia/WeatherAnimation/Weather/Background;->mTopG:F

    .line 167
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    iput v2, p0, Lcn/nubia/WeatherAnimation/Weather/Background;->mTopB:F

    .line 168
    iget-object v2, p0, Lcn/nubia/WeatherAnimation/Weather/Background;->mBackgroundColor:[[I

    aget-object v2, v2, v1

    const/4 v3, 0x1

    aget v0, v2, v3

    .line 169
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    iput v2, p0, Lcn/nubia/WeatherAnimation/Weather/Background;->mBottomR:F

    .line 170
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    iput v2, p0, Lcn/nubia/WeatherAnimation/Weather/Background;->mBottomG:F

    .line 171
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    iput v2, p0, Lcn/nubia/WeatherAnimation/Weather/Background;->mBottomB:F

    .line 172
    return-void
.end method

.method public setColor(Lcn/nubia/WeatherAnimation/WeatherType;Lcn/nubia/WeatherAnimation/WeatherType;F)V
    .locals 11
    .param p1, "type1"    # Lcn/nubia/WeatherAnimation/WeatherType;
    .param p2, "type2"    # Lcn/nubia/WeatherAnimation/WeatherType;
    .param p3, "value"    # F

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v10, 0x437f0000    # 255.0f

    const/high16 v9, 0x3f800000    # 1.0f

    .line 175
    invoke-virtual {p1}, Lcn/nubia/WeatherAnimation/WeatherType;->ordinal()I

    move-result v4

    .line 176
    .local v4, "index1":I
    invoke-virtual {p2}, Lcn/nubia/WeatherAnimation/WeatherType;->ordinal()I

    move-result v5

    .line 180
    .local v5, "index2":I
    iget-object v6, p0, Lcn/nubia/WeatherAnimation/Weather/Background;->mBackgroundColor:[[I

    aget-object v6, v6, v4

    aget v2, v6, v7

    .line 181
    .local v2, "colorTop1":I
    iget-object v6, p0, Lcn/nubia/WeatherAnimation/Weather/Background;->mBackgroundColor:[[I

    aget-object v6, v6, v4

    aget v0, v6, v8

    .line 182
    .local v0, "colorBottom1":I
    iget-object v6, p0, Lcn/nubia/WeatherAnimation/Weather/Background;->mBackgroundColor:[[I

    aget-object v6, v6, v5

    aget v3, v6, v7

    .line 183
    .local v3, "colorTop2":I
    iget-object v6, p0, Lcn/nubia/WeatherAnimation/Weather/Background;->mBackgroundColor:[[I

    aget-object v6, v6, v5

    aget v1, v6, v8

    .line 185
    .local v1, "colorBottom2":I
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p3

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v7

    int-to-float v7, v7

    sub-float v8, v9, p3

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    div-float/2addr v6, v10

    iput v6, p0, Lcn/nubia/WeatherAnimation/Weather/Background;->mTopR:F

    .line 186
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p3

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v7

    int-to-float v7, v7

    sub-float v8, v9, p3

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    div-float/2addr v6, v10

    iput v6, p0, Lcn/nubia/WeatherAnimation/Weather/Background;->mTopG:F

    .line 187
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p3

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    int-to-float v7, v7

    sub-float v8, v9, p3

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    div-float/2addr v6, v10

    iput v6, p0, Lcn/nubia/WeatherAnimation/Weather/Background;->mTopB:F

    .line 188
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p3

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v7

    int-to-float v7, v7

    sub-float v8, v9, p3

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    div-float/2addr v6, v10

    iput v6, p0, Lcn/nubia/WeatherAnimation/Weather/Background;->mBottomR:F

    .line 189
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p3

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v7

    int-to-float v7, v7

    sub-float v8, v9, p3

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    div-float/2addr v6, v10

    iput v6, p0, Lcn/nubia/WeatherAnimation/Weather/Background;->mBottomG:F

    .line 190
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p3

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    int-to-float v7, v7

    sub-float v8, v9, p3

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    div-float/2addr v6, v10

    iput v6, p0, Lcn/nubia/WeatherAnimation/Weather/Background;->mBottomB:F

    .line 191
    return-void
.end method

.method public setFlashValue(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 157
    iput p1, p0, Lcn/nubia/WeatherAnimation/Weather/Background;->mFlashValue:F

    .line 158
    return-void
.end method

.method public setSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 194
    iput p1, p0, Lcn/nubia/WeatherAnimation/Weather/Background;->mWidth:I

    .line 195
    iput p2, p0, Lcn/nubia/WeatherAnimation/Weather/Background;->mHeight:I

    .line 197
    return-void
.end method
