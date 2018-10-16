.class Lcn/nubia/weather/ui/activity/CityListActivity$CityListHandler;
.super Landroid/os/Handler;
.source "CityListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/ui/activity/CityListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CityListHandler"
.end annotation


# instance fields
.field mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/nubia/weather/ui/activity/CityListActivity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcn/nubia/weather/ui/activity/CityListActivity;


# direct methods
.method public constructor <init>(Lcn/nubia/weather/ui/activity/CityListActivity;)V
    .locals 0

    .prologue
    .line 940
    iput-object p1, p0, Lcn/nubia/weather/ui/activity/CityListActivity$CityListHandler;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 941
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v6, 0x0

    .line 945
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 977
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 978
    return-void

    .line 952
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 953
    .local v2, "getMsgTime":J
    const/4 v0, 0x0

    .line 954
    .local v0, "cityName":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity$CityListHandler;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    iget-object v4, p0, Lcn/nubia/weather/ui/activity/CityListActivity$CityListHandler;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    invoke-static {v4}, Lcn/nubia/weather/ui/activity/CityListActivity;->access$1400(Lcn/nubia/weather/ui/activity/CityListActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v4

    .line 955
    invoke-virtual {v4}, Lcn/nubia/weather/data/DataCenter;->getLocationWeather()Lcn/nubia/weather/model/WeatherModel;

    move-result-object v4

    .line 954
    invoke-static {v1, v4}, Lcn/nubia/weather/ui/activity/CityListActivity;->access$1302(Lcn/nubia/weather/ui/activity/CityListActivity;Lcn/nubia/weather/model/WeatherModel;)Lcn/nubia/weather/model/WeatherModel;

    .line 956
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity$CityListHandler;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    invoke-static {v1}, Lcn/nubia/weather/ui/activity/CityListActivity;->access$1300(Lcn/nubia/weather/ui/activity/CityListActivity;)Lcn/nubia/weather/model/WeatherModel;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity$CityListHandler;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    .line 957
    invoke-static {v1}, Lcn/nubia/weather/ui/activity/CityListActivity;->access$1300(Lcn/nubia/weather/ui/activity/CityListActivity;)Lcn/nubia/weather/model/WeatherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity$CityListHandler;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    .line 958
    invoke-static {v1}, Lcn/nubia/weather/ui/activity/CityListActivity;->access$1300(Lcn/nubia/weather/ui/activity/CityListActivity;)Lcn/nubia/weather/model/WeatherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 959
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity$CityListHandler;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    invoke-static {v1}, Lcn/nubia/weather/ui/activity/CityListActivity;->access$1300(Lcn/nubia/weather/ui/activity/CityListActivity;)Lcn/nubia/weather/model/WeatherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v0

    .line 960
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity$CityListHandler;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    invoke-static {v1}, Lcn/nubia/weather/ui/activity/CityListActivity;->access$1500(Lcn/nubia/weather/ui/activity/CityListActivity;)V

    .line 964
    :goto_1
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity$CityListHandler;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    invoke-static {v1}, Lcn/nubia/weather/ui/activity/CityListActivity;->access$1600(Lcn/nubia/weather/ui/activity/CityListActivity;)J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    .line 965
    invoke-static {v0}, Lcn/nubia/weather/utils/ReYunUtils;->onOpenLocation(Ljava/lang/String;)V

    .line 966
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity$CityListHandler;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    invoke-static {v1, v6, v7}, Lcn/nubia/weather/ui/activity/CityListActivity;->access$1602(Lcn/nubia/weather/ui/activity/CityListActivity;J)J

    .line 969
    :cond_1
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity$CityListHandler;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    invoke-static {v1}, Lcn/nubia/weather/ui/activity/CityListActivity;->access$300(Lcn/nubia/weather/ui/activity/CityListActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 970
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity$CityListHandler;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    invoke-static {v1}, Lcn/nubia/weather/ui/activity/CityListActivity;->access$200(Lcn/nubia/weather/ui/activity/CityListActivity;)Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->updateData()V

    .line 971
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity$CityListHandler;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcn/nubia/weather/ui/activity/CityListActivity;->access$1700(Lcn/nubia/weather/ui/activity/CityListActivity;Z)V

    goto :goto_0

    .line 962
    :cond_2
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity$CityListHandler;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    invoke-static {v1}, Lcn/nubia/weather/ui/activity/CityListActivity;->access$1200(Lcn/nubia/weather/ui/activity/CityListActivity;)V

    goto :goto_1

    .line 945
    :pswitch_data_0
    .packed-switch 0x130000
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
