.class public Lcn/nubia/upgrade/util/CommonUtils;
.super Ljava/lang/Object;
.source "CommonUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CommonUtils"

.field private static mCommonUtils:Lcn/nubia/upgrade/util/CommonUtils;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method private checkSDCard()Z
    .locals 2

    .prologue
    .line 163
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static doExec(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    .line 301
    const-string v5, "\n"

    .line 303
    .local v5, "s":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 304
    .local v4, "p":Ljava/lang/Process;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 306
    .local v2, "in":Ljava/io/BufferedReader;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 307
    .local v1, "error":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 308
    .local v3, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 309
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 311
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 312
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_1

    .line 314
    .end local v1    # "error":Ljava/io/BufferedReader;
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "p":Ljava/lang/Process;
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 316
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 318
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    return-object v5
.end method

.method private genParmsString(ZLjava/util/Map;)Ljava/lang/String;
    .locals 10
    .param p1, "isGet"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 255
    .local p2, "parmsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 256
    .local v4, "parameterBuffer":Ljava/lang/StringBuffer;
    if-eqz p2, :cond_7

    .line 257
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 258
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 259
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 260
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 261
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 263
    .local v5, "value":Ljava/lang/Object;
    instance-of v8, v5, Ljava/util/Collection;

    if-eqz v8, :cond_1

    .line 264
    check-cast v5, Ljava/util/Collection;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-interface {v5}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v5

    .line 267
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->isArray()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 268
    check-cast v5, [Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, [Ljava/lang/Object;

    .line 269
    .local v6, "valueArray":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v8, v6

    if-ge v1, v8, :cond_6

    .line 270
    aget-object v8, v6, v1

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 271
    .local v7, "valueItem":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 272
    const-string v8, "utf-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 274
    :cond_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 275
    add-int/lit8 v8, v1, 0x1

    array-length v9, v6

    if-ge v8, v9, :cond_3

    .line 276
    const-string v8, "&"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 269
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 280
    .end local v1    # "i":I
    .end local v6    # "valueArray":[Ljava/lang/Object;
    .end local v7    # "valueItem":Ljava/lang/String;
    :cond_4
    if-eqz p1, :cond_5

    .line 281
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "utf-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 283
    :cond_5
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 286
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 287
    const-string v8, "&"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 291
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v3    # "key":Ljava/lang/String;
    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public static getAllImei(Landroid/content/Context;)Ljava/util/List;
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 338
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .local v2, "allImeis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "config.pre_primary_slot"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 341
    .local v16, "primarySlot":I
    const-string v17, "CommonUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "primarySlot="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcn/nubia/upgrade/util/Ulog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v17, "android.telephony.TelephonyManager"

    invoke-static/range {v17 .. v17}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 343
    .local v3, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v17, "CommonUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "clz="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcn/nubia/upgrade/util/Ulog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v14, v0, [Ljava/lang/Class;

    const/16 v17, 0x0

    const-class v18, Landroid/content/Context;

    aput-object v18, v14, v17

    .line 345
    .local v14, "paramType":[Ljava/lang/Class;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v15, v0, [Ljava/lang/Object;

    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    aput-object v18, v15, v17

    .line 346
    .local v15, "params":[Ljava/lang/Object;
    invoke-virtual {v3, v14}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 347
    .local v4, "constructor":Ljava/lang/reflect/Constructor;
    invoke-virtual {v4, v15}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 348
    .local v11, "instance":Ljava/lang/Object;
    const-string v17, "CommonUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "instance="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcn/nubia/upgrade/util/Ulog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v17, "isMultiSimEnabled"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 351
    .local v13, "isMultiSimEnabledMethod":Ljava/lang/reflect/Method;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v13, v11, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Boolean;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 353
    .local v12, "isMultiSimEnabled":Z
    const-string v17, "CommonUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "isMultiSimEnabled = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcn/nubia/upgrade/util/Ulog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v17, "getImei"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v20, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 356
    .local v6, "getImeiMethod1":Ljava/lang/reflect/Method;
    const-string v17, "getImei"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 358
    .local v7, "getImeiMethod2":Ljava/lang/reflect/Method;
    if-eqz v12, :cond_3

    .line 359
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v6, v11, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 360
    .local v9, "imei1":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 361
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    :cond_0
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    if-nez v16, :cond_2

    const/16 v17, 0x1

    :goto_0
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v6, v11, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 365
    .local v10, "imei2":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1

    invoke-interface {v2, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 366
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    .end local v3    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v6    # "getImeiMethod1":Ljava/lang/reflect/Method;
    .end local v7    # "getImeiMethod2":Ljava/lang/reflect/Method;
    .end local v9    # "imei1":Ljava/lang/String;
    .end local v10    # "imei2":Ljava/lang/String;
    .end local v11    # "instance":Ljava/lang/Object;
    .end local v12    # "isMultiSimEnabled":Z
    .end local v13    # "isMultiSimEnabledMethod":Ljava/lang/reflect/Method;
    .end local v14    # "paramType":[Ljava/lang/Class;
    .end local v15    # "params":[Ljava/lang/Object;
    .end local v16    # "primarySlot":I
    :cond_1
    :goto_1
    return-object v2

    .line 364
    .restart local v3    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "constructor":Ljava/lang/reflect/Constructor;
    .restart local v6    # "getImeiMethod1":Ljava/lang/reflect/Method;
    .restart local v7    # "getImeiMethod2":Ljava/lang/reflect/Method;
    .restart local v9    # "imei1":Ljava/lang/String;
    .restart local v11    # "instance":Ljava/lang/Object;
    .restart local v12    # "isMultiSimEnabled":Z
    .restart local v13    # "isMultiSimEnabledMethod":Ljava/lang/reflect/Method;
    .restart local v14    # "paramType":[Ljava/lang/Class;
    .restart local v15    # "params":[Ljava/lang/Object;
    .restart local v16    # "primarySlot":I
    :cond_2
    const/16 v17, 0x0

    goto :goto_0

    .line 369
    .end local v9    # "imei1":Ljava/lang/String;
    :cond_3
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v7, v11, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 370
    .local v8, "imei":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1

    invoke-interface {v2, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 371
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 375
    .end local v3    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v6    # "getImeiMethod1":Ljava/lang/reflect/Method;
    .end local v7    # "getImeiMethod2":Ljava/lang/reflect/Method;
    .end local v8    # "imei":Ljava/lang/String;
    .end local v11    # "instance":Ljava/lang/Object;
    .end local v12    # "isMultiSimEnabled":Z
    .end local v13    # "isMultiSimEnabledMethod":Ljava/lang/reflect/Method;
    .end local v14    # "paramType":[Ljava/lang/Class;
    .end local v15    # "params":[Ljava/lang/Object;
    .end local v16    # "primarySlot":I
    :catch_0
    move-exception v5

    .line 376
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 377
    const-string v17, "CommonUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "exceoption="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcn/nubia/upgrade/util/Ulog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getInstance()Lcn/nubia/upgrade/util/CommonUtils;
    .locals 2

    .prologue
    .line 60
    sget-object v0, Lcn/nubia/upgrade/util/CommonUtils;->mCommonUtils:Lcn/nubia/upgrade/util/CommonUtils;

    if-nez v0, :cond_0

    .line 61
    const-class v1, Lcn/nubia/upgrade/util/CommonUtils;

    monitor-enter v1

    .line 62
    :try_start_0
    new-instance v0, Lcn/nubia/upgrade/util/CommonUtils;

    invoke-direct {v0}, Lcn/nubia/upgrade/util/CommonUtils;-><init>()V

    sput-object v0, Lcn/nubia/upgrade/util/CommonUtils;->mCommonUtils:Lcn/nubia/upgrade/util/CommonUtils;

    .line 63
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_0
    sget-object v0, Lcn/nubia/upgrade/util/CommonUtils;->mCommonUtils:Lcn/nubia/upgrade/util/CommonUtils;

    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getMEID(Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 383
    const/4 v5, 0x0

    .line 385
    .local v5, "meid":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "config.pre_primary_slot"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 386
    .local v7, "primarySlot":I
    const-string v8, "cn.nubia.telframeadapter.common.NBTelephonyManager"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 387
    .local v1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v8, "getDefault"

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 388
    .local v6, "method":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 390
    .local v4, "instance":Ljava/lang/Object;
    const-string v8, "getMeid"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    invoke-virtual {v1, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 391
    .local v3, "getMeidMethod":Ljava/lang/reflect/Method;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v3, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 392
    const-string v8, "CommonUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "meid = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcn/nubia/upgrade/util/Ulog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    .end local v1    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "getMeidMethod":Ljava/lang/reflect/Method;
    .end local v4    # "instance":Ljava/lang/Object;
    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v7    # "primarySlot":I
    :goto_0
    return-object v5

    .line 393
    :catch_0
    move-exception v2

    .line 394
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 395
    const-string v8, "CommonUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exceoption="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcn/nubia/upgrade/util/Ulog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public decodeResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "authId"    # Ljava/lang/String;
    .param p3, "authKey"    # Ljava/lang/String;

    .prologue
    .line 207
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 208
    :cond_0
    const/4 v3, 0x0

    .line 221
    :goto_0
    return-object v3

    .line 211
    :cond_1
    const-string v3, ""

    .line 212
    .local v3, "temp":Ljava/lang/String;
    new-instance v2, Lcn/nubia/upgrade/util/encode/format/AesFormatDataImpl;

    invoke-direct {v2}, Lcn/nubia/upgrade/util/encode/format/AesFormatDataImpl;-><init>()V

    .line 215
    .local v2, "formatData":Lcn/nubia/upgrade/util/encode/format/FormatData;
    move-object v0, p2

    .line 217
    .local v0, "authIv":Ljava/lang/String;
    :try_start_0
    invoke-interface {v2, p1, p3, v0}, Lcn/nubia/upgrade/util/encode/format/FormatData;->decodeOuput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcn/nubia/upgrade/util/encode/InterceptorClientException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 218
    :catch_0
    move-exception v1

    .line 219
    .local v1, "e":Lcn/nubia/upgrade/util/encode/InterceptorClientException;
    invoke-virtual {v1}, Lcn/nubia/upgrade/util/encode/InterceptorClientException;->printStackTrace()V

    goto :goto_0
.end method

.method public encodeParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p2, "authId"    # Ljava/lang/String;
    .param p3, "authKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/upgrade/util/encode/InterceptorClientException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 244
    .local p1, "parameterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Lcn/nubia/upgrade/util/encode/format/AesFormatDataImpl;

    invoke-direct {v1}, Lcn/nubia/upgrade/util/encode/format/AesFormatDataImpl;-><init>()V

    .line 247
    .local v1, "formatData":Lcn/nubia/upgrade/util/encode/format/FormatData;
    move-object v0, p2

    .line 248
    .local v0, "authIv":Ljava/lang/String;
    const-string v2, "auth_token_id"

    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    invoke-interface {v1, p1, p3, v0}, Lcn/nubia/upgrade/util/encode/format/FormatData;->encodeParms(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const/4 v2, 0x0

    invoke-direct {p0, v2, p1}, Lcn/nubia/upgrade/util/CommonUtils;->genParmsString(ZLjava/util/Map;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getCacheFreeSize(Landroid/content/Context;)J
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 150
    const/4 v2, 0x0

    .line 151
    .local v2, "cachePath":Ljava/lang/String;
    invoke-direct {p0}, Lcn/nubia/upgrade/util/CommonUtils;->checkSDCard()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 152
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 156
    :goto_0
    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 157
    .local v3, "statFs":Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v0, v6

    .line 158
    .local v0, "blockSize":J
    invoke-virtual {v3}, Landroid/os/StatFs;->getFreeBlocks()I

    move-result v6

    int-to-long v4, v6

    .line 159
    .local v4, "freeBlocks":J
    mul-long v6, v0, v4

    const/16 v8, 0x14

    shr-long/2addr v6, v8

    return-wide v6

    .line 154
    .end local v0    # "blockSize":J
    .end local v3    # "statFs":Landroid/os/StatFs;
    .end local v4    # "freeBlocks":J
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "savefolder"    # Ljava/lang/String;

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "cachePath":Ljava/lang/String;
    const/4 v3, 0x0

    .line 91
    .local v3, "tmpPath":Ljava/lang/String;
    invoke-direct {p0}, Lcn/nubia/upgrade/util/CommonUtils;->checkSDCard()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 103
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .local v1, "dir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 106
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_0

    .line 107
    const-string v4, "CommonUtils"

    const-string v5, "tmp Mkdir Failure!!!"

    invoke-static {v4, v5}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_0
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 111
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 112
    const-string v4, "CommonUtils"

    const-string v5, "ReName PathDir Failure!!!"

    invoke-static {v4, v5}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const/4 v0, 0x0

    .line 118
    .end local v0    # "cachePath":Ljava/lang/String;
    :cond_1
    return-object v0

    .line 98
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .restart local v0    # "cachePath":Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public getDefaultPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 126
    .local v1, "previousPolicy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 129
    const/4 v0, 0x0

    .line 131
    .local v0, "path":Ljava/lang/String;
    invoke-direct {p0}, Lcn/nubia/upgrade/util/CommonUtils;->checkSDCard()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Upgrade"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    :goto_0
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 139
    :cond_0
    const-string v2, "CommonUtils"

    const-string v3, "Get Default Path Error!!!"

    invoke-static {v2, v3}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_1
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 144
    return-object v0

    .line 135
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Upgrade"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public initParam(Lcn/nubia/upgrade/model/PostApkInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "info"    # Lcn/nubia/upgrade/model/PostApkInfo;
    .param p2, "authId"    # Ljava/lang/String;
    .param p3, "authKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/upgrade/util/encode/InterceptorClientException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 225
    new-instance v1, Lcn/nubia/upgrade/util/encode/format/AesFormatDataImpl;

    invoke-direct {v1}, Lcn/nubia/upgrade/util/encode/format/AesFormatDataImpl;-><init>()V

    .line 228
    .local v1, "formatData":Lcn/nubia/upgrade/util/encode/format/FormatData;
    move-object v0, p2

    .line 230
    .local v0, "authIv":Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 231
    .local v2, "parameterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "version_code"

    invoke-virtual {p1}, Lcn/nubia/upgrade/model/PostApkInfo;->getVersionCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v3, "version_name"

    invoke-virtual {p1}, Lcn/nubia/upgrade/model/PostApkInfo;->getVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v3, "check_sum"

    invoke-virtual {p1}, Lcn/nubia/upgrade/model/PostApkInfo;->getCheckSum()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v3, "unique_key"

    invoke-virtual {p1}, Lcn/nubia/upgrade/model/PostApkInfo;->getUniqueKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string v3, "patch_value"

    invoke-virtual {p1}, Lcn/nubia/upgrade/model/PostApkInfo;->getJsonPatchValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v3, "auth_token_id"

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    invoke-interface {v1, v2, p3, v0}, Lcn/nubia/upgrade/util/encode/format/FormatData;->encodeParms(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const/4 v3, 0x0

    invoke-direct {p0, v3, v2}, Lcn/nubia/upgrade/util/CommonUtils;->genParmsString(ZLjava/util/Map;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public isFileExist(Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 199
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    :cond_0
    const/4 v1, 0x0

    .line 203
    :goto_0
    return v1

    .line 202
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 203
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    goto :goto_0
.end method

.method public isMobileConnected(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 77
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 79
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isNewVersionApkExist(Lcn/nubia/upgrade/http/DownloadRequest;)Z
    .locals 6
    .param p1, "result"    # Lcn/nubia/upgrade/http/DownloadRequest;

    .prologue
    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "exist":Z
    if-eqz p1, :cond_0

    .line 177
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/nubia/upgrade/http/DownloadRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcn/nubia/upgrade/http/DownloadRequest;->getSaveFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "mDownLoadFilePath":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcn/nubia/upgrade/util/CommonUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 180
    invoke-static {v2}, Lcn/nubia/upgrade/util/MD5Util;->getFileMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, "md5File":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 182
    const/4 v0, 0x0

    .line 195
    .end local v0    # "exist":Z
    .end local v2    # "mDownLoadFilePath":Ljava/lang/String;
    .end local v3    # "md5File":Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 184
    .restart local v0    # "exist":Z
    .restart local v2    # "mDownLoadFilePath":Ljava/lang/String;
    .restart local v3    # "md5File":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/upgrade/http/DownloadRequest;->getCheckSumNew()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 185
    const/4 v0, 0x1

    goto :goto_0

    .line 188
    :cond_2
    if-nez v0, :cond_0

    .line 189
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public isStorageEnough(J)Z
    .locals 9
    .param p1, "need"    # J

    .prologue
    .line 326
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    .line 327
    .local v2, "previousPolicy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 329
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v4

    const-wide/32 v6, 0x100000

    div-long v0, v4, v6

    .line 330
    .local v0, "aviableSize":J
    const-string v3, "CommonUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isStorageEnough aviableSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " need size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/upgrade/util/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 333
    const-wide/16 v4, 0x64

    add-long/2addr v4, p1

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isWifiConnected(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 69
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 70
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 72
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
