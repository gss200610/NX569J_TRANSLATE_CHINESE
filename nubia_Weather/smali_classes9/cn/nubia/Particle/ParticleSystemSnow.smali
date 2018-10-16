.class public Lcn/nubia/Particle/ParticleSystemSnow;
.super Lcn/nubia/Particle/ParticleSystem;
.source "ParticleSystemSnow.java"


# static fields
.field private static final NUM_MAX:I = 0xfa


# instance fields
.field private mXSpeed:F

.field private mXSpeedOffset:F

.field private mYAccelerate:F

.field private mYSpeed:F

.field private mYSpeedOffset:F


# direct methods
.method public constructor <init>(Lcn/nubia/WeatherAnimation/Weather/Weather;IIFF)V
    .locals 1
    .param p1, "weather"    # Lcn/nubia/WeatherAnimation/Weather/Weather;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "widthScale"    # F
    .param p5, "heightScale"    # F

    .prologue
    .line 15
    invoke-direct/range {p0 .. p5}, Lcn/nubia/Particle/ParticleSystem;-><init>(Lcn/nubia/WeatherAnimation/Weather/Weather;IIFF)V

    .line 16
    sget-object v0, Lcn/nubia/Particle/ParticleUtil;->TEXTURE_SIZE_SNOW:[I

    iput-object v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->TEXTURE_SIZE:[I

    .line 17
    sget-object v0, Lcn/nubia/Particle/ParticleUtil;->TEXTURE_COORDINATION_SNOW:[[I

    iput-object v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->TEXTURE_COORDINATION:[[I

    .line 18
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/Particle/ParticleSystemSnow;->setLevel(I)V

    .line 19
    sget v0, Lcn/nubia/weather/R$drawable;->particle_snow:I

    invoke-virtual {p0, v0}, Lcn/nubia/Particle/ParticleSystemSnow;->setBitmapId(I)V

    .line 20
    return-void
.end method


# virtual methods
.method public create()V
    .locals 11

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    .line 24
    invoke-super {p0}, Lcn/nubia/Particle/ParticleSystem;->create()V

    .line 29
    iget v7, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mYAccelerate:F

    div-float v0, v7, v10

    .line 30
    .local v0, "a":F
    iget v1, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mYSpeed:F

    .line 31
    .local v1, "b":F
    iget v7, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mHeight:I

    int-to-float v2, v7

    .line 32
    .local v2, "c":F
    neg-float v7, v1

    mul-float v8, v1, v1

    const/high16 v9, 0x40800000    # 4.0f

    mul-float/2addr v9, v0

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    add-float/2addr v7, v8

    mul-float v8, v10, v0

    div-float v6, v7, v8

    .line 33
    .local v6, "time":F
    iget v7, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mDPS:F

    mul-float/2addr v7, v6

    float-to-int v4, v7

    .line 35
    .local v4, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v4, :cond_0

    .line 40
    return-void

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/Particle/ParticleSystemSnow;->createParticle()Lcn/nubia/Particle/Particle;

    move-result-object v5

    .line 37
    .local v5, "particle":Lcn/nubia/Particle/Particle;
    iget-object v7, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mRandom:Ljava/util/Random;

    const/16 v8, 0x3e8

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    int-to-float v7, v7

    iput v7, v5, Lcn/nubia/Particle/Particle;->mLifeTime:F

    .line 38
    iget-object v7, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mParticleList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected createParticle()Lcn/nubia/Particle/Particle;
    .locals 7

    .prologue
    .line 97
    iget v4, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mLevel:I

    packed-switch v4, :pswitch_data_0

    .line 137
    const/4 v3, 0x0

    .line 138
    .local v3, "startId":I
    const/4 v0, 0x5

    .line 143
    .local v0, "endId":I
    :goto_0
    new-instance v2, Lcn/nubia/Particle/Particle;

    invoke-direct {v2}, Lcn/nubia/Particle/Particle;-><init>()V

    .line 144
    .local v2, "particle":Lcn/nubia/Particle/Particle;
    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mRandom:Ljava/util/Random;

    sub-int v5, v0, v3

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int v1, v4, v3

    .line 145
    .local v1, "id":I
    iput v1, v2, Lcn/nubia/Particle/Particle;->mTexCoorId:I

    .line 146
    iget v4, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mWidth:I

    neg-int v4, v4

    iget-object v5, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mRandom:Ljava/util/Random;

    iget v6, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mWidth:I

    mul-int/lit8 v6, v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, v2, Lcn/nubia/Particle/Particle;->mX:F

    .line 147
    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mRandom:Ljava/util/Random;

    iget v5, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mHeight:I

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    iput v4, v2, Lcn/nubia/Particle/Particle;->mY:F

    .line 148
    iget v4, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mXSpeed:F

    iput v4, v2, Lcn/nubia/Particle/Particle;->mVx:F

    .line 149
    iget v4, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mYSpeed:F

    iget v5, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mYSpeedOffset:F

    invoke-static {v4, v5}, Lcn/nubia/Particle/ParticleUtil;->getRandomOffsetValue(FF)F

    move-result v4

    iput v4, v2, Lcn/nubia/Particle/Particle;->mVy:F

    .line 150
    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mRandom:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    iget v5, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mYAccelerate:F

    mul-float/2addr v4, v5

    iput v4, v2, Lcn/nubia/Particle/Particle;->mAy:F

    .line 151
    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystemSnow;->TEXTURE_COORDINATION:[[I

    aget-object v4, v4, v1

    const/4 v5, 0x2

    aget v4, v4, v5

    iget-object v5, p0, Lcn/nubia/Particle/ParticleSystemSnow;->TEXTURE_COORDINATION:[[I

    aget-object v5, v5, v1

    const/4 v6, 0x0

    aget v5, v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, v2, Lcn/nubia/Particle/Particle;->mWidth:F

    .line 152
    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystemSnow;->TEXTURE_COORDINATION:[[I

    aget-object v4, v4, v1

    const/4 v5, 0x3

    aget v4, v4, v5

    iget-object v5, p0, Lcn/nubia/Particle/ParticleSystemSnow;->TEXTURE_COORDINATION:[[I

    aget-object v5, v5, v1

    const/4 v6, 0x1

    aget v5, v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, v2, Lcn/nubia/Particle/Particle;->mHeight:F

    .line 153
    iget v4, v2, Lcn/nubia/Particle/Particle;->mWidth:F

    iget v5, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mHeightScale:F

    mul-float/2addr v4, v5

    iput v4, v2, Lcn/nubia/Particle/Particle;->mWidth:F

    .line 154
    iget v4, v2, Lcn/nubia/Particle/Particle;->mHeight:F

    iget v5, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mHeightScale:F

    mul-float/2addr v4, v5

    iput v4, v2, Lcn/nubia/Particle/Particle;->mHeight:F

    .line 155
    return-object v2

    .line 100
    .end local v0    # "endId":I
    .end local v1    # "id":I
    .end local v2    # "particle":Lcn/nubia/Particle/Particle;
    .end local v3    # "startId":I
    :pswitch_0
    const/4 v3, 0x0

    .line 101
    .restart local v3    # "startId":I
    const/4 v0, 0x5

    .line 102
    .restart local v0    # "endId":I
    goto :goto_0

    .line 106
    .end local v0    # "endId":I
    .end local v3    # "startId":I
    :pswitch_1
    const/4 v3, 0x0

    .line 107
    .restart local v3    # "startId":I
    const/16 v0, 0xb

    .line 108
    .restart local v0    # "endId":I
    goto/16 :goto_0

    .line 112
    .end local v0    # "endId":I
    .end local v3    # "startId":I
    :pswitch_2
    const/16 v3, 0xc

    .line 113
    .restart local v3    # "startId":I
    const/16 v0, 0x10

    .line 114
    .restart local v0    # "endId":I
    goto/16 :goto_0

    .line 119
    .end local v0    # "endId":I
    .end local v3    # "startId":I
    :pswitch_3
    const/16 v3, 0x11

    .line 120
    .restart local v3    # "startId":I
    const/16 v0, 0x16

    .line 121
    .restart local v0    # "endId":I
    goto/16 :goto_0

    .line 125
    .end local v0    # "endId":I
    .end local v3    # "startId":I
    :pswitch_4
    const/16 v3, 0x11

    .line 126
    .restart local v3    # "startId":I
    const/16 v0, 0x1a

    .line 127
    .restart local v0    # "endId":I
    goto/16 :goto_0

    .line 131
    .end local v0    # "endId":I
    .end local v3    # "startId":I
    :pswitch_5
    const/16 v3, 0x17

    .line 132
    .restart local v3    # "startId":I
    const/16 v0, 0x1a

    .line 133
    .restart local v0    # "endId":I
    goto/16 :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getParticleMax()I
    .locals 1

    .prologue
    .line 89
    const/16 v0, 0xfa

    return v0
.end method

.method public onProcessFrame(F)V
    .locals 13
    .param p1, "time"    # F

    .prologue
    const/high16 v12, 0x3f000000    # 0.5f

    .line 48
    iget v4, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mRemain:F

    iget v5, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mDPS:F

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    iput v4, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mRemain:F

    .line 49
    iget v4, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mRemain:F

    float-to-int v2, v4

    .line 50
    .local v2, "n":I
    iget v4, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mRemain:F

    int-to-float v5, v2

    sub-float/2addr v4, v5

    iput v4, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mRemain:F

    .line 51
    iget v4, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mYSpeed:F

    mul-float/2addr v4, p1

    iget v5, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mYAccelerate:F

    mul-float/2addr v5, v12

    mul-float/2addr v5, p1

    mul-float/2addr v5, p1

    add-float v0, v4, v5

    .line 53
    .local v0, "height":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 60
    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mParticleList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 62
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v2, :cond_1

    .line 71
    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mParticleList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 73
    move v1, v2

    :goto_2
    if-gez v1, :cond_2

    .line 86
    return-void

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/Particle/ParticleSystemSnow;->createParticle()Lcn/nubia/Particle/Particle;

    move-result-object v3

    .line 55
    .local v3, "particle":Lcn/nubia/Particle/Particle;
    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mRandom:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    neg-float v4, v4

    mul-float/2addr v4, v0

    iput v4, v3, Lcn/nubia/Particle/Particle;->mY:F

    .line 56
    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mRandom:Ljava/util/Random;

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    iput v4, v3, Lcn/nubia/Particle/Particle;->mLifeTime:F

    .line 57
    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mParticleList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    .end local v3    # "particle":Lcn/nubia/Particle/Particle;
    :cond_1
    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mParticleList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/Particle/Particle;

    .line 64
    .restart local v3    # "particle":Lcn/nubia/Particle/Particle;
    iget v4, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mXSpeed:F

    iget-object v5, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mRandom:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v5

    iget v6, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mXSpeedOffset:F

    mul-float/2addr v5, v6

    float-to-double v6, v5

    const-wide v8, 0x3fc999999999999aL    # 0.2

    iget v5, v3, Lcn/nubia/Particle/Particle;->mLifeTime:F

    float-to-double v10, v5

    mul-double/2addr v8, v10

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v5, v6

    add-float/2addr v4, v5

    iput v4, v3, Lcn/nubia/Particle/Particle;->mVx:F

    .line 65
    iget v4, v3, Lcn/nubia/Particle/Particle;->mVy:F

    iget v5, v3, Lcn/nubia/Particle/Particle;->mAy:F

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    iput v4, v3, Lcn/nubia/Particle/Particle;->mVy:F

    .line 66
    iget v4, v3, Lcn/nubia/Particle/Particle;->mX:F

    iget v5, v3, Lcn/nubia/Particle/Particle;->mVx:F

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    iput v4, v3, Lcn/nubia/Particle/Particle;->mX:F

    .line 67
    iget v4, v3, Lcn/nubia/Particle/Particle;->mY:F

    iget v5, v3, Lcn/nubia/Particle/Particle;->mVy:F

    mul-float/2addr v5, p1

    iget v6, v3, Lcn/nubia/Particle/Particle;->mAy:F

    mul-float/2addr v6, v12

    mul-float/2addr v6, p1

    mul-float/2addr v6, p1

    add-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, v3, Lcn/nubia/Particle/Particle;->mY:F

    .line 68
    iget v4, v3, Lcn/nubia/Particle/Particle;->mLifeTime:F

    add-float/2addr v4, p1

    iput v4, v3, Lcn/nubia/Particle/Particle;->mLifeTime:F

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 75
    .end local v3    # "particle":Lcn/nubia/Particle/Particle;
    :cond_2
    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mParticleList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/Particle/Particle;

    .line 77
    .restart local v3    # "particle":Lcn/nubia/Particle/Particle;
    iget v4, v3, Lcn/nubia/Particle/Particle;->mY:F

    iget v5, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mHeight:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    .line 78
    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mParticleList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 73
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_2

    .line 82
    :cond_4
    const/4 v4, 0x3

    iget v5, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mLevel:I

    if-ne v4, v5, :cond_3

    iget v4, v3, Lcn/nubia/Particle/Particle;->mX:F

    iget v5, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mWidth:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 83
    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mParticleList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3
.end method

.method public setLevel(I)V
    .locals 6
    .param p1, "level"    # I

    .prologue
    const/high16 v5, 0x41700000    # 15.0f

    const/high16 v4, 0x42200000    # 40.0f

    const/high16 v3, 0x428c0000    # 70.0f

    const/high16 v2, 0x41200000    # 10.0f

    const/4 v1, 0x0

    .line 159
    invoke-super {p0, p1}, Lcn/nubia/Particle/ParticleSystem;->setLevel(I)V

    .line 161
    packed-switch p1, :pswitch_data_0

    .line 243
    const/high16 v0, 0x40c00000    # 6.0f

    invoke-virtual {p0, v0}, Lcn/nubia/Particle/ParticleSystemSnow;->setDotPerSecond(F)V

    .line 244
    iput v1, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mXSpeed:F

    .line 245
    const/high16 v0, 0x41c00000    # 24.0f

    iget v1, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mHeightScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mYSpeed:F

    .line 246
    iget v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mWidthScale:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mXSpeedOffset:F

    .line 247
    iget v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mHeightScale:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mYSpeedOffset:F

    .line 248
    iget v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mHeightScale:F

    mul-float/2addr v0, v5

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mYAccelerate:F

    .line 252
    :goto_0
    return-void

    .line 163
    :pswitch_0
    const/high16 v0, 0x40c00000    # 6.0f

    invoke-virtual {p0, v0}, Lcn/nubia/Particle/ParticleSystemSnow;->setDotPerSecond(F)V

    .line 164
    iput v1, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mXSpeed:F

    .line 165
    const/high16 v0, 0x41c00000    # 24.0f

    iget v1, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mHeightScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mYSpeed:F

    .line 166
    iget v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mWidthScale:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mXSpeedOffset:F

    .line 167
    iget v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mHeightScale:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mYSpeedOffset:F

    .line 168
    iget v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mHeightScale:F

    mul-float/2addr v0, v5

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mYAccelerate:F

    goto :goto_0

    .line 173
    :pswitch_1
    const/high16 v0, 0x41300000    # 11.0f

    invoke-virtual {p0, v0}, Lcn/nubia/Particle/ParticleSystemSnow;->setDotPerSecond(F)V

    .line 174
    iput v1, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mXSpeed:F

    .line 175
    iget v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mHeightScale:F

    mul-float/2addr v0, v4

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mYSpeed:F

    .line 176
    const/high16 v0, 0x42b40000    # 90.0f

    iget v1, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mWidthScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mXSpeedOffset:F

    .line 177
    iget v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mHeightScale:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mYSpeedOffset:F

    .line 178
    const/high16 v0, 0x41a00000    # 20.0f

    iget v1, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mHeightScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mYAccelerate:F

    goto :goto_0

    .line 183
    :pswitch_2
    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {p0, v0}, Lcn/nubia/Particle/ParticleSystemSnow;->setDotPerSecond(F)V

    .line 184
    iput v1, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mXSpeed:F

    .line 185
    const/high16 v0, 0x42480000    # 50.0f

    iget v1, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mHeightScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mYSpeed:F

    .line 186
    const/high16 v0, 0x42dc0000    # 110.0f

    iget v1, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mWidthScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mXSpeedOffset:F

    .line 187
    iget v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mHeightScale:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mYSpeedOffset:F

    .line 188
    const/high16 v0, 0x41c80000    # 25.0f

    iget v1, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mHeightScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mYAccelerate:F

    goto :goto_0

    .line 193
    :pswitch_3
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {p0, v0}, Lcn/nubia/Particle/ParticleSystemSnow;->setDotPerSecond(F)V

    .line 194
    iget v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mWidthScale:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mXSpeed:F

    .line 195
    const/high16 v0, 0x437a0000    # 250.0f

    iget v1, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mHeightScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mYSpeed:F

    .line 196
    const/high16 v0, 0x42a00000    # 80.0f

    iget v1, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mWidthScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mXSpeedOffset:F

    .line 197
    iget v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mHeightScale:F

    mul-float/2addr v0, v4

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mYSpeedOffset:F

    .line 198
    const/high16 v0, 0x42c80000    # 100.0f

    iget v1, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mHeightScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mYAccelerate:F

    goto/16 :goto_0

    .line 203
    :pswitch_4
    const/high16 v0, 0x41900000    # 18.0f

    invoke-virtual {p0, v0}, Lcn/nubia/Particle/ParticleSystemSnow;->setDotPerSecond(F)V

    .line 204
    iput v1, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mXSpeed:F

    .line 205
    const/high16 v0, 0x41800000    # 16.0f

    iget v1, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mHeightScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mYSpeed:F

    .line 206
    iget v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mWidthScale:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mXSpeedOffset:F

    .line 207
    iget v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mHeightScale:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mYSpeedOffset:F

    .line 208
    iget v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mHeightScale:F

    mul-float/2addr v0, v5

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mYAccelerate:F

    goto/16 :goto_0

    .line 213
    :pswitch_5
    const/high16 v0, 0x41c80000    # 25.0f

    invoke-virtual {p0, v0}, Lcn/nubia/Particle/ParticleSystemSnow;->setDotPerSecond(F)V

    .line 214
    iput v1, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mXSpeed:F

    .line 215
    const/high16 v0, 0x41f00000    # 30.0f

    iget v1, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mHeightScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mYSpeed:F

    .line 216
    const/high16 v0, 0x42b40000    # 90.0f

    iget v1, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mWidthScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mXSpeedOffset:F

    .line 217
    iget v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mHeightScale:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mYSpeedOffset:F

    .line 218
    const/high16 v0, 0x41a00000    # 20.0f

    iget v1, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mHeightScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mYAccelerate:F

    goto/16 :goto_0

    .line 223
    :pswitch_6
    invoke-virtual {p0, v4}, Lcn/nubia/Particle/ParticleSystemSnow;->setDotPerSecond(F)V

    .line 224
    iput v1, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mXSpeed:F

    .line 225
    const/high16 v0, 0x42340000    # 45.0f

    iget v1, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mHeightScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mYSpeed:F

    .line 226
    const/high16 v0, 0x42c80000    # 100.0f

    iget v1, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mWidthScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mXSpeedOffset:F

    .line 227
    iget v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mHeightScale:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mYSpeedOffset:F

    .line 228
    const/high16 v0, 0x41c80000    # 25.0f

    iget v1, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mHeightScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mYAccelerate:F

    goto/16 :goto_0

    .line 233
    :pswitch_7
    const/high16 v0, 0x42700000    # 60.0f

    invoke-virtual {p0, v0}, Lcn/nubia/Particle/ParticleSystemSnow;->setDotPerSecond(F)V

    .line 234
    iget v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mWidthScale:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mXSpeed:F

    .line 235
    const/high16 v0, 0x43480000    # 200.0f

    iget v1, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mHeightScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mYSpeed:F

    .line 236
    const/high16 v0, 0x42a00000    # 80.0f

    iget v1, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mWidthScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mXSpeedOffset:F

    .line 237
    iget v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mHeightScale:F

    mul-float/2addr v0, v4

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mYSpeedOffset:F

    .line 238
    const/high16 v0, 0x42c80000    # 100.0f

    iget v1, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mHeightScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemSnow;->mYAccelerate:F

    goto/16 :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
