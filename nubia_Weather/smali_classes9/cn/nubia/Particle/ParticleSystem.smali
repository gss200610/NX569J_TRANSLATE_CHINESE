.class public abstract Lcn/nubia/Particle/ParticleSystem;
.super Lcn/nubia/WeatherAnimation/Weather/DrawElement;
.source "ParticleSystem.java"


# static fields
.field public static final LEVEL_1:I = 0x0

.field public static final LEVEL_2:I = 0x1

.field public static final LEVEL_3:I = 0x2

.field public static final LEVEL_4:I = 0x3

.field public static final LEVEL_BG_1:I = 0x4

.field public static final LEVEL_BG_2:I = 0x5

.field public static final LEVEL_BG_3:I = 0x6

.field public static final LEVEL_BG_4:I = 0x7

.field private static final TAG:Ljava/lang/String; = "ParticleSystem"


# instance fields
.field protected TEXTURE_COORDINATION:[[I

.field protected TEXTURE_SIZE:[I

.field protected mDPS:F

.field protected mIbb:Ljava/nio/ByteBuffer;

.field protected mLevel:I

.field protected mNumTexCoorId:I

.field protected mParticleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/Particle/Particle;",
            ">;"
        }
    .end annotation
.end field

.field protected mRandom:Ljava/util/Random;

.field protected mRemain:F

.field protected mTexCoor:[[F

.field protected mWeather:Lcn/nubia/WeatherAnimation/Weather/Weather;


# direct methods
.method public constructor <init>(Lcn/nubia/WeatherAnimation/Weather/Weather;IIFF)V
    .locals 4
    .param p1, "weather"    # Lcn/nubia/WeatherAnimation/Weather/Weather;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "widthScale"    # F
    .param p5, "heightScale"    # F

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p2, p3, p4, p5}, Lcn/nubia/WeatherAnimation/Weather/DrawElement;-><init>(IIFF)V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/Particle/ParticleSystem;->mLevel:I

    .line 45
    iput v2, p0, Lcn/nubia/Particle/ParticleSystem;->mRemain:F

    .line 46
    iput v2, p0, Lcn/nubia/Particle/ParticleSystem;->mDPS:F

    .line 47
    iput-object v1, p0, Lcn/nubia/Particle/ParticleSystem;->mTexCoor:[[F

    .line 48
    iput-object v1, p0, Lcn/nubia/Particle/ParticleSystem;->mIbb:Ljava/nio/ByteBuffer;

    .line 49
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcn/nubia/Particle/ParticleSystem;->mRandom:Ljava/util/Random;

    .line 50
    iput-object p1, p0, Lcn/nubia/Particle/ParticleSystem;->mWeather:Lcn/nubia/WeatherAnimation/Weather/Weather;

    .line 52
    iput-object v1, p0, Lcn/nubia/Particle/ParticleSystem;->mParticleList:Ljava/util/ArrayList;

    .line 53
    return-void
.end method

.method private processNeedDraw()I
    .locals 11

    .prologue
    const/high16 v10, 0x41a00000    # 20.0f

    .line 277
    const/high16 v0, 0x41a00000    # 20.0f

    .line 282
    .local v0, "MARGIN":F
    iget-object v9, p0, Lcn/nubia/Particle/ParticleSystem;->mParticleList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 283
    .local v2, "n":I
    const/4 v3, 0x0

    .line 284
    .local v3, "num":I
    const/high16 v5, -0x3e600000    # -20.0f

    .line 285
    .local v5, "x1":F
    iget v9, p0, Lcn/nubia/Particle/ParticleSystem;->mWidth:I

    int-to-float v9, v9

    add-float v6, v9, v10

    .line 286
    .local v6, "x2":F
    const/high16 v7, -0x3e600000    # -20.0f

    .line 287
    .local v7, "y1":F
    iget v9, p0, Lcn/nubia/Particle/ParticleSystem;->mHeight:I

    int-to-float v9, v9

    add-float v8, v9, v10

    .line 289
    .local v8, "y2":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 301
    return v3

    .line 290
    :cond_0
    iget-object v9, p0, Lcn/nubia/Particle/ParticleSystem;->mParticleList:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/Particle/Particle;

    .line 292
    .local v4, "particle":Lcn/nubia/Particle/Particle;
    iget v9, v4, Lcn/nubia/Particle/Particle;->mX:F

    cmpg-float v9, v9, v5

    if-ltz v9, :cond_1

    iget v9, v4, Lcn/nubia/Particle/Particle;->mX:F

    cmpl-float v9, v9, v6

    if-gtz v9, :cond_1

    .line 293
    iget v9, v4, Lcn/nubia/Particle/Particle;->mY:F

    cmpg-float v9, v9, v7

    if-ltz v9, :cond_1

    iget v9, v4, Lcn/nubia/Particle/Particle;->mY:F

    cmpl-float v9, v9, v8

    if-lez v9, :cond_2

    .line 294
    :cond_1
    const/4 v9, 0x0

    iput-boolean v9, v4, Lcn/nubia/Particle/Particle;->mNeedDraw:Z

    .line 289
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 296
    :cond_2
    const/4 v9, 0x1

    iput-boolean v9, v4, Lcn/nubia/Particle/Particle;->mNeedDraw:Z

    .line 297
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public create()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 57
    invoke-super {p0}, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->create()V

    .line 61
    iget-object v3, p0, Lcn/nubia/Particle/ParticleSystem;->TEXTURE_SIZE:[I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcn/nubia/Particle/ParticleSystem;->TEXTURE_COORDINATION:[[I

    if-nez v3, :cond_1

    .line 62
    :cond_0
    const-string v3, "ParticleSystem"

    const-string v4, "create ((null == TEXTURE_SIZE) || (null == TEXTURE_COORDINATION))"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/Particle/ParticleSystem;->getParticleMax()I

    move-result v1

    .line 66
    .local v1, "max":I
    mul-int/lit8 v3, v1, 0x8

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/Particle/ParticleSystem;->mVbb:Ljava/nio/ByteBuffer;

    .line 67
    iget-object v3, p0, Lcn/nubia/Particle/ParticleSystem;->mVbb:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 68
    mul-int/lit8 v3, v1, 0x8

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/Particle/ParticleSystem;->mCbb:Ljava/nio/ByteBuffer;

    .line 69
    iget-object v3, p0, Lcn/nubia/Particle/ParticleSystem;->mCbb:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 70
    mul-int/lit8 v3, v1, 0x6

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/Particle/ParticleSystem;->mIbb:Ljava/nio/ByteBuffer;

    .line 71
    iget-object v3, p0, Lcn/nubia/Particle/ParticleSystem;->mIbb:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 73
    iget-object v3, p0, Lcn/nubia/Particle/ParticleSystem;->TEXTURE_COORDINATION:[[I

    array-length v2, v3

    .line 74
    .local v2, "n":I
    iput v2, p0, Lcn/nubia/Particle/ParticleSystem;->mNumTexCoorId:I

    .line 75
    const/4 v3, 0x4

    filled-new-array {v2, v3}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    iput-object v3, p0, Lcn/nubia/Particle/ParticleSystem;->mTexCoor:[[F

    .line 77
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_2

    .line 84
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcn/nubia/Particle/ParticleSystem;->mParticleList:Ljava/util/ArrayList;

    .line 85
    return-void

    .line 78
    :cond_2
    iget-object v3, p0, Lcn/nubia/Particle/ParticleSystem;->mTexCoor:[[F

    aget-object v3, v3, v0

    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystem;->TEXTURE_COORDINATION:[[I

    aget-object v4, v4, v0

    aget v4, v4, v6

    int-to-float v4, v4

    iget-object v5, p0, Lcn/nubia/Particle/ParticleSystem;->TEXTURE_SIZE:[I

    aget v5, v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    aput v4, v3, v6

    .line 79
    iget-object v3, p0, Lcn/nubia/Particle/ParticleSystem;->mTexCoor:[[F

    aget-object v3, v3, v0

    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystem;->TEXTURE_COORDINATION:[[I

    aget-object v4, v4, v0

    aget v4, v4, v7

    int-to-float v4, v4

    iget-object v5, p0, Lcn/nubia/Particle/ParticleSystem;->TEXTURE_SIZE:[I

    aget v5, v5, v7

    int-to-float v5, v5

    div-float/2addr v4, v5

    aput v4, v3, v7

    .line 80
    iget-object v3, p0, Lcn/nubia/Particle/ParticleSystem;->mTexCoor:[[F

    aget-object v3, v3, v0

    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystem;->TEXTURE_COORDINATION:[[I

    aget-object v4, v4, v0

    aget v4, v4, v8

    int-to-float v4, v4

    iget-object v5, p0, Lcn/nubia/Particle/ParticleSystem;->TEXTURE_SIZE:[I

    aget v5, v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    aput v4, v3, v8

    .line 81
    iget-object v3, p0, Lcn/nubia/Particle/ParticleSystem;->mTexCoor:[[F

    aget-object v3, v3, v0

    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystem;->TEXTURE_COORDINATION:[[I

    aget-object v4, v4, v0

    aget v4, v4, v9

    int-to-float v4, v4

    iget-object v5, p0, Lcn/nubia/Particle/ParticleSystem;->TEXTURE_SIZE:[I

    aget v5, v5, v7

    int-to-float v5, v5

    div-float/2addr v4, v5

    aput v4, v3, v9

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected abstract createParticle()Lcn/nubia/Particle/Particle;
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-super {p0}, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->destroy()V

    .line 90
    iget-object v0, p0, Lcn/nubia/Particle/ParticleSystem;->mVbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 91
    iput-object v1, p0, Lcn/nubia/Particle/ParticleSystem;->mVbb:Ljava/nio/ByteBuffer;

    .line 92
    iget-object v0, p0, Lcn/nubia/Particle/ParticleSystem;->mCbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 93
    iput-object v1, p0, Lcn/nubia/Particle/ParticleSystem;->mCbb:Ljava/nio/ByteBuffer;

    .line 94
    iget-object v0, p0, Lcn/nubia/Particle/ParticleSystem;->mIbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 95
    iput-object v1, p0, Lcn/nubia/Particle/ParticleSystem;->mIbb:Ljava/nio/ByteBuffer;

    .line 96
    iget-object v0, p0, Lcn/nubia/Particle/ParticleSystem;->mParticleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 97
    return-void
.end method

.method public getDotPerSecond()F
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lcn/nubia/Particle/ParticleSystem;->mDPS:F

    return v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcn/nubia/Particle/ParticleSystem;->mLevel:I

    return v0
.end method

.method public abstract getParticleMax()I
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)[F
    .locals 29
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 113
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/Particle/ParticleSystem;->mTextureId:I

    if-nez v2, :cond_0

    .line 115
    const/4 v2, 0x0

    .line 255
    :goto_0
    return-object v2

    .line 118
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/Particle/ParticleSystem;->mWeather:Lcn/nubia/WeatherAnimation/Weather/Weather;

    invoke-virtual {v2}, Lcn/nubia/WeatherAnimation/Weather/Weather;->getOffset()F

    move-result v14

    .line 119
    .local v14, "alpha":F
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/Particle/ParticleSystem;->mHeight:I

    int-to-float v2, v2

    const v3, 0x3f19999a    # 0.6f

    mul-float v15, v2, v3

    .line 120
    .local v15, "alphaBeginY":F
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/Particle/ParticleSystem;->mHeight:I

    int-to-float v2, v2

    const v3, 0x3ecccccd    # 0.4f

    mul-float v17, v2, v3

    .line 122
    .local v17, "alphaHeight":F
    const/4 v2, 0x0

    cmpl-float v2, v2, v14

    if-nez v2, :cond_1

    .line 124
    const/4 v2, 0x0

    goto :goto_0

    .line 128
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/Particle/ParticleSystem;->mParticleList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 129
    .local v24, "n":I
    invoke-direct/range {p0 .. p0}, Lcn/nubia/Particle/ParticleSystem;->processNeedDraw()I

    move-result v25

    .line 131
    .local v25, "num":I
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/Particle/ParticleSystem;->getParticleMax()I

    move-result v23

    .line 132
    .local v23, "max":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/Particle/ParticleSystem;->mDrawInfo:[F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/Particle/ParticleSystem;->mDrawInfo:[F

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/Particle/ParticleSystem;->mVbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v7

    .line 137
    .local v7, "mVertexBuffer":Ljava/nio/FloatBuffer;
    const/16 v21, 0x0

    .line 139
    .local v21, "m":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v24

    if-lt v0, v1, :cond_5

    .line 171
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/Particle/ParticleSystem;->mCbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v13

    .line 175
    .local v13, "mTexCoorBuffer":Ljava/nio/FloatBuffer;
    const/16 v21, 0x0

    .line 177
    const/16 v19, 0x0

    :goto_2
    move/from16 v0, v19

    move/from16 v1, v24

    if-lt v0, v1, :cond_7

    .line 204
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 207
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/Particle/ParticleSystem;->mIbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v22

    .line 209
    .local v22, "mIndexBuffer":Ljava/nio/ShortBuffer;
    move/from16 v0, v25

    move/from16 v1, v23

    if-le v0, v1, :cond_4

    .line 211
    move/from16 v25, v23

    .line 214
    :cond_4
    const/16 v19, 0x0

    :goto_3
    move/from16 v0, v19

    move/from16 v1, v25

    if-lt v0, v1, :cond_9

    .line 223
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/Particle/ParticleSystem;->mShaderProgram:Lcn/nubia/OpenGL/ShaderProgram;

    iget v2, v2, Lcn/nubia/OpenGL/ShaderProgram;->mId:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/Particle/ParticleSystem;->mShaderProgram:Lcn/nubia/OpenGL/ShaderProgram;

    iget v2, v2, Lcn/nubia/OpenGL/ShaderProgram;->mAlphaHandle:I

    invoke-static {v2, v14}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/Particle/ParticleSystem;->mShaderProgram:Lcn/nubia/OpenGL/ShaderProgram;

    iget v2, v2, Lcn/nubia/OpenGL/ShaderProgram;->mAlphaBeginYHandle:I

    invoke-static {v2, v15}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/Particle/ParticleSystem;->mShaderProgram:Lcn/nubia/OpenGL/ShaderProgram;

    iget v2, v2, Lcn/nubia/OpenGL/ShaderProgram;->mAlphaHeightHandle:I

    move/from16 v0, v17

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 233
    const/4 v2, 0x6

    new-array v0, v2, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_0

    .line 234
    .local v16, "alphaChangeArray":[F
    const/4 v2, 0x6

    new-array v0, v2, [F

    move-object/from16 v18, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v18, v2

    const/4 v2, 0x1

    const v3, 0x3e926e98    # 0.286f

    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/Particle/ParticleSystem;->mHeight:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    aput v3, v18, v2

    const/4 v2, 0x2

    const v3, 0x3edba5e3    # 0.429f

    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/Particle/ParticleSystem;->mHeight:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    aput v3, v18, v2

    const/4 v2, 0x3

    .line 235
    const/high16 v3, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/Particle/ParticleSystem;->mHeight:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    aput v3, v18, v2

    const/4 v2, 0x4

    const v3, 0x3f2ac083    # 0.667f

    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/Particle/ParticleSystem;->mHeight:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    aput v3, v18, v2

    const/4 v2, 0x5

    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/Particle/ParticleSystem;->mHeight:I

    int-to-float v3, v3

    aput v3, v18, v2

    .line 237
    .local v18, "alphaLocationArray":[F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/Particle/ParticleSystem;->mShaderProgram:Lcn/nubia/OpenGL/ShaderProgram;

    iget v2, v2, Lcn/nubia/OpenGL/ShaderProgram;->mAlphaChangedHandle:I

    const/4 v3, 0x6

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0, v4}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/Particle/ParticleSystem;->mShaderProgram:Lcn/nubia/OpenGL/ShaderProgram;

    iget v2, v2, Lcn/nubia/OpenGL/ShaderProgram;->mAlphaLoactionYHandle:I

    const/4 v3, 0x6

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0, v4}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/Particle/ParticleSystem;->mShaderProgram:Lcn/nubia/OpenGL/ShaderProgram;

    iget v2, v2, Lcn/nubia/OpenGL/ShaderProgram;->mMVPMatrixHandle:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 241
    invoke-static {}, Lcn/nubia/OpenGL/MatrixState;->getVPMatrix()[F

    move-result-object v5

    const/4 v6, 0x0

    .line 240
    invoke-static {v2, v3, v4, v5, v6}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 242
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/Particle/ParticleSystem;->mShaderProgram:Lcn/nubia/OpenGL/ShaderProgram;

    iget v2, v2, Lcn/nubia/OpenGL/ShaderProgram;->mPositionHandle:I

    const/4 v3, 0x2

    .line 243
    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x8

    .line 242
    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/Particle/ParticleSystem;->mShaderProgram:Lcn/nubia/OpenGL/ShaderProgram;

    iget v8, v2, Lcn/nubia/OpenGL/ShaderProgram;->mTexCoorHandle:I

    const/4 v9, 0x2

    .line 245
    const/16 v10, 0x1406

    const/4 v11, 0x0

    const/16 v12, 0x8

    .line 244
    invoke-static/range {v8 .. v13}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/Particle/ParticleSystem;->mShaderProgram:Lcn/nubia/OpenGL/ShaderProgram;

    iget v2, v2, Lcn/nubia/OpenGL/ShaderProgram;->mPositionHandle:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/Particle/ParticleSystem;->mShaderProgram:Lcn/nubia/OpenGL/ShaderProgram;

    iget v2, v2, Lcn/nubia/OpenGL/ShaderProgram;->mTexCoorHandle:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 248
    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 249
    const/16 v2, 0xde1

    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/Particle/ParticleSystem;->mTextureId:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 250
    const/16 v2, 0xbe2

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 251
    const/4 v2, 0x1

    const/16 v3, 0x303

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 252
    const/4 v2, 0x4

    mul-int/lit8 v3, v21, 0x6

    .line 253
    const/16 v4, 0x1403

    .line 252
    move-object/from16 v0, v22

    invoke-static {v2, v3, v4, v0}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 254
    const/16 v2, 0xbe2

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/Particle/ParticleSystem;->mDrawInfo:[F

    goto/16 :goto_0

    .line 140
    .end local v13    # "mTexCoorBuffer":Ljava/nio/FloatBuffer;
    .end local v16    # "alphaChangeArray":[F
    .end local v18    # "alphaLocationArray":[F
    .end local v22    # "mIndexBuffer":Ljava/nio/ShortBuffer;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/Particle/ParticleSystem;->mParticleList:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcn/nubia/Particle/Particle;

    .line 142
    .local v26, "particle":Lcn/nubia/Particle/Particle;
    move-object/from16 v0, v26

    iget-boolean v2, v0, Lcn/nubia/Particle/Particle;->mNeedDraw:Z

    if-nez v2, :cond_6

    .line 139
    :goto_4
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    .line 146
    :cond_6
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    .line 150
    add-int/lit8 v21, v21, 0x1

    .line 152
    move-object/from16 v0, v26

    iget v0, v0, Lcn/nubia/Particle/Particle;->mX:F

    move/from16 v27, v0

    .line 153
    .local v27, "x":F
    move-object/from16 v0, v26

    iget v0, v0, Lcn/nubia/Particle/Particle;->mY:F

    move/from16 v28, v0

    .line 155
    .local v28, "y":F
    move/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 156
    move/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 158
    move/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 159
    move-object/from16 v0, v26

    iget v2, v0, Lcn/nubia/Particle/Particle;->mHeight:F

    add-float v2, v2, v28

    invoke-virtual {v7, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 161
    move-object/from16 v0, v26

    iget v2, v0, Lcn/nubia/Particle/Particle;->mWidth:F

    add-float v2, v2, v27

    invoke-virtual {v7, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 162
    move/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 164
    move-object/from16 v0, v26

    iget v2, v0, Lcn/nubia/Particle/Particle;->mWidth:F

    add-float v2, v2, v27

    invoke-virtual {v7, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 165
    move-object/from16 v0, v26

    iget v2, v0, Lcn/nubia/Particle/Particle;->mHeight:F

    add-float v2, v2, v28

    invoke-virtual {v7, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/Particle/ParticleSystem;->mDrawInfo:[F

    const/4 v3, 0x0

    aget v4, v2, v3

    const/high16 v5, 0x40000000    # 2.0f

    add-float/2addr v4, v5

    aput v4, v2, v3

    .line 168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/Particle/ParticleSystem;->mDrawInfo:[F

    const/4 v3, 0x1

    aget v4, v2, v3

    move-object/from16 v0, v26

    iget v5, v0, Lcn/nubia/Particle/Particle;->mWidth:F

    move-object/from16 v0, v26

    iget v6, v0, Lcn/nubia/Particle/Particle;->mHeight:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aput v4, v2, v3

    goto :goto_4

    .line 178
    .end local v26    # "particle":Lcn/nubia/Particle/Particle;
    .end local v27    # "x":F
    .end local v28    # "y":F
    .restart local v13    # "mTexCoorBuffer":Ljava/nio/FloatBuffer;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/Particle/ParticleSystem;->mParticleList:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcn/nubia/Particle/Particle;

    .line 180
    .restart local v26    # "particle":Lcn/nubia/Particle/Particle;
    move-object/from16 v0, v26

    iget-boolean v2, v0, Lcn/nubia/Particle/Particle;->mNeedDraw:Z

    if-nez v2, :cond_8

    .line 177
    :goto_5
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_2

    .line 184
    :cond_8
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_3

    .line 188
    add-int/lit8 v21, v21, 0x1

    .line 190
    move-object/from16 v0, v26

    iget v0, v0, Lcn/nubia/Particle/Particle;->mTexCoorId:I

    move/from16 v20, v0

    .line 191
    .local v20, "id":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/Particle/ParticleSystem;->mTexCoor:[[F

    aget-object v2, v2, v20

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v13, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/Particle/ParticleSystem;->mTexCoor:[[F

    aget-object v2, v2, v20

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v13, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/Particle/ParticleSystem;->mTexCoor:[[F

    aget-object v2, v2, v20

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v13, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/Particle/ParticleSystem;->mTexCoor:[[F

    aget-object v2, v2, v20

    const/4 v3, 0x3

    aget v2, v2, v3

    invoke-virtual {v13, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/Particle/ParticleSystem;->mTexCoor:[[F

    aget-object v2, v2, v20

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-virtual {v13, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/Particle/ParticleSystem;->mTexCoor:[[F

    aget-object v2, v2, v20

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v13, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/Particle/ParticleSystem;->mTexCoor:[[F

    aget-object v2, v2, v20

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-virtual {v13, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/Particle/ParticleSystem;->mTexCoor:[[F

    aget-object v2, v2, v20

    const/4 v3, 0x3

    aget v2, v2, v3

    invoke-virtual {v13, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_5

    .line 215
    .end local v20    # "id":I
    .end local v26    # "particle":Lcn/nubia/Particle/Particle;
    .restart local v22    # "mIndexBuffer":Ljava/nio/ShortBuffer;
    :cond_9
    mul-int/lit8 v2, v19, 0x4

    int-to-short v2, v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 216
    mul-int/lit8 v2, v19, 0x4

    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 217
    mul-int/lit8 v2, v19, 0x4

    add-int/lit8 v2, v2, 0x2

    int-to-short v2, v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 218
    mul-int/lit8 v2, v19, 0x4

    add-int/lit8 v2, v2, 0x2

    int-to-short v2, v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 219
    mul-int/lit8 v2, v19, 0x4

    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 220
    mul-int/lit8 v2, v19, 0x4

    add-int/lit8 v2, v2, 0x3

    int-to-short v2, v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 214
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_3

    .line 233
    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
        0x3e99999a    # 0.3f
    .end array-data
.end method

.method public setDotPerSecond(F)V
    .locals 0
    .param p1, "dps"    # F

    .prologue
    .line 273
    iput p1, p0, Lcn/nubia/Particle/ParticleSystem;->mDPS:F

    .line 274
    return-void
.end method

.method public setLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 265
    iput p1, p0, Lcn/nubia/Particle/ParticleSystem;->mLevel:I

    .line 266
    return-void
.end method
