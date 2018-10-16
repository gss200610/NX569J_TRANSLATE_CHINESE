.class public Lcn/nubia/weather/utils/ToastUtil;
.super Ljava/lang/Object;
.source "ToastUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ToastUtil"

.field private static toast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isForeground()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 32
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v4

    const-string v7, "activity"

    invoke-virtual {v4, v7}, Lcn/nubia/weather/app/WeatherApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 34
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 35
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 36
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 37
    .local v2, "cpn":Landroid/content/ComponentName;
    const-string v1, ""

    .line 38
    .local v1, "className":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 39
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 41
    :cond_0
    const-string v4, "cn.nubia.weather.ui.activity.MainActivity"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "cn.nubia.weather.ui.activity.CityListActivity"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "cn.nubia.weather.ui.activity.CityAddActivity"

    .line 42
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move v4, v5

    .line 46
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "cpn":Landroid/content/ComponentName;
    :goto_0
    return v4

    :cond_2
    move v4, v6

    goto :goto_0
.end method

.method public static showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 19
    invoke-static {}, Lcn/nubia/weather/utils/ToastUtil;->isForeground()Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    const-string v0, "ToastUtil"

    const-string v1, "not in Foreground, do not sent toast"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :goto_0
    return-void

    .line 23
    :cond_0
    sget-object v0, Lcn/nubia/weather/utils/ToastUtil;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_1

    .line 24
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcn/nubia/weather/utils/ToastUtil;->toast:Landroid/widget/Toast;

    .line 28
    :goto_1
    sget-object v0, Lcn/nubia/weather/utils/ToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 26
    :cond_1
    sget-object v0, Lcn/nubia/weather/utils/ToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
