.class public Lcn/nubia/OpenGL/OpenGLUtil;
.super Ljava/lang/Object;
.source "OpenGLUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OpenGLUtil"

.field private static mUsedTextureIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/nubia/OpenGL/OpenGLUtil;->mUsedTextureIdList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTexture(Landroid/graphics/Bitmap;)I
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x1

    const v6, 0x46240400    # 10497.0f

    const v5, 0x46180400    # 9729.0f

    const/4 v4, 0x0

    const/16 v3, 0xde1

    .line 15
    const/4 v0, 0x0

    .line 16
    .local v0, "textureId":I
    new-array v1, v2, [I

    .line 18
    .local v1, "textures":[I
    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 19
    aget v0, v1, v4

    .line 20
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 21
    const/16 v2, 0x2801

    invoke-static {v3, v2, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 22
    const/16 v2, 0x2800

    invoke-static {v3, v2, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 23
    const/16 v2, 0x2802

    invoke-static {v3, v2, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 24
    const/16 v2, 0x2803

    invoke-static {v3, v2, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 25
    invoke-static {v3, v4, p0, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 26
    invoke-static {v0}, Lcn/nubia/OpenGL/OpenGLUtil;->addTexturesId(I)V

    .line 27
    return v0
.end method

.method public static addTexturesId(I)V
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 58
    sget-object v0, Lcn/nubia/OpenGL/OpenGLUtil;->mUsedTextureIdList:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method public static clearTexturesId()V
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcn/nubia/OpenGL/OpenGLUtil;->mUsedTextureIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 83
    return-void
.end method

.method public static delTextures(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "textureIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 36
    .local v2, "n":I
    if-gtz v2, :cond_0

    .line 51
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-static {v2}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    .line 42
    .local v1, "idBuffer":Ljava/nio/IntBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v2, :cond_1

    .line 46
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 47
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    .line 48
    invoke-virtual {v1}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 50
    invoke-static {p0}, Lcn/nubia/OpenGL/OpenGLUtil;->delTexturesId(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static delTexturesId(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "textureIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 68
    .local v4, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v4, :cond_0

    .line 79
    return-void

    .line 69
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 70
    .local v1, "id":I
    sget-object v5, Lcn/nubia/OpenGL/OpenGLUtil;->mUsedTextureIdList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 72
    .local v3, "m":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-lt v2, v3, :cond_1

    .line 68
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_1
    sget-object v5, Lcn/nubia/OpenGL/OpenGLUtil;->mUsedTextureIdList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v1, v5, :cond_2

    .line 74
    sget-object v5, Lcn/nubia/OpenGL/OpenGLUtil;->mUsedTextureIdList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 72
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static printTexturesId()V
    .locals 5

    .prologue
    .line 89
    sget-object v3, Lcn/nubia/OpenGL/OpenGLUtil;->mUsedTextureIdList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 90
    .local v1, "n":I
    new-instance v2, Ljava/lang/String;

    const-string v3, "printTexturesId id = ("

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 92
    .local v2, "temp":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 102
    if-lez v1, :cond_0

    .line 103
    const-string v3, "OpenGLUtil"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    return-void

    .line 93
    :cond_1
    add-int/lit8 v3, v1, -0x1

    if-ne v0, v3, :cond_2

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcn/nubia/OpenGL/OpenGLUtil;->mUsedTextureIdList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 92
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcn/nubia/OpenGL/OpenGLUtil;->mUsedTextureIdList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method
