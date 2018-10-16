.class public Lcn/nubia/upgrade/model/ReportResponse;
.super Ljava/lang/Object;
.source "ReportResponse.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private code:I

.field private data:Ljava/lang/String;

.field private message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcn/nubia/upgrade/model/ReportResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/upgrade/model/ReportResponse;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isOK(Ljava/lang/String;)Z
    .locals 8
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 39
    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 40
    :cond_0
    sget-object v5, Lcn/nubia/upgrade/model/ReportResponse;->TAG:Ljava/lang/String;

    const-string v6, "Json Null or Empty!!!"

    invoke-static {v5, v6}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_1
    :goto_0
    return v4

    .line 45
    :cond_2
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 46
    .local v3, "object":Lorg/json/JSONObject;
    const-string v5, "code"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 48
    .local v0, "code":I
    const-string v5, "message"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "msg":Ljava/lang/String;
    sget-object v5, Lcn/nubia/upgrade/model/ReportResponse;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "response message:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/upgrade/util/Ulog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    if-nez v0, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    .line 52
    .end local v0    # "code":I
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 55
    sget-object v5, Lcn/nubia/upgrade/model/ReportResponse;->TAG:Ljava/lang/String;

    const-string v6, "ParseJson Error!!!"

    invoke-static {v5, v6}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcn/nubia/upgrade/model/ReportResponse;->code:I

    return v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcn/nubia/upgrade/model/ReportResponse;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcn/nubia/upgrade/model/ReportResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 22
    iput p1, p0, Lcn/nubia/upgrade/model/ReportResponse;->code:I

    .line 23
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcn/nubia/upgrade/model/ReportResponse;->data:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcn/nubia/upgrade/model/ReportResponse;->message:Ljava/lang/String;

    .line 29
    return-void
.end method
