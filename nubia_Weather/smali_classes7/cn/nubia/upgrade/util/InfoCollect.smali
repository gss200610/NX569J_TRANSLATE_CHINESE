.class public Lcn/nubia/upgrade/util/InfoCollect;
.super Ljava/lang/Object;
.source "InfoCollect.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcn/nubia/upgrade/util/InfoCollect;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/upgrade/util/InfoCollect;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPhoneParameter(Landroid/content/Context;)Ljava/util/Map;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 32
    .local v7, "phoneParameterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    invoke-static {p0}, Lcn/nubia/upgrade/util/CommonUtils;->getMEID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 33
    .local v3, "imei":Ljava/lang/String;
    invoke-static {p0}, Lcn/nubia/upgrade/util/CommonUtils;->getAllImei(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 34
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 35
    .local v0, "_imei":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 36
    move-object v3, v0

    goto :goto_0

    .line 38
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 42
    .end local v0    # "_imei":Ljava/lang/String;
    :cond_1
    const-string v10, "imei"

    invoke-interface {v7, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v10, "imei"

    invoke-static {v10, v3}, Lcn/nubia/upgrade/util/Ulog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v10, "android.os.SystemProperties"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 47
    .local v9, "system":Ljava/lang/Class;
    const-string v10, "get"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 48
    .local v5, "method":Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "ro.build.rom.internal.id"

    aput-object v13, v11, v12

    invoke-virtual {v5, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 50
    .local v8, "rom":Ljava/lang/String;
    const/4 v10, 0x0

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "ro.product.model"

    aput-object v13, v11, v12

    invoke-virtual {v5, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 53
    .local v6, "mobileType":Ljava/lang/String;
    const-string v10, "rom"

    invoke-interface {v7, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v10, "mobile_type"

    invoke-interface {v7, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "imei":Ljava/lang/String;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "mobileType":Ljava/lang/String;
    .end local v8    # "rom":Ljava/lang/String;
    .end local v9    # "system":Ljava/lang/Class;
    :goto_1
    return-object v7

    .line 56
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 58
    const-string v10, "InfoCollect"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getPostApkInfo(Landroid/content/Context;)Lcn/nubia/upgrade/model/PostApkInfo;
    .locals 24
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    const/4 v14, 0x0

    .line 110
    .local v14, "postApkInfo":Lcn/nubia/upgrade/model/PostApkInfo;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x80

    invoke-virtual/range {v20 .. v22}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 113
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v13

    .line 115
    .local v13, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v20, v0

    const-string v21, "unique_key"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    .line 117
    .local v18, "uni_key":Ljava/lang/String;
    iget v0, v13, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v19, v0

    .line 118
    .local v19, "versionCode":I
    iget-object v0, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcn/nubia/upgrade/util/MD5Util;->getFileMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 120
    .local v5, "checkSum":Ljava/lang/String;
    new-instance v15, Lcn/nubia/upgrade/model/PostApkInfo;

    invoke-direct {v15}, Lcn/nubia/upgrade/model/PostApkInfo;-><init>()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_8

    .line 121
    .end local v14    # "postApkInfo":Lcn/nubia/upgrade/model/PostApkInfo;
    .local v15, "postApkInfo":Lcn/nubia/upgrade/model/PostApkInfo;
    :try_start_1
    invoke-virtual {v15, v5}, Lcn/nubia/upgrade/model/PostApkInfo;->setCheckSum(Ljava/lang/String;)V

    .line 122
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcn/nubia/upgrade/model/PostApkInfo;->setUniqueKey(Ljava/lang/String;)V

    .line 123
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcn/nubia/upgrade/model/PostApkInfo;->setVersionCode(I)V

    .line 124
    iget-object v0, v13, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lcn/nubia/upgrade/model/PostApkInfo;->setVersionName(Ljava/lang/String;)V

    .line 125
    const/16 v16, 0x0

    .line 126
    .local v16, "rom":Ljava/lang/String;
    const/4 v12, 0x0

    .line 127
    .local v12, "mobileType":Ljava/lang/String;
    const/4 v8, 0x0

    .line 128
    .local v8, "imei":Ljava/lang/String;
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 129
    .local v9, "jsonObject":Lorg/json/JSONObject;
    const-string v20, "InfoCollect"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "AppPackage"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcn/nubia/upgrade/util/Ulog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 132
    :try_start_2
    invoke-static/range {p0 .. p0}, Lcn/nubia/upgrade/util/CommonUtils;->getMEID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 133
    invoke-static/range {p0 .. p0}, Lcn/nubia/upgrade/util/CommonUtils;->getAllImei(Landroid/content/Context;)Ljava/util/List;

    move-result-object v10

    .line 134
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 135
    .local v3, "_imei":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 136
    move-object v8, v3

    goto :goto_0

    .line 138
    :cond_0
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 142
    .end local v3    # "_imei":Ljava/lang/String;
    :cond_1
    const-string v20, "imei"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    const-string v20, "android.os.SystemProperties"

    invoke-static/range {v20 .. v20}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v17

    .line 146
    .local v17, "system":Ljava/lang/Class;
    const-string v20, "get"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-class v23, Ljava/lang/String;

    aput-object v23, v21, v22

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 147
    .local v11, "method":Ljava/lang/reflect/Method;
    const/16 v20, 0x0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "ro.build.rom.internal.id"

    aput-object v23, v21, v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Ljava/lang/String;

    move-object/from16 v16, v0

    .line 148
    const/16 v20, 0x0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "ro.product.model"

    aput-object v23, v21, v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    .line 149
    const-string v20, "rom"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    const-string v20, "mobile_type"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    :try_start_3
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lcn/nubia/upgrade/model/PostApkInfo;->setPatchValue(Ljava/lang/String;)V

    .line 175
    const-string v20, "InfoCollect"

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcn/nubia/upgrade/util/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "method":Ljava/lang/reflect/Method;
    .end local v17    # "system":Ljava/lang/Class;
    :goto_1
    move-object v14, v15

    .line 185
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "checkSum":Ljava/lang/String;
    .end local v8    # "imei":Ljava/lang/String;
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    .end local v12    # "mobileType":Ljava/lang/String;
    .end local v13    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v15    # "postApkInfo":Lcn/nubia/upgrade/model/PostApkInfo;
    .end local v16    # "rom":Ljava/lang/String;
    .end local v18    # "uni_key":Ljava/lang/String;
    .end local v19    # "versionCode":I
    .restart local v14    # "postApkInfo":Lcn/nubia/upgrade/model/PostApkInfo;
    :goto_2
    return-object v15

    .line 152
    .end local v14    # "postApkInfo":Lcn/nubia/upgrade/model/PostApkInfo;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "checkSum":Ljava/lang/String;
    .restart local v8    # "imei":Ljava/lang/String;
    .restart local v9    # "jsonObject":Lorg/json/JSONObject;
    .restart local v12    # "mobileType":Ljava/lang/String;
    .restart local v13    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v15    # "postApkInfo":Lcn/nubia/upgrade/model/PostApkInfo;
    .restart local v16    # "rom":Ljava/lang/String;
    .restart local v18    # "uni_key":Ljava/lang/String;
    .restart local v19    # "versionCode":I
    :catch_0
    move-exception v6

    .line 154
    .local v6, "e":Ljava/lang/ClassNotFoundException;
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 174
    :try_start_5
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lcn/nubia/upgrade/model/PostApkInfo;->setPatchValue(Ljava/lang/String;)V

    .line 175
    const-string v20, "InfoCollect"

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcn/nubia/upgrade/util/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 178
    .end local v6    # "e":Ljava/lang/ClassNotFoundException;
    .end local v8    # "imei":Ljava/lang/String;
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    .end local v12    # "mobileType":Ljava/lang/String;
    .end local v16    # "rom":Ljava/lang/String;
    :catch_1
    move-exception v6

    move-object v14, v15

    .line 180
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "checkSum":Ljava/lang/String;
    .end local v13    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v15    # "postApkInfo":Lcn/nubia/upgrade/model/PostApkInfo;
    .end local v18    # "uni_key":Ljava/lang/String;
    .end local v19    # "versionCode":I
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v14    # "postApkInfo":Lcn/nubia/upgrade/model/PostApkInfo;
    :goto_3
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 181
    const-string v20, "InfoCollect"

    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const/4 v15, 0x0

    goto :goto_2

    .line 155
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v14    # "postApkInfo":Lcn/nubia/upgrade/model/PostApkInfo;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "checkSum":Ljava/lang/String;
    .restart local v8    # "imei":Ljava/lang/String;
    .restart local v9    # "jsonObject":Lorg/json/JSONObject;
    .restart local v12    # "mobileType":Ljava/lang/String;
    .restart local v13    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v15    # "postApkInfo":Lcn/nubia/upgrade/model/PostApkInfo;
    .restart local v16    # "rom":Ljava/lang/String;
    .restart local v18    # "uni_key":Ljava/lang/String;
    .restart local v19    # "versionCode":I
    :catch_2
    move-exception v6

    .line 157
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    :try_start_6
    invoke-virtual {v6}, Ljava/lang/NoSuchMethodException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 174
    :try_start_7
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lcn/nubia/upgrade/model/PostApkInfo;->setPatchValue(Ljava/lang/String;)V

    .line 175
    const-string v20, "InfoCollect"

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcn/nubia/upgrade/util/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 158
    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v6

    .line 160
    .local v6, "e":Ljava/lang/IllegalAccessException;
    :try_start_8
    invoke-virtual {v6}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 174
    :try_start_9
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lcn/nubia/upgrade/model/PostApkInfo;->setPatchValue(Ljava/lang/String;)V

    .line 175
    const-string v20, "InfoCollect"

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcn/nubia/upgrade/util/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_1

    .line 161
    .end local v6    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v6

    .line 163
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    :try_start_a
    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 174
    :try_start_b
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lcn/nubia/upgrade/model/PostApkInfo;->setPatchValue(Ljava/lang/String;)V

    .line 175
    const-string v20, "InfoCollect"

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcn/nubia/upgrade/util/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_1

    .line 164
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v6

    .line 166
    .local v6, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_c
    invoke-virtual {v6}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 174
    :try_start_d
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lcn/nubia/upgrade/model/PostApkInfo;->setPatchValue(Ljava/lang/String;)V

    .line 175
    const-string v20, "InfoCollect"

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcn/nubia/upgrade/util/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_d} :catch_1

    goto/16 :goto_1

    .line 167
    .end local v6    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_6
    move-exception v6

    .line 169
    .local v6, "e":Lorg/json/JSONException;
    :try_start_e
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 174
    :try_start_f
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lcn/nubia/upgrade/model/PostApkInfo;->setPatchValue(Ljava/lang/String;)V

    .line 175
    const-string v20, "InfoCollect"

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcn/nubia/upgrade/util/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_f} :catch_1

    goto/16 :goto_1

    .line 170
    .end local v6    # "e":Lorg/json/JSONException;
    :catch_7
    move-exception v6

    .line 171
    .local v6, "e":Ljava/lang/Exception;
    :try_start_10
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 172
    const-string v20, "InfoCollect"

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 174
    :try_start_11
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lcn/nubia/upgrade/model/PostApkInfo;->setPatchValue(Ljava/lang/String;)V

    .line 175
    const-string v20, "InfoCollect"

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcn/nubia/upgrade/util/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 174
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v20

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lcn/nubia/upgrade/model/PostApkInfo;->setPatchValue(Ljava/lang/String;)V

    .line 175
    const-string v21, "InfoCollect"

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcn/nubia/upgrade/util/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v20
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_11} :catch_1

    .line 178
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "checkSum":Ljava/lang/String;
    .end local v8    # "imei":Ljava/lang/String;
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    .end local v12    # "mobileType":Ljava/lang/String;
    .end local v13    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v15    # "postApkInfo":Lcn/nubia/upgrade/model/PostApkInfo;
    .end local v16    # "rom":Ljava/lang/String;
    .end local v18    # "uni_key":Ljava/lang/String;
    .end local v19    # "versionCode":I
    .restart local v14    # "postApkInfo":Lcn/nubia/upgrade/model/PostApkInfo;
    :catch_8
    move-exception v6

    goto/16 :goto_3
.end method

.method public static getUniqueKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 68
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 69
    .local v2, "manager":Landroid/content/pm/PackageManager;
    const/16 v4, 0x80

    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 72
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    const-string v3, ""

    .line 74
    .local v3, "uni_key":Ljava/lang/String;
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    .line 75
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "unique_key"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 83
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "manager":Landroid/content/pm/PackageManager;
    .end local v3    # "uni_key":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcn/nubia/upgrade/util/InfoCollect;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUniqueKey exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/upgrade/util/Ulog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 92
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcn/nubia/upgrade/util/InfoCollect;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUniqueKey exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/upgrade/util/Ulog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v2, ""

    goto :goto_0
.end method
