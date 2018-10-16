.class public Lim/fir/sdk/version/AppVersion;
.super Ljava/lang/Object;


# static fields
.field public static final APP_STORE_VERSION:I = 0x1

.field public static final FIR_VERSION:I


# instance fields
.field private mChangeLog:Ljava/lang/String;

.field private mUpdateUrl:Ljava/lang/String;

.field private mVersionCode:I

.field private mVersionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Lim/fir/sdk/version/AppVersion;
    .locals 1

    invoke-static {p0}, Lim/fir/sdk/version/AppVersion;->buildFIRJson(Ljava/lang/String;)Lim/fir/sdk/version/AppVersion;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Lim/fir/sdk/version/AppVersion;
    .locals 1

    invoke-static {p0}, Lim/fir/sdk/version/AppVersion;->buildWandoujiaJson(Ljava/lang/String;)Lim/fir/sdk/version/AppVersion;

    move-result-object v0

    return-object v0
.end method

.method private static buildFIRJson(Ljava/lang/String;)Lim/fir/sdk/version/AppVersion;
    .locals 6

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "0"

    const-string v2, "NULL"

    const-string v1, "NULL"

    const-string v3, "NULL"

    const-string v5, "changelog"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "changelog"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v3, "changelog"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    const-string v5, "versionShort"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "versionShort"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v2, "versionShort"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    const-string v5, "installUrl"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "installUrl"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v1, "installUrl"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    const-string v5, "version"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "version"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v0, "version"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    new-instance v0, Lim/fir/sdk/version/AppVersion;

    invoke-direct {v0}, Lim/fir/sdk/version/AppVersion;-><init>()V

    invoke-direct {v0, v3}, Lim/fir/sdk/version/AppVersion;->setChangeLog(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lim/fir/sdk/version/AppVersion;->setUpdateUrl(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Lim/fir/sdk/version/AppVersion;->setVersionCode(I)V

    invoke-direct {v0, v2}, Lim/fir/sdk/version/AppVersion;->setVersionName(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static buildWandoujiaJson(Ljava/lang/String;)Lim/fir/sdk/version/AppVersion;
    .locals 7

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const-string v2, "NULL"

    const-string v1, "NULL"

    const-string v0, "NULL"

    const-string v5, "app"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "app"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "app"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "latestApk"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "versionName"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "versionName"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v2, "versionName"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    const-string v6, "downloadUrl"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "downloadUrl"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v1, "downloadUrl"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v6, "url"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string v6, "versionCode"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "versionCode"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v3, "versionCode"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    :cond_2
    const-string v5, "app"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "changelog"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "changelog"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v0, "changelog"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    :goto_0
    new-instance v0, Lim/fir/sdk/version/AppVersion;

    invoke-direct {v0}, Lim/fir/sdk/version/AppVersion;-><init>()V

    invoke-direct {v0, v1}, Lim/fir/sdk/version/AppVersion;->setChangeLog(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lim/fir/sdk/version/AppVersion;->setUpdateUrl(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Lim/fir/sdk/version/AppVersion;->setVersionCode(I)V

    invoke-direct {v0, v3}, Lim/fir/sdk/version/AppVersion;->setVersionName(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_0
.end method

.method public static checkFIRVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lim/fir/sdk/callback/VersionCheckCallback;)V
    .locals 3

    invoke-static {}, Lim/fir/sdk/data/a;->a()Lim/fir/sdk/data/a;

    move-result-object v0

    new-instance v1, Lim/fir/sdk/version/AppVersion$1;

    invoke-direct {v1, p0, p3}, Lim/fir/sdk/version/AppVersion$1;-><init>(Landroid/content/Context;Lim/fir/sdk/callback/VersionCheckCallback;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lim/fir/sdk/data/a;->a(Lim/fir/sdk/callback/FIRResultCallback;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static checkStoreVersion(Landroid/content/Context;Ljava/lang/String;Lim/fir/sdk/callback/VersionCheckCallback;)V
    .locals 4

    invoke-static {}, Lim/fir/sdk/data/a;->a()Lim/fir/sdk/data/a;

    move-result-object v0

    new-instance v1, Lim/fir/sdk/version/AppVersion$2;

    invoke-direct {v1, p0, p2}, Lim/fir/sdk/version/AppVersion$2;-><init>(Landroid/content/Context;Lim/fir/sdk/callback/VersionCheckCallback;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v2, v3}, Lim/fir/sdk/data/a;->a(Lim/fir/sdk/callback/FIRResultCallback;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private setChangeLog(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lim/fir/sdk/version/AppVersion;->mChangeLog:Ljava/lang/String;

    return-void
.end method

.method private setUpdateUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lim/fir/sdk/version/AppVersion;->mUpdateUrl:Ljava/lang/String;

    return-void
.end method

.method private setVersionCode(I)V
    .locals 0

    iput p1, p0, Lim/fir/sdk/version/AppVersion;->mVersionCode:I

    return-void
.end method

.method private setVersionName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lim/fir/sdk/version/AppVersion;->mVersionName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getChangeLog()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lim/fir/sdk/version/AppVersion;->mChangeLog:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lim/fir/sdk/version/AppVersion;->mUpdateUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lim/fir/sdk/version/AppVersion;->mVersionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lim/fir/sdk/version/AppVersion;->mVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "versionName: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/fir/sdk/version/AppVersion;->mVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  versionCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/fir/sdk/version/AppVersion;->mVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n changeLog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/fir/sdk/version/AppVersion;->mChangeLog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n updateUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/fir/sdk/version/AppVersion;->mUpdateUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
