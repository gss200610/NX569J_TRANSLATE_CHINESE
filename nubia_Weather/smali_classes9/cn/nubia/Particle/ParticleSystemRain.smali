.class public Lcn/nubia/Particle/ParticleSystemRain;
.super Lcn/nubia/Particle/ParticleSystem;
.source "ParticleSystemRain.java"


# static fields
.field private static final NUM_MAX:I = 0x208


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
    .line 17
    invoke-direct/range {p0 .. p5}, Lcn/nubia/Particle/ParticleSystem;-><init>(Lcn/nubia/WeatherAnimation/Weather/Weather;IIFF)V

    .line 19
    sget-object v0, Lcn/nubia/Particle/ParticleUtil;->TEXTURE_SIZE_RAIN:[I

    iput-object v0, p0, Lcn/nubia/Particle/ParticleSystemRain;->TEXTURE_SIZE:[I

    .line 20
    sget-object v0, Lcn/nubia/Particle/ParticleUtil;->TEXTURE_COORDINATION_RAIN:[[I

    iput-object v0, p0, Lcn/nubia/Particle/ParticleSystemRain;->TEXTURE_COORDINATION:[[I

    .line 21
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/Particle/ParticleSystemRain;->setLevel(I)V

    .line 22
    sget v0, Lcn/nubia/weather/R$drawable;->particle_rain:I

    invoke-virtual {p0, v0}, Lcn/nubia/Particle/ParticleSystemRain;->setBitmapId(I)V

    .line 23
    return-void
.end method


# virtual methods
.method public create()V
    .locals 11

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    .line 27
    invoke-super {p0}, Lcn/nubia/Particle/ParticleSystem;->create()V

    .line 32
    iget v7, p0, Lcn/nubia/Particle/ParticleSystemRain;->mYAccelerate:F

    div-float v0, v7, v10

    .line 33
    .local v0, "a":F
    iget v1, p0, Lcn/nubia/Particle/ParticleSystemRain;->mYSpeed:F

    .line 34
    .local v1, "b":F
    iget v7, p0, Lcn/nubia/Particle/ParticleSystemRain;->mHeight:I

    int-to-float v2, v7

    .line 35
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

    .line 36
    .local v6, "time":F
    iget v7, p0, Lcn/nubia/Particle/ParticleSystemRain;->mDPS:F

    mul-float/2addr v7, v6

    float-to-int v4, v7

    .line 38
    .local v4, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v4, :cond_0

    .line 42
    return-void

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/Particle/ParticleSystemRain;->createParticle()Lcn/nubia/Particle/Particle;

    move-result-object v5

    .line 40
    .local v5, "particle":Lcn/nubia/Particle/Particle;
    iget-object v7, p0, Lcn/nubia/Particle/ParticleSystemRain;->mParticleList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected createParticle()Lcn/nubia/Particle/Particle;
    .locals 7

    .prologue
    .line 89
    const/4 v1, 0x0

    .line 93
    .local v1, "id":I
    iget v4, p0, Lcn/nubia/Particle/ParticleSystemRain;->mLevel:I

    packed-switch v4, :pswitch_data_0

    .line 123
    const/4 v3, 0x0

    .line 124
    .local v3, "startId":I
    const/4 v0, 0x5

    .line 129
    .local v0, "endId":I
    :goto_0
    new-instance v2, Lcn/nubia/Particle/Particle;

    invoke-direct {v2}, Lcn/nubia/Particle/Particle;-><init>()V

    .line 130
    .local v2, "particle":Lcn/nubia/Particle/Particle;
    iget v4, p0, Lcn/nubia/Particle/ParticleSystemRain;->mXSpeed:F

    iput v4, v2, Lcn/nubia/Particle/Particle;->mVx:F

    .line 131
    iget v4, p0, Lcn/nubia/Particle/ParticleSystemRain;->mYSpeed:F

    iget v5, p0, Lcn/nubia/Particle/ParticleSystemRain;->mYSpeedOffset:F

    invoke-static {v4, v5}, Lcn/nubia/Particle/ParticleUtil;->getRandomOffsetValue(FF)F

    move-result v4

    iput v4, v2, Lcn/nubia/Particle/Particle;->mVy:F

    .line 132
    iget v4, p0, Lcn/nubia/Particle/ParticleSystemRain;->mYAccelerate:F

    iput v4, v2, Lcn/nubia/Particle/Particle;->mAy:F

    .line 133
    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystemRain;->mRandom:Ljava/util/Random;

    iget v5, p0, Lcn/nubia/Particle/ParticleSystemRain;->mWidth:I

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    iput v4, v2, Lcn/nubia/Particle/Particle;->mX:F

    .line 134
    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystemRain;->mRandom:Ljava/util/Random;

    iget v5, p0, Lcn/nubia/Particle/ParticleSystemRain;->mHeight:I

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    iput v4, v2, Lcn/nubia/Particle/Particle;->mY:F

    .line 135
    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystemRain;->mRandom:Ljava/util/Random;

    sub-int v5, v0, v3

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int v1, v4, v3

    .line 136
    iput v1, v2, Lcn/nubia/Particle/Particle;->mTexCoorId:I

    .line 137
    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystemRain;->TEXTURE_COORDINATION:[[I

    aget-object v4, v4, v1

    const/4 v5, 0x2

    aget v4, v4, v5

    iget-object v5, p0, Lcn/nubia/Particle/ParticleSystemRain;->TEXTURE_COORDINATION:[[I

    aget-object v5, v5, v1

    const/4 v6, 0x0

    aget v5, v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, v2, Lcn/nubia/Particle/Particle;->mWidth:F

    .line 138
    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystemRain;->TEXTURE_COORDINATION:[[I

    aget-object v4, v4, v1

    const/4 v5, 0x3

    aget v4, v4, v5

    iget-object v5, p0, Lcn/nubia/Particle/ParticleSystemRain;->TEXTURE_COORDINATION:[[I

    aget-object v5, v5, v1

    const/4 v6, 0x1

    aget v5, v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, v2, Lcn/nubia/Particle/Particle;->mHeight:F

    .line 139
    iget v4, v2, Lcn/nubia/Particle/Particle;->mWidth:F

    iget v5, p0, Lcn/nubia/Particle/ParticleSystemRain;->mHeightScale:F

    mul-float/2addr v4, v5

    iput v4, v2, Lcn/nubia/Particle/Particle;->mWidth:F

    .line 140
    iget v4, v2, Lcn/nubia/Particle/Particle;->mHeight:F

    iget v5, p0, Lcn/nubia/Particle/ParticleSystemRain;->mHeightScale:F

    mul-float/2addr v4, v5

    iput v4, v2, Lcn/nubia/Particle/Particle;->mHeight:F

    .line 141
    return-object v2

    .line 96
    .end local v0    # "endId":I
    .end local v2    # "particle":Lcn/nubia/Particle/Particle;
    .end local v3    # "startId":I
    :pswitch_0
    const/4 v3, 0x0

    .line 97
    .restart local v3    # "startId":I
    const/4 v0, 0x5

    .line 98
    .restart local v0    # "endId":I
    goto :goto_0

    .line 103
    .end local v0    # "endId":I
    .end local v3    # "startId":I
    :pswitch_1
    const/4 v3, 0x6

    .line 104
    .restart local v3    # "startId":I
    const/16 v0, 0xb

    .line 105
    .restart local v0    # "endId":I
    goto :goto_0

    .line 110
    .end local v0    # "endId":I
    .end local v3    # "startId":I
    :pswitch_2
    const/16 v3, 0xc

    .line 111
    .restart local v3    # "startId":I
    const/16 v0, 0x11

    .line 112
    .restart local v0    # "endId":I
    goto :goto_0

    .line 117
    .end local v0    # "endId":I
    .end local v3    # "startId":I
    :pswitch_3
    const/16 v3, 0x12

    .line 118
    .restart local v3    # "startId":I
    const/16 v0, 0x17

    .line 119
    .restart local v0    # "endId":I
    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public getParticleMax()I
    .locals 1

    .prologue
    .line 84
    const/16 v0, 0x208

    return v0
.end method

.method public onProcessFrame(F)V
    .locals 9
    .param p1, "time"    # F

    .prologue
    const/high16 v8, 0x3f000000    # 0.5f

    .line 50
    iget v4, p0, Lcn/nubia/Particle/ParticleSystemRain;->mRemain:F

    iget v5, p0, Lcn/nubia/Particle/ParticleSystemRain;->mDPS:F

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    iput v4, p0, Lcn/nubia/Particle/ParticleSystemRain;->mRemain:F

    .line 51
    iget v4, p0, Lcn/nubia/Particle/ParticleSystemRain;->mRemain:F

    float-to-int v2, v4

    .line 52
    .local v2, "n":I
    iget v4, p0, Lcn/nubia/Particle/ParticleSystemRain;->mRemain:F

    int-to-float v5, v2

    sub-float/2addr v4, v5

    iput v4, p0, Lcn/nubia/Particle/ParticleSystemRain;->mRemain:F

    .line 53
    iget v4, p0, Lcn/nubia/Particle/ParticleSystemRain;->mYSpeed:F

    mul-float/2addr v4, p1

    iget v5, p0, Lcn/nubia/Particle/ParticleSystemRain;->mYAccelerate:F

    mul-float/2addr v5, v8

    mul-float/2addr v5, p1

    mul-float/2addr v5, p1

    add-float v0, v4, v5

    .line 55
    .local v0, "height":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 61
    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystemRain;->mParticleList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 63
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v2, :cond_1

    .line 70
    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystemRain;->mParticleList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 72
    move v1, v2

    :goto_2
    if-gez v1, :cond_2

    .line 81
    return-void

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/Particle/ParticleSystemRain;->createParticle()Lcn/nubia/Particle/Particle;

    move-result-object v3

    .line 57
    .local v3, "particle":Lcn/nubia/Particle/Particle;
    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystemRain;->mRandom:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    neg-float v4, v4

    mul-float/2addr v4, v0

    iput v4, v3, Lcn/nubia/Particle/Particle;->mY:F

    .line 58
    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystemRain;->mParticleList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    .end local v3    # "particle":Lcn/nubia/Particle/Particle;
    :cond_1
    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystemRain;->mParticleList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/Particle/Particle;

    .line 65
    .restart local v3    # "particle":Lcn/nubia/Particle/Particle;
    iget v4, v3, Lcn/nubia/Particle/Particle;->mX:F

    iget v5, v3, Lcn/nubia/Particle/Particle;->mVx:F

    iget-object v6, p0, Lcn/nubia/Particle/ParticleSystemRain;->mRandom:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    iget v7, p0, Lcn/nubia/Particle/ParticleSystemRain;->mXSpeedOffset:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    iput v4, v3, Lcn/nubia/Particle/Particle;->mX:F

    .line 66
    iget v4, v3, Lcn/nubia/Particle/Particle;->mVy:F

    iget v5, v3, Lcn/nubia/Particle/Particle;->mAy:F

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    iput v4, v3, Lcn/nubia/Particle/Particle;->mVy:F

    .line 67
    iget v4, v3, Lcn/nubia/Particle/Particle;->mY:F

    iget v5, v3, Lcn/nubia/Particle/Particle;->mVy:F

    mul-float/2addr v5, p1

    iget v6, v3, Lcn/nubia/Particle/Particle;->mAy:F

    mul-float/2addr v6, v8

    mul-float/2addr v6, p1

    mul-float/2addr v6, p1

    add-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, v3, Lcn/nubia/Particle/Particle;->mY:F

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 73
    .end local v3    # "particle":Lcn/nubia/Particle/Particle;
    :cond_2
    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystemRain;->mParticleList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/Particle/Particle;

    .line 75
    .restart local v3    # "particle":Lcn/nubia/Particle/Particle;
    iget v4, v3, Lcn/nubia/Particle/Particle;->mY:F

    iget v5, p0, Lcn/nubia/Particle/ParticleSystemRain;->mHeight:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_3

    .line 76
    iget v4, v3, Lcn/nubia/Particle/Particle;->mX:F

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_3

    .line 77
    iget v4, v3, Lcn/nubia/Particle/Particle;->mX:F

    iget v5, p0, Lcn/nubia/Particle/ParticleSystemRain;->mWidth:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    .line 78
    :cond_3
    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystemRain;->mParticleList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 72
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2
.end method

.method public setLevel(I)V
    .locals 6
    .param p1, "level"    # I

    .prologue
    const/high16 v5, 0x44160000    # 600.0f

    const/high16 v4, 0x43fa0000    # 500.0f

    const/high16 v3, 0x43160000    # 150.0f

    const/high16 v2, 0x42c80000    # 100.0f

    const/4 v1, 0x0

    .line 145
    invoke-super {p0, p1}, Lcn/nubia/Particle/ParticleSystem;->setLevel(I)V

    .line 147
    packed-switch p1, :pswitch_data_0

    .line 229
    const/high16 v0, 0x41700000    # 15.0f

    invoke-virtual {p0, v0}, Lcn/nubia/Particle/ParticleSystemRain;->setDotPerSecond(F)V

    .line 230
    iput v1, p0, Lcn/nubia/Particle/ParticleSystemRain;->mXSpeed:F

    .line 231
    iput v1, p0, Lcn/nubia/Particle/ParticleSystemRain;->mXSpeedOffset:F

    .line 232
    iget v0, p0, Lcn/nubia/Particle/ParticleSystemRain;->mHeightScale:F

    mul-float/2addr v0, v5

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemRain;->mYSpeed:F

    .line 233
    iget v0, p0, Lcn/nubia/Particle/ParticleSystemRain;->mHeightScale:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemRain;->mYSpeedOffset:F

    .line 234
    iget v0, p0, Lcn/nubia/Particle/ParticleSystemRain;->mHeightScale:F

    mul-float/2addr v0, v5

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemRain;->mYAccelerate:F

    .line 238
    :goto_0
    return-void

    .line 149
    :pswitch_0
    const/high16 v0, 0x41700000    # 15.0f

    invoke-virtual {p0, v0}, Lcn/nubia/Particle/ParticleSystemRain;->setDotPerSecond(F)V

    .line 150
    iput v1, p0, Lcn/nubia/Particle/ParticleSystemRain;->mXSpeed:F

    .line 151
    iput v1, p0, Lcn/nubia/Particle/ParticleSystemRain;->mXSpeedOffset:F

    .line 152
    iget v0, p0, Lcn/nubia/Particle/ParticleSystemRain;->mHeightScale:F

    mul-float/2addr v0, v5

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemRain;->mYSpeed:F

    .line 153
    iget v0, p0, Lcn/nubia/Particle/ParticleSystemRain;->mHeightScale:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemRain;->mYSpeedOffset:F

    .line 154
    iget v0, p0, Lcn/nubia/Particle/ParticleSystemRain;->mHeightScale:F

    mul-float/2addr v0, v5

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemRain;->mYAccelerate:F

    goto :goto_0

    .line 159
    :pswitch_1
    const/high16 v0, 0x41f00000    # 30.0f

    invoke-virtual {p0, v0}, Lcn/nubia/Particle/ParticleSystemRain;->setDotPerSecond(F)V

    .line 160
    iput v1, p0, Lcn/nubia/Particle/ParticleSystemRain;->mXSpeed:F

    .line 161
    iput v1, p0, Lcn/nubia/Particle/ParticleSystemRain;->mXSpeedOffset:F

    .line 162
    const/high16 v0, 0x442f0000    # 700.0f

    iget v1, p0, Lcn/nubia/Particle/ParticleSystemRain;->mHeightScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemRain;->mYSpeed:F

    .line 163
    const/high16 v0, 0x43480000    # 200.0f

    iget v1, p0, Lcn/nubia/Particle/ParticleSystemRain;->mHeightScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemRain;->mYSpeedOffset:F

    .line 164
    const/high16 v0, 0x44480000    # 800.0f

    iget v1, p0, Lcn/nubia/Particle/ParticleSystemRain;->mHeightScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemRain;->mYAccelerate:F

    goto :goto_0

    .line 169
    :pswitch_2
    const/high16 v0, 0x42200000    # 40.0f

    invoke-virtual {p0, v0}, Lcn/nubia/Particle/ParticleSystemRain;->setDotPerSecond(F)V

    .line 170
    const/high16 v0, 0x41a00000    # 20.0f

    iget v1, p0, Lcn/nubia/Particle/ParticleSystemRain;->mWidthScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemRain;->mXSpeed:F

    .line 171
    const/high16 v0, 0x42200000    # 40.0f

    iget v1, p0, Lcn/nubia/Particle/ParticleSystemRain;->mWidthScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemRain;->mXSpeedOffset:F

    .line 172
    const v0, 0x44898000    # 1100.0f

    iget v1, p0, Lcn/nubia/Particle/ParticleSystemRain;->mHeightScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemRain;->mYSpeed:F

    .line 173
    iget v0, p0, Lcn/nubia/Particle/ParticleSystemRain;->mHeightScale:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemRain;->mYSpeedOffset:F

    .line 174
    const/high16 v0, 0x447a0000    # 1000.0f

    iget v1, p0, Lcn/nubia/Particle/ParticleSystemRain;->mHeightScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemRain;->mYAccelerate:F

    goto :goto_0

    .line 179
    :pswitch_3
    const/high16 v0, 0x42780000    # 62.0f

    invoke-virtual {p0, v0}, Lcn/nubia/Particle/ParticleSystemRain;->setDotPerSecond(F)V

    .line 180
    const/high16 v0, 0x41a00000    # 20.0f

    iget v1, p0, Lcn/nubia/Particle/ParticleSystemRain;->mWidthScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemRain;->mXSpeed:F

    .line 181
    const/high16 v0, 0x42200000    # 40.0f

    iget v1, p0, Lcn/nubia/Particle/ParticleSystemRain;->mHeightScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemRain;->mXSpeedOffset:F

    .line 182
    const/high16 v0, 0x44af0000    # 1400.0f

    iget v1, p0, Lcn/nubia/Particle/ParticleSystemRain;->mHeightScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemRain;->mYSpeed:F

    .line 183
    const/high16 v0, 0x43480000    # 200.0f

    iget v1, p0, Lcn/nubia/Particle/ParticleSystemRain;->mHeightScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemRain;->mYSpeedOffset:F

    .line 184
    const/high16 v0, 0x44960000    # 1200.0f

    iget v1, p0, Lcn/nubia/Particle/ParticleSystemRain;->mHeightScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemRain;->mYAccelerate:F

    goto/16 :goto_0

    .line 189
    :pswitch_4
    const/high16 v0, 0x42f00000    # 120.0f

    invoke-virtual {p0, v0}, Lcn/nubia/Particle/ParticleSystemRain;->setDotPerSecond(F)V

    .line 190
    iput v1, p0, Lcn/nubia/Particle/ParticleSystemRain;->mXSpeed:F

    .line 191
    iput v1, p0, Lcn/nubia/Particle/ParticleSystemRain;->mXSpeedOffset:F

    .line 192
    const/high16 v0, 0x43c80000    # 400.0f

    iget v1, p0, Lcn/nubia/Particle/ParticleSystemRain;->mHeightScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemRain;->mYSpeed:F

    .line 193
    iget v0, p0, Lcn/nubia/Particle/ParticleSystemRain;->mHeightScale:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemRain;->mYSpeedOffset:F

    .line 194
    iget v0, p0, Lcn/nubia/Particle/ParticleSystemRain;->mHeightScale:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemRain;->mYAccelerate:F

    goto/16 :goto_0

    .line 199
    :pswitch_5
    const/high16 v0, 0x43200000    # 160.0f

    invoke-virtual {p0, v0}, Lcn/nubia/Particle/ParticleSystemRain;->setDotPerSecond(F)V

    .line 200
    iput v1, p0, Lcn/nubia/Particle/ParticleSystemRain;->mXSpeed:F

    .line 201
    iput v1, p0, Lcn/nubia/Particle/ParticleSystemRain;->mXSpeedOffset:F

    .line 202
    const/high16 v0, 0x43e10000    # 450.0f

    iget v1, p0, Lcn/nubia/Particle/ParticleSystemRain;->mHeightScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemRain;->mYSpeed:F

    .line 203
    iget v0, p0, Lcn/nubia/Particle/ParticleSystemRain;->mHeightScale:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemRain;->mYSpeedOffset:F

    .line 204
    iget v0, p0, Lcn/nubia/Particle/ParticleSystemRain;->mHeightScale:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemRain;->mYAccelerate:F

    goto/16 :goto_0

    .line 209
    :pswitch_6
    invoke-virtual {p0, v2}, Lcn/nubia/Particle/ParticleSystemRain;->setDotPerSecond(F)V

    .line 210
    iput v1, p0, Lcn/nubia/Particle/ParticleSystemRain;->mXSpeed:F

    .line 211
    iput v1, p0, Lcn/nubia/Particle/ParticleSystemRain;->mXSpeedOffset:F

    .line 212
    iget v0, p0, Lcn/nubia/Particle/ParticleSystemRain;->mHeightScale:F

    mul-float/2addr v0, v4

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemRain;->mYSpeed:F

    .line 213
    const/high16 v0, 0x41a00000    # 20.0f

    iget v1, p0, Lcn/nubia/Particle/ParticleSystemRain;->mHeightScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemRain;->mYSpeedOffset:F

    .line 214
    iget v0, p0, Lcn/nubia/Particle/ParticleSystemRain;->mHeightScale:F

    mul-float/2addr v0, v4

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemRain;->mYAccelerate:F

    goto/16 :goto_0

    .line 219
    :pswitch_7
    const/high16 v0, 0x42f00000    # 120.0f

    invoke-virtual {p0, v0}, Lcn/nubia/Particle/ParticleSystemRain;->setDotPerSecond(F)V

    .line 220
    iput v1, p0, Lcn/nubia/Particle/ParticleSystemRain;->mXSpeed:F

    .line 221
    iput v1, p0, Lcn/nubia/Particle/ParticleSystemRain;->mXSpeedOffset:F

    .line 222
    iget v0, p0, Lcn/nubia/Particle/ParticleSystemRain;->mHeightScale:F

    mul-float/2addr v0, v4

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemRain;->mYSpeed:F

    .line 223
    const/high16 v0, 0x42a00000    # 80.0f

    iget v1, p0, Lcn/nubia/Particle/ParticleSystemRain;->mHeightScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemRain;->mYSpeedOffset:F

    .line 224
    iget v0, p0, Lcn/nubia/Particle/ParticleSystemRain;->mHeightScale:F

    mul-float/2addr v0, v4

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemRain;->mYAccelerate:F

    goto/16 :goto_0

    .line 147
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
