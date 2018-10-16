.class public Lcn/nubia/WeatherAnimation/Weather/Cloud;
.super Lcn/nubia/WeatherAnimation/Weather/DrawElement;
.source "Cloud.java"


# instance fields
.field private mDrawRect:Landroid/graphics/RectF;

.field private mDrawRectEx:Landroid/graphics/RectF;

.field private mScale:F

.field private mSpeed:F

.field private mSpeedEx:F

.field private mTextureWidth:F

.field private mTextureXOffset:F

.field private mWeather:Lcn/nubia/WeatherAnimation/Weather/Weather;


# direct methods
.method public constructor <init>(Lcn/nubia/WeatherAnimation/Weather/Weather;IIFF)V
    .locals 1
    .param p1, "weather"    # Lcn/nubia/WeatherAnimation/Weather/Weather;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "widthScale"    # F
    .param p5, "heightScale"    # F

    .prologue
    .line 25
    invoke-direct {p0, p2, p3, p4, p5}, Lcn/nubia/WeatherAnimation/Weather/DrawElement;-><init>(IIFF)V

    .line 26
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mScale:F

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mSpeed:F

    .line 28
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mDrawRect:Landroid/graphics/RectF;

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mDrawRectEx:Landroid/graphics/RectF;

    .line 30
    iput-object p1, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mWeather:Lcn/nubia/WeatherAnimation/Weather/Weather;

    .line 31
    return-void
.end method


# virtual methods
.method public create()V
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 35
    invoke-super {p0}, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->create()V

    .line 37
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mVbb:Ljava/nio/ByteBuffer;

    .line 38
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mVbb:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 39
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mCbb:Ljava/nio/ByteBuffer;

    .line 40
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mCbb:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 42
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mDrawRectEx:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mDrawRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mWidthScale:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mScale:F

    mul-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 43
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mDrawRectEx:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mDrawRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mHeightScale:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mScale:F

    mul-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 44
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mDrawRectEx:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mDrawRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mWidthScale:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mScale:F

    mul-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 45
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mDrawRectEx:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mDrawRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mHeightScale:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mScale:F

    mul-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 47
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mScale:F

    mul-float v0, v1, v2

    .line 50
    .local v0, "bitmapWidth":F
    iget v1, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mWidthScale:F

    mul-float/2addr v0, v1

    .line 51
    iget v1, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mBitmapScale:F

    div-float/2addr v0, v1

    .line 53
    iget v1, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mWidth:I

    int-to-float v1, v1

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1

    .line 54
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mTextureWidth:F

    .line 59
    :goto_0
    iget v1, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mSpeed:F

    iget v2, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mWidthScale:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mSpeed:F

    .line 60
    iget v1, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mTextureWidth:F

    iget v2, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mSpeed:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mSpeedEx:F

    .line 62
    .end local v0    # "bitmapWidth":F
    :cond_0
    return-void

    .line 56
    .restart local v0    # "bitmapWidth":F
    :cond_1
    iget v1, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    iput v1, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mTextureWidth:F

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-super {p0}, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->destroy()V

    .line 67
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mVbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 68
    iput-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mVbb:Ljava/nio/ByteBuffer;

    .line 69
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mCbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 70
    iput-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mCbb:Ljava/nio/ByteBuffer;

    .line 71
    return-void
.end method

