.class public final Lcom/loc/m;
.super Ljava/lang/Object;
.source "AuthConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/m$b;,
        Lcom/loc/m$a;
    }
.end annotation


# static fields
.field public static a:I

.field public static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/loc/m;->a:I

    const-string v0, ""

    sput-object v0, Lcom/loc/m;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/loc/u;Ljava/lang/String;)Lcom/loc/m$a;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/loc/u;",
            "Ljava/lang/String;",
            ")",
            "Lcom/loc/m$a;"
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    new-instance v0, Lcom/loc/m$a;

    invoke-direct {v0}, Lcom/loc/m$a;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, v0, Lcom/loc/m$a;->w:Lorg/json/JSONObject;

    :try_start_0
    new-instance v1, Lcom/loc/bl;

    invoke-direct {v1}, Lcom/loc/bl;-><init>()V
    :try_end_0
    .catch Lcom/loc/k; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    new-instance v1, Lcom/loc/m$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ";14N"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Lcom/loc/m$b;-><init>(Landroid/content/Context;Lcom/loc/u;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/loc/m$b;->a()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/loc/bl;->a(Lcom/loc/bq;Z)Lcom/loc/br;
    :try_end_1
    .catch Lcom/loc/k; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v2

    if-eqz v2, :cond_2a

    :try_start_2
    iget-object v4, v2, Lcom/loc/br;->a:[B
    :try_end_2
    .catch Lcom/loc/k; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_b

    :goto_0
    const/16 v1, 0x10

    :try_start_3
    new-array v1, v1, [B

    array-length v6, v4

    add-int/lit8 v6, v6, -0x10

    new-array v6, v6, [B

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x10

    invoke-static {v4, v7, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v7, 0x10

    const/4 v8, 0x0

    array-length v9, v4

    add-int/lit8 v9, v9, -0x10

    invoke-static {v4, v7, v6, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    const-string v8, "AES"

    invoke-direct {v7, v1, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    new-instance v8, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {}, Lcom/loc/v;->b()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v9, 0x2

    invoke-virtual {v1, v9, v7, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v1, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/loc/v;->a([B)Ljava/lang/String;
    :try_end_3
    .catch Lcom/loc/k; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_c

    move-result-object v3

    move-object v1, v3

    move-object v3, v2

    :goto_1
    if-nez v4, :cond_1

    :cond_0
    :goto_2
    return-object v0

    :catch_0
    move-exception v1

    :try_start_4
    throw v1
    :try_end_4
    .catch Lcom/loc/k; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    :catch_1
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    :goto_3
    invoke-virtual {v1}, Lcom/loc/k;->a()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/loc/m$a;->a:Ljava/lang/String;

    const-string v6, "/v3/iasdkauth"

    invoke-static {p1, v6, v1}, Lcom/loc/ab;->a(Lcom/loc/u;Ljava/lang/String;Lcom/loc/k;)V

    move-object v1, v3

    move-object v3, v2

    goto :goto_1

    :catch_2
    move-exception v1

    :try_start_5
    new-instance v1, Lcom/loc/k;

    const-string v2, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v1, v2}, Lcom/loc/k;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catch Lcom/loc/k; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :catch_3
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    :goto_4
    move-object v1, v3

    move-object v3, v2

    goto :goto_1

    :catch_4
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    :goto_5
    const-string v6, "at"

    const-string v7, "lc"

    invoke-static {v1, v6, v7}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    move-object v3, v2

    goto :goto_1

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v4}, Lcom/loc/v;->a([B)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :try_start_6
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "status"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "status"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v10, :cond_6

    const/4 v1, 0x1

    sput v1, Lcom/loc/m;->a:I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    :cond_3
    :try_start_7
    const-string v1, "ver"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "ver"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/loc/m$a;->b:I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6

    :cond_4
    :goto_6
    :try_start_8
    const-string v1, "result"

    invoke-static {v4, v1}, Lcom/loc/v;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/loc/m$a$a;

    invoke-direct {v2}, Lcom/loc/m$a$a;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v2, Lcom/loc/m$a$a;->a:Z

    const/4 v1, 0x0

    iput-boolean v1, v2, Lcom/loc/m$a$a;->b:Z

    iput-object v2, v0, Lcom/loc/m$a;->x:Lcom/loc/m$a$a;

    const-string v1, "result"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    move-result-object v3

    :try_start_9
    const-string v1, ";"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    array-length v1, v4

    if-lez v1, :cond_a

    array-length v6, v4

    move v1, v5

    :goto_7
    if-ge v1, v6, :cond_a

    aget-object v5, v4, v1

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/loc/m$a;->w:Lorg/json/JSONObject;

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_7

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_6
    if-nez v1, :cond_3

    :try_start_a
    const-string v1, "authcsid"

    const-string v2, "authgsid"

    if-eqz v3, :cond_7

    iget-object v1, v3, Lcom/loc/br;->c:Ljava/lang/String;

    iget-object v2, v3, Lcom/loc/br;->d:Ljava/lang/String;

    :cond_7
    invoke-static {p0, v1, v2, v4}, Lcom/loc/v;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 v1, 0x0

    sput v1, Lcom/loc/m;->a:I

    const-string v1, "info"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "info"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/loc/m;->b:Ljava/lang/String;

    :cond_8
    const-string v1, ""

    const-string v3, "infocode"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v1, "infocode"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_9
    const-string v3, "/v3/iasdkauth"

    sget-object v6, Lcom/loc/m;->b:Ljava/lang/String;

    invoke-static {p1, v3, v6, v2, v1}, Lcom/loc/ab;->a(Lcom/loc/u;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/loc/m;->a:I

    if-nez v1, :cond_3

    sget-object v1, Lcom/loc/m;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/loc/m$a;->a:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_2

    :catch_5
    move-exception v1

    const-string v2, "at"

    const-string v3, "lc"

    invoke-static {v1, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_6
    move-exception v1

    :try_start_b
    const-string v2, "at"

    const-string v3, "lc"

    invoke-static {v1, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :catch_7
    move-exception v1

    const-string v4, "at"

    const-string v5, "co"

    invoke-static {v1, v4, v5}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const-string v1, "11K"

    invoke-static {v3, v1}, Lcom/loc/v;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5

    move-result v1

    if-eqz v1, :cond_b

    :try_start_c
    const-string v1, "11K"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "able"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/loc/m;->a(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v2, Lcom/loc/m$a$a;->a:Z

    const-string v4, "off"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "off"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v2, Lcom/loc/m$a$a;->c:Lorg/json/JSONObject;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_8

    :cond_b
    :goto_8
    :try_start_d
    const-string v1, "001"

    invoke-static {v3, v1}, Lcom/loc/v;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "001"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/loc/m$a$d;

    invoke-direct {v2}, Lcom/loc/m$a$d;-><init>()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5

    if-eqz v1, :cond_c

    :try_start_e
    const-string v4, "md5"

    invoke-static {v1, v4}, Lcom/loc/m;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "url"

    invoke-static {v1, v5}, Lcom/loc/m;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sdkversion"

    invoke-static {v1, v6}, Lcom/loc/m;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_9

    move-result v6

    if-eqz v6, :cond_28

    :cond_c
    :goto_9
    :try_start_f
    iput-object v2, v0, Lcom/loc/m$a;->y:Lcom/loc/m$a$d;

    :cond_d
    const-string v1, "002"

    invoke-static {v3, v1}, Lcom/loc/v;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "002"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/loc/m$a$c;

    invoke-direct {v2}, Lcom/loc/m$a$c;-><init>()V

    invoke-static {v1, v2}, Lcom/loc/m;->a(Lorg/json/JSONObject;Lcom/loc/m$a$c;)V

    iput-object v2, v0, Lcom/loc/m$a;->z:Lcom/loc/m$a$c;

    :cond_e
    const-string v1, "14S"

    invoke-static {v3, v1}, Lcom/loc/v;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "14S"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/loc/m$a$c;

    invoke-direct {v2}, Lcom/loc/m$a$c;-><init>()V

    invoke-static {v1, v2}, Lcom/loc/m;->a(Lorg/json/JSONObject;Lcom/loc/m$a$c;)V

    iput-object v2, v0, Lcom/loc/m$a;->A:Lcom/loc/m$a$c;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_5

    :cond_f
    :try_start_10
    const-string v1, "11B"

    invoke-static {v3, v1}, Lcom/loc/v;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "11B"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/m$a;->h:Lorg/json/JSONObject;

    :cond_10
    const-string v1, "11C"

    invoke-static {v3, v1}, Lcom/loc/v;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "11C"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/m$a;->k:Lorg/json/JSONObject;

    :cond_11
    const-string v1, "11I"

    invoke-static {v3, v1}, Lcom/loc/v;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "11I"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/m$a;->l:Lorg/json/JSONObject;

    :cond_12
    const-string v1, "11H"

    invoke-static {v3, v1}, Lcom/loc/v;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "11H"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/m$a;->m:Lorg/json/JSONObject;

    :cond_13
    const-string v1, "11E"

    invoke-static {v3, v1}, Lcom/loc/v;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "11E"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/m$a;->n:Lorg/json/JSONObject;

    :cond_14
    const-string v1, "11F"

    invoke-static {v3, v1}, Lcom/loc/v;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "11F"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/m$a;->o:Lorg/json/JSONObject;

    :cond_15
    const-string v1, "13A"

    invoke-static {v3, v1}, Lcom/loc/v;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "13A"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/m$a;->q:Lorg/json/JSONObject;

    :cond_16
    const-string v1, "13J"

    invoke-static {v3, v1}, Lcom/loc/v;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "13J"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/m$a;->i:Lorg/json/JSONObject;

    :cond_17
    const-string v1, "11G"

    invoke-static {v3, v1}, Lcom/loc/v;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "11G"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/m$a;->p:Lorg/json/JSONObject;

    :cond_18
    const-string v1, "006"

    invoke-static {v3, v1}, Lcom/loc/v;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "006"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/m$a;->r:Lorg/json/JSONObject;

    :cond_19
    const-string v1, "010"

    invoke-static {v3, v1}, Lcom/loc/v;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "010"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/m$a;->s:Lorg/json/JSONObject;

    :cond_1a
    const-string v1, "11Z"

    invoke-static {v3, v1}, Lcom/loc/v;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, "11Z"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/loc/m$a$b;

    invoke-direct {v2}, Lcom/loc/m$a$b;-><init>()V

    invoke-static {v1, v2}, Lcom/loc/m;->a(Lorg/json/JSONObject;Lcom/loc/m$a$b;)V

    iput-object v2, v0, Lcom/loc/m$a;->B:Lcom/loc/m$a$b;

    :cond_1b
    const-string v1, "135"

    invoke-static {v3, v1}, Lcom/loc/v;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v1, "135"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/m$a;->j:Lorg/json/JSONObject;

    :cond_1c
    const-string v1, "13S"

    invoke-static {v3, v1}, Lcom/loc/v;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, "13S"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/m$a;->g:Lorg/json/JSONObject;

    :cond_1d
    const-string v1, "121"

    invoke-static {v3, v1}, Lcom/loc/v;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string v1, "121"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/loc/m$a$b;

    invoke-direct {v2}, Lcom/loc/m$a$b;-><init>()V

    invoke-static {v1, v2}, Lcom/loc/m;->a(Lorg/json/JSONObject;Lcom/loc/m$a$b;)V

    iput-object v2, v0, Lcom/loc/m$a;->C:Lcom/loc/m$a$b;

    :cond_1e
    const-string v1, "122"

    invoke-static {v3, v1}, Lcom/loc/v;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const-string v1, "122"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/loc/m$a$b;

    invoke-direct {v2}, Lcom/loc/m$a$b;-><init>()V

    invoke-static {v1, v2}, Lcom/loc/m;->a(Lorg/json/JSONObject;Lcom/loc/m$a$b;)V

    iput-object v2, v0, Lcom/loc/m$a;->D:Lcom/loc/m$a$b;

    :cond_1f
    const-string v1, "123"

    invoke-static {v3, v1}, Lcom/loc/v;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    const-string v1, "123"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/loc/m$a$b;

    invoke-direct {v2}, Lcom/loc/m$a$b;-><init>()V

    invoke-static {v1, v2}, Lcom/loc/m;->a(Lorg/json/JSONObject;Lcom/loc/m$a$b;)V

    iput-object v2, v0, Lcom/loc/m$a;->E:Lcom/loc/m$a$b;

    :cond_20
    const-string v1, "011"

    invoke-static {v3, v1}, Lcom/loc/v;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v1, "011"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/m$a;->c:Lorg/json/JSONObject;

    :cond_21
    const-string v1, "012"

    invoke-static {v3, v1}, Lcom/loc/v;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    const-string v1, "012"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/m$a;->d:Lorg/json/JSONObject;

    :cond_22
    const-string v1, "013"

    invoke-static {v3, v1}, Lcom/loc/v;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "013"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/m$a;->e:Lorg/json/JSONObject;

    :cond_23
    const-string v1, "014"

    invoke-static {v3, v1}, Lcom/loc/v;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    const-string v1, "014"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/m$a;->f:Lorg/json/JSONObject;

    :cond_24
    const-string v1, "145"

    invoke-static {v3, v1}, Lcom/loc/v;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    const-string v1, "145"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/m$a;->t:Lorg/json/JSONObject;

    :cond_25
    const-string v1, "14B"

    invoke-static {v3, v1}, Lcom/loc/v;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    const-string v1, "14B"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/m$a;->u:Lorg/json/JSONObject;

    :cond_26
    const-string v1, "14D"

    invoke-static {v3, v1}, Lcom/loc/v;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    const-string v1, "14D"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/m$a;->v:Lorg/json/JSONObject;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_a

    :cond_27
    :goto_a
    :try_start_11
    const-string v1, "14N"

    invoke-static {v3, v1}, Lcom/loc/v;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "14N"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/loc/m$a$b;

    invoke-direct {v2}, Lcom/loc/m$a$b;-><init>()V

    const-string v3, "able"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/loc/m;->a(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/loc/m$a$b;->a:Z

    const-string v3, "url"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/m$a$b;->b:Ljava/lang/String;

    const-string v3, "md5"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/loc/m$a$b;->c:Ljava/lang/String;

    iget-boolean v1, v2, Lcom/loc/m$a$b;->a:Z

    if-eqz v1, :cond_29

    invoke-static {}, Lcom/loc/w;->a()Lcom/loc/u;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v3, Lcom/loc/av;

    iget-object v4, v2, Lcom/loc/m$a$b;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/loc/m$a$b;->c:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lcom/loc/av;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/loc/au;

    invoke-direct {v2, p0, v3, v1}, Lcom/loc/au;-><init>(Landroid/content/Context;Lcom/loc/av;Lcom/loc/u;)V

    invoke-virtual {v2}, Lcom/loc/au;->a()V

    goto/16 :goto_2

    :catch_8
    move-exception v1

    const-string v2, "AuthConfigManager"

    const-string v4, "loadException"

    invoke-static {v1, v2, v4}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_5

    goto/16 :goto_8

    :cond_28
    :try_start_12
    iput-object v5, v2, Lcom/loc/m$a$d;->a:Ljava/lang/String;

    iput-object v4, v2, Lcom/loc/m$a$d;->b:Ljava/lang/String;

    iput-object v1, v2, Lcom/loc/m$a$d;->c:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_9

    goto/16 :goto_9

    :catch_9
    move-exception v1

    :try_start_13
    const-string v4, "at"

    const-string v5, "psu"

    invoke-static {v1, v4, v5}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :catch_a
    move-exception v1

    const-string v2, "at"

    const-string v4, "pe"

    invoke-static {v1, v2, v4}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_29
    const-string v1, "aiu"

    invoke-static {p0, v1}, Lcom/loc/aw;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_5

    goto/16 :goto_2

    :catch_b
    move-exception v1

    move-object v4, v3

    goto/16 :goto_5

    :catch_c
    move-exception v1

    goto/16 :goto_5

    :catch_d
    move-exception v1

    move-object v4, v3

    goto/16 :goto_4

    :catch_e
    move-exception v1

    goto/16 :goto_4

    :catch_f
    move-exception v1

    move-object v4, v3

    goto/16 :goto_3

    :catch_10
    move-exception v1

    goto/16 :goto_3

    :cond_2a
    move-object v4, v3

    goto/16 :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_1

    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/loc/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lorg/json/JSONObject;Lcom/loc/m$a$b;)V
    .locals 5

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "m"

    invoke-static {p0, v0}, Lcom/loc/m;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "u"

    invoke-static {p0, v1}, Lcom/loc/m;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "v"

    invoke-static {p0, v2}, Lcom/loc/m;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "able"

    invoke-static {p0, v3}, Lcom/loc/m;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "on"

    invoke-static {p0, v4}, Lcom/loc/m;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v0, p1, Lcom/loc/m$a$b;->c:Ljava/lang/String;

    iput-object v1, p1, Lcom/loc/m$a$b;->b:Ljava/lang/String;

    iput-object v2, p1, Lcom/loc/m$a$b;->d:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v3, v0}, Lcom/loc/m;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Lcom/loc/m$a$b;->a:Z

    const/4 v0, 0x1

    invoke-static {v4, v0}, Lcom/loc/m;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Lcom/loc/m$a$b;->e:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "at"

    const-string v2, "pe"

    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Lcom/loc/m$a$c;)V
    .locals 3

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "md5"

    invoke-static {p0, v0}, Lcom/loc/m;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "url"

    invoke-static {p0, v1}, Lcom/loc/m;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v0, p1, Lcom/loc/m$a$c;->b:Ljava/lang/String;

    iput-object v1, p1, Lcom/loc/m$a$c;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "At"

    const-string v2, "psc"

    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return p1

    :cond_0
    invoke-static {p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    rem-int/lit8 v1, v1, 0x2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v0, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
