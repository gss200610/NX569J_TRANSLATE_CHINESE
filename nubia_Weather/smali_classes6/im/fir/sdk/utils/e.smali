.class public final Lim/fir/sdk/utils/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "md5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v4, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_1

    aget-byte v5, v2, v1

    const-string v6, "0123456789abcdef"

    and-int/lit16 v7, v5, 0xf0

    shr-int/lit8 v7, v7, 0x4

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "0123456789abcdef"

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
