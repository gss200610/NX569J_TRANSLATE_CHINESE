.class public Lcn/nubia/weather/utils/NetUtil;
.super Ljava/lang/Object;
.source "NetUtil.java"


# static fields
.field public static final NETWORN_MOBILE:I = 0x2

.field public static final NETWORN_NONE:I = 0x0

.field public static final NETWORN_WIFI:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNetworkState(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    const-string v4, "connectivity"

    .line 15
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 17
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    .line 18
    .local v1, "state":Landroid/net/NetworkInfo$State;
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, v4, :cond_0

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v1, v4, :cond_2

    :cond_0
    move v2, v3

    .line 26
    :cond_1
    :goto_0
    return v2

    .line 22
    :cond_2
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    .line 23
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, v3, :cond_3

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v1, v3, :cond_1

    .line 24
    :cond_3
    const/4 v2, 0x2

    goto :goto_0
.end method

.method public static getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-static {p0}, Lcn/nubia/weather/utils/NetUtil;->getNetworkState(Landroid/content/Context;)I

    move-result v0

    .line 31
    .local v0, "netState":I
    const/4 v1, 0x0

    .line 32
    .local v1, "type":Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    .line 43
    :goto_0
    return-object v1

    .line 34
    :pswitch_0
    const-string v1, "NETWORN_WIFI"

    .line 35
    goto :goto_0

    .line 37
    :pswitch_1
    const-string v1, "NETWORN_MOBILE"

    .line 38
    goto :goto_0

    .line 40
    :pswitch_2
    const-string v1, "NETWORN_NONE"

    goto :goto_0

    .line 32
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