.method public getSpeed()F
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mSpeed:F

    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)[F
    .locals 18
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 90
    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mTextureId:I

    if-nez v1, :cond_0

    .line 92
    const/4 v1, 0x0

    .line 156
    :goto_0
    return-object v1

    .line 95
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mWeather:Lcn/nubia/WeatherAnimation/Weather/Weather;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/Weather/Weather;->getOffset()F

    move-result v13

    .line 96
    .local v13, "alpha":F
    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mHeight:I

    int-to-float v14, v1

    .line 97
    .local v14, "alphaBeginY":F
    const/4 v15, 0x0

    .line 99
    .local v15, "alphaHeight":F
    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v1, v13, v1

    if-lez v1, :cond_1

    .line 100
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v13

    mul-float/2addr v2, v3

    sub-float v13, v1, v2

    .line 105
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mAlpha:F

    mul-float/2addr v13, v1

    .line 107
    const/4 v1, 0x0

    cmpl-float v1, v1, v13

    if-nez v1, :cond_2

    .line 109
    const/4 v1, 0x0

    goto :goto_0

    .line 102
    :cond_1
    const/4 v13, 0x0

    goto :goto_1

    .line 113
    :cond_2
    const/16 v1, 0x8

    new-array v0, v1, [F

    move-object/from16 v17, v0

    const/4 v1, 0x0

    .line 114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mDrawRectEx:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    aput v2, v17, v1

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mDrawRectEx:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    aput v2, v17, v1

    const/4 v1, 0x2

    .line 115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mDrawRectEx:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    aput v2, v17, v1

    const/4 v1, 0x3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mDrawRectEx:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    aput v2, v17, v1

    const/4 v1, 0x4

    .line 116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mDrawRectEx:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    aput v2, v17, v1

    const/4 v1, 0x5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mDrawRectEx:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    aput v2, v17, v1

    const/4 v1, 0x6

    .line 117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mDrawRectEx:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    aput v2, v17, v1

    const/4 v1, 0x7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mDrawRectEx:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    aput v2, v17, v1

    .line 120
    .local v17, "vertices":[F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mVbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    .line 121
    .local v6, "mVertexBuffer":Ljava/nio/FloatBuffer;
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 122
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 124
    const/16 v1, 0x8

    new-array v0, v1, [F

    move-object/from16 v16, v0

    const/4 v1, 0x0

    .line 125
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mTextureXOffset:F

    aput v2, v16, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v16, v1

    const/4 v1, 0x2

    .line 126
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mTextureXOffset:F

    aput v2, v16, v1

    const/4 v1, 0x3

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v16, v1

    const/4 v1, 0x4

    .line 127
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mTextureXOffset:F

    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mTextureWidth:F

    add-float/2addr v2, v3

    aput v2, v16, v1

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput v2, v16, v1

    const/4 v1, 0x6

    .line 128
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mTextureXOffset:F

    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mTextureWidth:F

    add-float/2addr v2, v3

    aput v2, v16, v1

    const/4 v1, 0x7

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v16, v1

    .line 131
    .local v16, "texCoor":[F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mCbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v12

    .line 132
    .local v12, "mTexCoorBuffer":Ljava/nio/FloatBuffer;
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 133
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 135
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mShaderProgram:Lcn/nubia/OpenGL/ShaderProgram;

    iget v1, v1, Lcn/nubia/OpenGL/ShaderProgram;->mId:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 136
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mShaderProgram:Lcn/nubia/OpenGL/ShaderProgram;

    iget v1, v1, Lcn/nubia/OpenGL/ShaderProgram;->mAlphaHandle:I

    invoke-static {v1, v13}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 137
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mShaderProgram:Lcn/nubia/OpenGL/ShaderProgram;

    iget v1, v1, Lcn/nubia/OpenGL/ShaderProgram;->mAlphaBeginYHandle:I

    invoke-static {v1, v14}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 138
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mShaderProgram:Lcn/nubia/OpenGL/ShaderProgram;

    iget v1, v1, Lcn/nubia/OpenGL/ShaderProgram;->mAlphaHeightHandle:I

    invoke-static {v1, v15}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 139
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mShaderProgram:Lcn/nubia/OpenGL/ShaderProgram;

    iget v1, v1, Lcn/nubia/OpenGL/ShaderProgram;->mMVPMatrixHandle:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 140
    invoke-static {}, Lcn/nubia/OpenGL/MatrixState;->getVPMatrix()[F

    move-result-object v4

    const/4 v5, 0x0

    .line 139
    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 141
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mShaderProgram:Lcn/nubia/OpenGL/ShaderProgram;

    iget v1, v1, Lcn/nubia/OpenGL/ShaderProgram;->mPositionHandle:I

    const/4 v2, 0x2

    .line 142
    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    .line 141
    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 143
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mShaderProgram:Lcn/nubia/OpenGL/ShaderProgram;

    iget v7, v1, Lcn/nubia/OpenGL/ShaderProgram;->mTexCoorHandle:I

    const/4 v8, 0x2

    .line 144
    const/16 v9, 0x1406

    const/4 v10, 0x0

    const/16 v11, 0x8

    .line 143
    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mShaderProgram:Lcn/nubia/OpenGL/ShaderProgram;

    iget v1, v1, Lcn/nubia/OpenGL/ShaderProgram;->mPositionHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 146
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mShaderProgram:Lcn/nubia/OpenGL/ShaderProgram;

    iget v1, v1, Lcn/nubia/OpenGL/ShaderProgram;->mTexCoorHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 147
    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 148
    const/16 v1, 0xde1

    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mTextureId:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 149
    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 150
    const/4 v1, 0x1

    const/16 v2, 0x303

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 151
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 152
    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 154
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mDrawInfo:[F

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    aput v3, v1, v2

    .line 155
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mDrawInfo:[F

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mDrawRectEx:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mDrawRectEx:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v3, v4

    aput v3, v1, v2

    .line 156
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mDrawInfo:[F

    goto/16 :goto_0
.end method

.method public onProcessFrame(F)V
    .locals 2
    .param p1, "time"    # F

    .prologue
    .line 76
    const/4 v0, 0x0

    iget v1, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mSpeedEx:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 77
    iget v0, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mTextureXOffset:F

    iget v1, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mSpeedEx:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mTextureXOffset:F

    .line 78
    iget v0, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mTextureXOffset:F

    const/high16 v1, 0x3f800000    # 1.0f

    rem-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mTextureXOffset:F

    .line 80
    :cond_0
    return-void
.end method

.method public setDrawRect(FFFF)V
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 160
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mDrawRect:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->left:F

    .line 161
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mDrawRect:Landroid/graphics/RectF;

    iput p2, v0, Landroid/graphics/RectF;->top:F

    .line 162
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mDrawRect:Landroid/graphics/RectF;

    iput p3, v0, Landroid/graphics/RectF;->right:F

    .line 163
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mDrawRect:Landroid/graphics/RectF;

    iput p4, v0, Landroid/graphics/RectF;->bottom:F

    .line 164
    return-void
.end method

.method public setSpeed(F)V
    .locals 2
    .param p1, "speed"    # F

    .prologue
    const/4 v1, 0x0

    .line 171
    cmpl-float v0, v1, p1

    if-nez v0, :cond_0

    .line 172
    iput v1, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mTextureXOffset:F

    .line 175
    :cond_0
    iput p1, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mSpeed:F

    .line 176
    return-void
.end method

.method public setTextureXOffset(F)V
    .locals 2
    .param p1, "x"    # F

    .prologue
    const/4 v1, 0x0

    .line 179
    iput p1, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mTextureXOffset:F

    .line 181
    iget v0, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mSpeed:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_0

    .line 182
    iput v1, p0, Lcn/nubia/WeatherAnimation/Weather/Cloud;->mTextureXOffset:F

    .line 184
    :cond_0
    return-void
.end method
