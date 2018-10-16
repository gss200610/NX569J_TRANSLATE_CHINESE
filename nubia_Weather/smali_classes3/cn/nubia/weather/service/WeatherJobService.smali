.class public Lcn/nubia/weather/service/WeatherJobService;
.super Landroid/app/job/JobService;
.source "WeatherJobService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "JobService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static startJobService(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    const/4 v3, 0x0

    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcn/nubia/weather/service/WeatherJobService;

    invoke-direct {v4, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, v3, v4}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 49
    .local v0, "builder":Landroid/app/job/JobInfo$Builder;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 50
    const-string v3, "jobscheduler"

    .line 51
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobScheduler;

    .line 52
    .local v2, "scheduler":Landroid/app/job/JobScheduler;
    const-string v3, "JobService"

    const-string v4, "Schedule JobService"

    invoke-static {v3, v4}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :try_start_0
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "JobService"

    const-string v4, "schedule WeatherJobService exception"

    invoke-static {v3, v4}, Lcn/nubia/weather/utils/ZLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 21
    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    .line 22
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0}, Landroid/app/job/JobService;->onDestroy()V

    .line 28
    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 4
    .param p1, "arg0"    # Landroid/app/job/JobParameters;

    .prologue
    .line 32
    const-string v0, "JobService"

    const-string v1, "Start WeatherJobService"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcn/nubia/weather/service/WeatherJobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "jobServiceKey"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/weather/utils/PreferenceUtils;->setSettingLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 35
    invoke-virtual {p0}, Lcn/nubia/weather/service/WeatherJobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/weather/presenter/OverAllControl;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/presenter/OverAllControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/weather/presenter/OverAllControl;->appStartUpdate()V

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/nubia/weather/service/WeatherJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/app/job/JobParameters;

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method
