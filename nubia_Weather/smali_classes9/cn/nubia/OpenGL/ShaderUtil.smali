.class public Lcn/nubia/OpenGL/ShaderUtil;
.super Ljava/lang/Object;
.source "ShaderUtil.java"


# static fields
.field public static final SHADER_ALPHA:I = 0x0

.field public static final SHADER_BG:I = 0x2

.field public static final SHADER_HIDDEN_ALPHA:I = 0x1

.field public static final SHADER_MAX:I = 0x4

.field public static final SHADER_NAME:[[Ljava/lang/String;

.field public static final SHADER_THUNDER:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ShaderUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [[Ljava/lang/String;

    .line 19
    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "vertex_alpha.sh"

    aput-object v2, v1, v4

    const-string v2, "frag_alpha.sh"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    .line 20
    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "vertex_hidden_alpha.sh"

    aput-object v2, v1, v4

    const-string v2, "frag_alpha.sh"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    .line 21
    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "vertex_bg.sh"

    aput-object v2, v1, v4

    const-string v2, "frag_bg.sh"

    aput-object v2, v1, v5

    aput-object v1, v0, v3

    const/4 v1, 0x3

    .line 22
    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "vertex_thunder.sh"

    aput-object v3, v2, v4

    const-string v3, "frag_thunder.sh"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    .line 18
    sput-object v0, Lcn/nubia/OpenGL/ShaderUtil;->SHADER_NAME:[[Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkGlError(Ljava/lang/String;)V
    .locals 4
    .param p0, "op"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .local v0, "error":I
    if-eqz v0, :cond_0

    .line 86
    const-string v1, "ShaderUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    :cond_0
    return-void
.end method

.method public static createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "vertexSource"    # Ljava/lang/String;
    .param p1, "fragmentSource"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 47
    const v5, 0x8b31

    invoke-static {v5, p0}, Lcn/nubia/OpenGL/ShaderUtil;->loadShader(ILjava/lang/String;)I

    move-result v3

    .line 49
    .local v3, "vertexShader":I
    if-nez v3, :cond_1

    move v2, v4

    .line 79
    :cond_0
    :goto_0
    return v2

    .line 53
    :cond_1
    const v5, 0x8b30

    invoke-static {v5, p1}, Lcn/nubia/OpenGL/ShaderUtil;->loadShader(ILjava/lang/String;)I

    move-result v0

    .line 55
    .local v0, "fragShader":I
    if-nez v0, :cond_2

    move v2, v4

    .line 56
    goto :goto_0

    .line 59
    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 61
    .local v2, "program":I
    if-eqz v2, :cond_0

    .line 62
    new-array v1, v6, [I

    .line 64
    .local v1, "linkStatus":[I
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 65
    const-string v5, "glAttachShader"

    invoke-static {v5}, Lcn/nubia/OpenGL/ShaderUtil;->checkGlError(Ljava/lang/String;)V

    .line 66
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 67
    const-string v5, "glAttachShader"

    invoke-static {v5}, Lcn/nubia/OpenGL/ShaderUtil;->checkGlError(Ljava/lang/String;)V

    .line 68
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 69
    const v5, 0x8b82

    invoke-static {v2, v5, v1, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 71
    aget v4, v1, v4

    if-eq v4, v6, :cond_0

    .line 72
    const-string v4, "ShaderUtil"

    const-string v5, "Could not link program: "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v4, "ShaderUtil"

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 75
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static loadFromAssetsFile(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 9
    .param p0, "fname"    # Ljava/lang/String;
    .param p1, "r"    # Landroid/content/res/Resources;

    .prologue
    .line 92
    const/4 v5, 0x0

    .line 95
    .local v5, "result":Ljava/lang/String;
    const/4 v2, 0x0

    .line 96
    .local v2, "ch":I
    :try_start_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 97
    .local v4, "in":Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 99
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v7, -0x1

    if-ne v2, v7, :cond_0

    .line 103
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 104
    .local v1, "buff":[B
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 105
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 106
    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v6, v1, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v5    # "result":Ljava/lang/String;
    .local v6, "result":Ljava/lang/String;
    :try_start_1
    const-string v7, "\\r\\n"

    const-string v8, "\n"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 111
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buff":[B
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v6    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 100
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :cond_0
    :try_start_2
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 108
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 109
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 108
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "result":Ljava/lang/String;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "buff":[B
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v6    # "result":Ljava/lang/String;
    :catch_1
    move-exception v3

    move-object v5, v6

    .end local v6    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    goto :goto_2
.end method

.method public static loadShader(ILjava/lang/String;)I
    .locals 5
    .param p0, "shaderType"    # I
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 26
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 28
    .local v1, "shader":I
    if-eqz v1, :cond_0

    .line 29
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 31
    .local v0, "compiled":[I
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 32
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 33
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 35
    aget v2, v0, v3

    if-nez v2, :cond_0

    .line 36
    const-string v2, "ShaderUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not compile shader "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const-string v2, "ShaderUtil"

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 39
    const/4 v1, 0x0

    .line 43
    .end local v0    # "compiled":[I
    :cond_0
    return v1
.end method
