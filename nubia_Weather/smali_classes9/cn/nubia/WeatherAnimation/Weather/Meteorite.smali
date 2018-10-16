.class public Lcn/nubia/WeatherAnimation/Weather/Meteorite;
.super Lcn/nubia/WeatherAnimation/Weather/DrawElement;
.source "Meteorite.java"


# instance fields
.field private final METEORITE_SIZE:[F

.field private final ROTATE_RADIANS:F

.field private final TEXTRUE_COOR:[[F

.field private mAcceleration:F

.field private mAngle:F

.field private mBitmapHeight:F

.field private mBitmapWidth:F

.field private mCenterX:F

.field private mCenterY:F

.field private mLife:F

.field private mScale:F

.field private mScaleX:F

.field private mSpeed:F

.field private mWeather:Lcn/nubia/WeatherAnimation/Weather/Weather;

.field private point1:Landroid/graphics/PointF;

.field private point2:Landroid/graphics/PointF;

.field private point3:Landroid/graphics/PointF;

.field private point4:Landroid/graphics/PointF;

.field private point5:Landroid/graphics/PointF;

.field private point6:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Lcn/nubia/WeatherAnimation/Weather/Weather;IIFF)V
    .locals 6
    .param p1, "weather"    # Lcn/nubia/WeatherAnimation/Weather/Weather;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "widthScale"    # F
    .param p5, "heightScale"    # F

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 39
    invoke-direct {p0, p2, p3, p4, p5}, Lcn/nubia/WeatherAnimation/Weather/DrawElement;-><init>(IIFF)V

    .line 17
    new-array v0, v4, [[F

    const/4 v1, 0x0

    .line 18
    new-array v2, v5, [F

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 19
    new-array v2, v5, [F

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->TEXTRUE_COOR:[[F

    .line 22
    new-array v0, v4, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->METEORITE_SIZE:[F

    .line 24
    const-wide/high16 v0, -0x3fd2000000000000L    # -15.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->ROTATE_RADIANS:F

    .line 40
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mScale:F

    .line 41
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mScaleX:F

    .line 42
    iput v3, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mSpeed:F

    .line 43
    iput v3, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mAcceleration:F

    .line 44
    iput-object p1, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mWeather:Lcn/nubia/WeatherAnimation/Weather/Weather;

    .line 45
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->point1:Landroid/graphics/PointF;

    .line 46
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->point2:Landroid/graphics/PointF;

    .line 47
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->point3:Landroid/graphics/PointF;

    .line 48
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->point4:Landroid/graphics/PointF;

    .line 49
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->point5:Landroid/graphics/PointF;

    .line 50
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->point6:Landroid/graphics/PointF;

    .line 51
    return-void

    .line 18
    :array_0
    .array-data 4
        0x0
        0x0
        0x3cbb7e32
        0x3f800000    # 1.0f
    .end array-data

    .line 19
    :array_1
    .array-data 4
        0x3cbb7e32
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 22
    :array_2
    .array-data 4
        0x440e0000    # 568.0f
        0x41c00000    # 24.0f
    .end array-data
.end method


# virtual methods
.method public create()V
    .locals 3

    .prologue
    const/16 v2, 0x30

    .line 55
    invoke-super {p0}, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->create()V

    .line 57
    iget v0, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->ROTATE_RADIANS:F

    const v1, 0x3e99999a    # 0.3f

    invoke-static {v0, v1}, Lcn/nubia/Particle/ParticleUtil;->getRandomPercentValue(FF)F

    move-result v0

    iput v0, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mAngle:F

    .line 58
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->METEORITE_SIZE:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v1, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mScale:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mWidthScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mBitmapWidth:F

    .line 59
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->METEORITE_SIZE:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iget v1, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mScale:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mHeightScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mBitmapHeight:F

    .line 61
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mVbb:Ljava/nio/ByteBuffer;

    .line 62
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mVbb:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 63
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mCbb:Ljava/nio/ByteBuffer;

    .line 64
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mCbb:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 65
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-super {p0}, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->destroy()V

    .line 70
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mVbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 71
    iput-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mVbb:Ljava/nio/ByteBuffer;

    .line 72
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mCbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 73
    iput-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mCbb:Ljava/nio/ByteBuffer;

    .line 74
    return-void
.end method

.method public getLife()F
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mLife:F

    return v0
.end method

.method public getSpeed()F
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mSpeed:F

    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)[F
    .locals 13
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 122
    iget v0, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mTextureId:I

    if-nez v0, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 193
    :goto_0
    return-object v0

    .line 127
    :cond_0
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mWeather:Lcn/nubia/WeatherAnimation/Weather/Weather;

    invoke-virtual {v0}, Lcn/nubia/WeatherAnimation/Weather/Weather;->getOffset()F

    move-result v6

    .line 128
    .local v6, "alpha":F
    iget v0, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mHeight:I

    int-to-float v7, v0

    .line 129
    .local v7, "alphaBeginY":F
    const/4 v8, 0x0

    .line 131
    .local v8, "alphaHeight":F
    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, v6, v0

    if-lez v0, :cond_1

    .line 132
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v6

    mul-float/2addr v1, v2

    sub-float v6, v0, v1

    .line 137
    :goto_1
    iget v0, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mAlpha:F

    mul-float/2addr v6, v0

    .line 139
    const/4 v0, 0x0

    cmpl-float v0, v0, v6

    if-nez v0, :cond_2

    .line 141
    const/4 v0, 0x0

    goto :goto_0

    .line 134
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 145
    :cond_2
    const/16 v0, 0xc

    new-array v12, v0, [F

    const/4 v0, 0x0

    .line 146
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->point1:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    aput v1, v12, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->point1:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    aput v1, v12, v0

    const/4 v0, 0x2

    .line 147
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->point2:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    aput v1, v12, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->point2:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    aput v1, v12, v0

    const/4 v0, 0x4

    .line 148
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->point3:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    aput v1, v12, v0

    const/4 v0, 0x5

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->point3:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    aput v1, v12, v0

    const/4 v0, 0x6

    .line 149
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->point4:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    aput v1, v12, v0

    const/4 v0, 0x7

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->point4:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    aput v1, v12, v0

    const/16 v0, 0x8

    .line 150
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->point5:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    aput v1, v12, v0

    const/16 v0, 0x9

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->point5:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    aput v1, v12, v0

    const/16 v0, 0xa

    .line 151
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->point6:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    aput v1, v12, v0

    const/16 v0, 0xb

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->point6:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    aput v1, v12, v0

    .line 154
    .local v12, "vertices":[F
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mVbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v10

    .line 155
    .local v10, "mVertexBuffer":Ljava/nio/FloatBuffer;
    invoke-virtual {v10, v12}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 156
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 158
    const/16 v0, 0xc

    new-array v11, v0, [F

    const/4 v0, 0x0

    .line 159
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->TEXTRUE_COOR:[[F

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v11, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->TEXTRUE_COOR:[[F

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget v1, v1, v2

    aput v1, v11, v0

    const/4 v0, 0x2

    .line 160
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->TEXTRUE_COOR:[[F

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v11, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->TEXTRUE_COOR:[[F

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x3

    aget v1, v1, v2

    aput v1, v11, v0

    const/4 v0, 0x4

    .line 161
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->TEXTRUE_COOR:[[F

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x2

    aget v1, v1, v2

    aput v1, v11, v0

    const/4 v0, 0x5

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->TEXTRUE_COOR:[[F

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget v1, v1, v2

    aput v1, v11, v0

    const/4 v0, 0x6

    .line 162
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->TEXTRUE_COOR:[[F

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x2

    aget v1, v1, v2

    aput v1, v11, v0

    const/4 v0, 0x7

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->TEXTRUE_COOR:[[F

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x3

    aget v1, v1, v2

    aput v1, v11, v0

    const/16 v0, 0x8

    .line 163
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->TEXTRUE_COOR:[[F

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x2

    aget v1, v1, v2

    aput v1, v11, v0

    const/16 v0, 0x9

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->TEXTRUE_COOR:[[F

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget v1, v1, v2

    aput v1, v11, v0

    const/16 v0, 0xa

    .line 164
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->TEXTRUE_COOR:[[F

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x2

    aget v1, v1, v2

    aput v1, v11, v0

    const/16 v0, 0xb

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->TEXTRUE_COOR:[[F

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x3

    aget v1, v1, v2

    aput v1, v11, v0

    .line 167
    .local v11, "texCoor":[F
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mCbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v9

    .line 168
    .local v9, "mTexCoorBuffer":Ljava/nio/FloatBuffer;
    invoke-virtual {v9, v11}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 169
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 171
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mShaderProgram:Lcn/nubia/OpenGL/ShaderProgram;

    iget v0, v0, Lcn/nubia/OpenGL/ShaderProgram;->mId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 172
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mShaderProgram:Lcn/nubia/OpenGL/ShaderProgram;

    iget v0, v0, Lcn/nubia/OpenGL/ShaderProgram;->mAlphaHandle:I

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 173
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mShaderProgram:Lcn/nubia/OpenGL/ShaderProgram;

    iget v0, v0, Lcn/nubia/OpenGL/ShaderProgram;->mAlphaBeginYHandle:I

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 174
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mShaderProgram:Lcn/nubia/OpenGL/ShaderProgram;

    iget v0, v0, Lcn/nubia/OpenGL/ShaderProgram;->mAlphaHeightHandle:I

    invoke-static {v0, v8}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 175
    invoke-static {}, Lcn/nubia/OpenGL/MatrixState;->getVPMatrix()[F

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x42340000    # 45.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 176
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mShaderProgram:Lcn/nubia/OpenGL/ShaderProgram;

    iget v0, v0, Lcn/nubia/OpenGL/ShaderProgram;->mMVPMatrixHandle:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 177
    invoke-static {}, Lcn/nubia/OpenGL/MatrixState;->getVPMatrix()[F

    move-result-object v3

    const/4 v4, 0x0

    .line 176
    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 178
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mShaderProgram:Lcn/nubia/OpenGL/ShaderProgram;

    iget v0, v0, Lcn/nubia/OpenGL/ShaderProgram;->mPositionHandle:I

    const/4 v1, 0x2

    .line 179
    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x8

    move-object v5, v10

    .line 178
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 180
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mShaderProgram:Lcn/nubia/OpenGL/ShaderProgram;

    iget v0, v0, Lcn/nubia/OpenGL/ShaderProgram;->mTexCoorHandle:I

    const/4 v1, 0x2

    .line 181
    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x8

    move-object v5, v9

    .line 180
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 182
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mShaderProgram:Lcn/nubia/OpenGL/ShaderProgram;

    iget v0, v0, Lcn/nubia/OpenGL/ShaderProgram;->mPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 183
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mShaderProgram:Lcn/nubia/OpenGL/ShaderProgram;

    iget v0, v0, Lcn/nubia/OpenGL/ShaderProgram;->mTexCoorHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 184
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 185
    const/16 v0, 0xde1

    iget v1, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mTextureId:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 186
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 187
    const/4 v0, 0x1

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 188
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 189
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 191
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mDrawInfo:[F

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    aput v2, v0, v1

    .line 192
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mDrawInfo:[F

    const/4 v1, 0x1

    iget v2, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mBitmapHeight:F

    iget v3, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mBitmapWidth:F

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 193
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mDrawInfo:[F

    goto/16 :goto_0
.end method

.method public onProcessFrame(F)V
    .locals 10
    .param p1, "time"    # F

    .prologue
    const/4 v9, 0x0

    .line 78
    iget-object v7, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->TEXTRUE_COOR:[[F

    aget-object v7, v7, v9

    const/4 v8, 0x2

    aget v7, v7, v8

    iget-object v8, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->TEXTRUE_COOR:[[F

    aget-object v8, v8, v9

    aget v8, v8, v9

    sub-float v2, v7, v8

    .line 79
    .local v2, "headRatio":F
    iget v7, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mBitmapWidth:F

    mul-float v1, v7, v2

    .line 80
    .local v1, "headLen":F
    iget v7, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mBitmapWidth:F

    sub-float/2addr v7, v1

    iget v8, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mScaleX:F

    mul-float v5, v7, v8

    .line 81
    .local v5, "tailLen":F
    iget v7, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mBitmapHeight:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float v3, v7, v8

    .line 85
    .local v3, "heightHalf":F
    iget v7, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mAngle:F

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v4, v8

    .line 86
    .local v4, "sina":F
    iget v7, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mAngle:F

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v0, v8

    .line 88
    .local v0, "cosa":F
    iget v7, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mSpeed:F

    iget v8, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mAcceleration:F

    mul-float/2addr v8, p1

    add-float/2addr v7, v8

    iput v7, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mSpeed:F

    .line 89
    iget v7, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mSpeed:F

    mul-float/2addr v7, p1

    const/high16 v8, 0x3f000000    # 0.5f

    iget v9, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mAcceleration:F

    mul-float/2addr v8, v9

    mul-float/2addr v8, p1

    mul-float/2addr v8, p1

    add-float v6, v7, v8

    .line 90
    .local v6, "tempS":F
    iget v7, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mCenterX:F

    mul-float v8, v6, v0

    sub-float/2addr v7, v8

    iput v7, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mCenterX:F

    .line 91
    iget v7, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mCenterY:F

    mul-float v8, v6, v4

    sub-float/2addr v7, v8

    iput v7, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mCenterY:F

    .line 93
    iget-object v7, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->point3:Landroid/graphics/PointF;

    iget v8, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mCenterX:F

    mul-float v9, v3, v4

    add-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 94
    iget-object v7, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->point3:Landroid/graphics/PointF;

    iget v8, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mCenterY:F

    mul-float v9, v3, v0

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/PointF;->y:F

    .line 96
    iget-object v7, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->point4:Landroid/graphics/PointF;

    iget v8, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mCenterX:F

    mul-float v9, v3, v4

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 97
    iget-object v7, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->point4:Landroid/graphics/PointF;

    iget v8, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mCenterY:F

    mul-float v9, v3, v0

    add-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/PointF;->y:F

    .line 99
    iget-object v7, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->point1:Landroid/graphics/PointF;

    iget-object v8, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->point3:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    mul-float v9, v1, v0

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 100
    iget-object v7, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->point1:Landroid/graphics/PointF;

    iget-object v8, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->point3:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    mul-float v9, v1, v4

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/PointF;->y:F

    .line 102
    iget-object v7, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->point2:Landroid/graphics/PointF;

    iget-object v8, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->point4:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    mul-float v9, v1, v0

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 103
    iget-object v7, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->point2:Landroid/graphics/PointF;

    iget-object v8, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->point4:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    mul-float v9, v1, v4

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/PointF;->y:F

    .line 105
    iget-object v7, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->point5:Landroid/graphics/PointF;

    iget-object v8, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->point3:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    mul-float v9, v5, v0

    add-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 106
    iget-object v7, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->point5:Landroid/graphics/PointF;

    iget-object v8, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->point3:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    mul-float v9, v5, v4

    add-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/PointF;->y:F

    .line 108
    iget-object v7, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->point6:Landroid/graphics/PointF;

    iget-object v8, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->point4:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    mul-float v9, v5, v0

    add-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/PointF;->x:F

    .line 109
    iget-object v7, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->point6:Landroid/graphics/PointF;

    iget-object v8, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->point4:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    mul-float v9, v5, v4

    add-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/PointF;->y:F

    .line 111
    iget v7, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mLife:F

    add-float/2addr v7, p1

    iput v7, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mLife:F

    .line 112
    return-void
.end method

.method public setAcceleration(F)V
    .locals 0
    .param p1, "acceleration"    # F

    .prologue
    .line 205
    iput p1, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mAcceleration:F

    .line 206
    return-void
.end method

.method public setCenter([F)V
    .locals 1
    .param p1, "center"    # [F

    .prologue
    .line 209
    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mCenterX:F

    .line 210
    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mCenterY:F

    .line 211
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 214
    iput p1, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mScaleX:F

    .line 215
    return-void
.end method

.method public setSpeed(F)V
    .locals 0
    .param p1, "speed"    # F

    .prologue
    .line 201
    iput p1, p0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->mSpeed:F

    .line 202
    return-void
.end method
