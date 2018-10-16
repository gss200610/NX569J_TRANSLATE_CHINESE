.class Lcn/nubia/weather/ui/view/WeatherPageFragment$ActivityHandler;
.super Landroid/os/Handler;
.source "WeatherPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/ui/view/WeatherPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/ui/view/WeatherPageFragment;


# direct methods
.method private constructor <init>(Lcn/nubia/weather/ui/view/WeatherPageFragment;)V
    .locals 0

    .prologue
    .line 1378
    iput-object p1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment$ActivityHandler;->this$0:Lcn/nubia/weather/ui/view/WeatherPageFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/weather/ui/view/WeatherPageFragment;Lcn/nubia/weather/ui/view/WeatherPageFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/weather/ui/view/WeatherPageFragment;
    .param p2, "x1"    # Lcn/nubia/weather/ui/view/WeatherPageFragment$1;

    .prologue
    .line 1378
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/view/WeatherPageFragment$ActivityHandler;-><init>(Lcn/nubia/weather/ui/view/WeatherPageFragment;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 1382
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1383
    const/4 v2, 0x0

    .line 1384
    .local v2, "obj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 1385
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v2    # "obj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast v2, Ljava/util/Map;

    .line 1387
    .restart local v2    # "obj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v0, 0x0

    .line 1388
    .local v0, "areaID":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1389
    .local v1, "cityName":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1390
    const-string v3, "KEY_MAP_AREAID"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "areaID":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1391
    .restart local v0    # "areaID":Ljava/lang/String;
    const-string v3, "KEY_MAP_CITYNAME"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cityName":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1393
    .restart local v1    # "cityName":Ljava/lang/String;
    :cond_1
    if-nez v0, :cond_2

    .line 1394
    const-string v0, ""

    .line 1396
    :cond_2
    if-nez v1, :cond_3

    .line 1397
    const-string v1, ""

    .line 1402
    :cond_3
    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment$ActivityHandler;->this$0:Lcn/nubia/weather/ui/view/WeatherPageFragment;

    invoke-static {v3}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->access$500(Lcn/nubia/weather/ui/view/WeatherPageFragment;)Lcn/nubia/weather/model/WeatherModel;

    move-result-object v3

    if-nez v3, :cond_5

    .line 1444
    :cond_4
    :goto_0
    :pswitch_0
    return-void

    .line 1405
    :cond_5
    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment$ActivityHandler;->this$0:Lcn/nubia/weather/ui/view/WeatherPageFragment;

    invoke-static {v3}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->access$500(Lcn/nubia/weather/ui/view/WeatherPageFragment;)Lcn/nubia/weather/model/WeatherModel;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment$ActivityHandler;->this$0:Lcn/nubia/weather/ui/view/WeatherPageFragment;

    .line 1406
    invoke-static {v3}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->access$500(Lcn/nubia/weather/ui/view/WeatherPageFragment;)Lcn/nubia/weather/model/WeatherModel;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1409
    :cond_6
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 1411
    :pswitch_2
    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment$ActivityHandler;->this$0:Lcn/nubia/weather/ui/view/WeatherPageFragment;

    invoke-virtual {v3, v4}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setAnimationListener(Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$IAnimationStopCallBack;)V

    .line 1412
    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment$ActivityHandler;->this$0:Lcn/nubia/weather/ui/view/WeatherPageFragment;

    invoke-virtual {v3}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->stopAnimation()Z

    goto :goto_0

    .line 1418
    :pswitch_3
    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment$ActivityHandler;->this$0:Lcn/nubia/weather/ui/view/WeatherPageFragment;

    invoke-virtual {v3, v4}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setAnimationListener(Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$IAnimationStopCallBack;)V

    .line 1419
    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment$ActivityHandler;->this$0:Lcn/nubia/weather/ui/view/WeatherPageFragment;

    invoke-virtual {v3}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->stopAnimation()Z

    .line 1420
    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment$ActivityHandler;->this$0:Lcn/nubia/weather/ui/view/WeatherPageFragment;

    invoke-static {v3}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->access$600(Lcn/nubia/weather/ui/view/WeatherPageFragment;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment$ActivityHandler;->this$0:Lcn/nubia/weather/ui/view/WeatherPageFragment;

    .line 1421
    invoke-static {v4}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->access$600(Lcn/nubia/weather/ui/view/WeatherPageFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900bb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1420
    invoke-static {v3, v4}, Lcn/nubia/weather/utils/ToastUtil;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1428
    :pswitch_4
    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment$ActivityHandler;->this$0:Lcn/nubia/weather/ui/view/WeatherPageFragment;

    invoke-virtual {v3, v4}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setAnimationListener(Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$IAnimationStopCallBack;)V

    .line 1429
    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment$ActivityHandler;->this$0:Lcn/nubia/weather/ui/view/WeatherPageFragment;

    invoke-virtual {v3}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->stopAnimation()Z

    .line 1430
    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment$ActivityHandler;->this$0:Lcn/nubia/weather/ui/view/WeatherPageFragment;

    invoke-static {v3}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->access$500(Lcn/nubia/weather/ui/view/WeatherPageFragment;)Lcn/nubia/weather/model/WeatherModel;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment$ActivityHandler;->this$0:Lcn/nubia/weather/ui/view/WeatherPageFragment;

    invoke-static {v3}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->access$500(Lcn/nubia/weather/ui/view/WeatherPageFragment;)Lcn/nubia/weather/model/WeatherModel;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/weather/model/WeatherModel;->isWeatherInfoEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1431
    :cond_7
    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment$ActivityHandler;->this$0:Lcn/nubia/weather/ui/view/WeatherPageFragment;

    invoke-static {v3}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->access$600(Lcn/nubia/weather/ui/view/WeatherPageFragment;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment$ActivityHandler;->this$0:Lcn/nubia/weather/ui/view/WeatherPageFragment;

    .line 1432
    invoke-static {v4}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->access$600(Lcn/nubia/weather/ui/view/WeatherPageFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900bc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1431
    invoke-static {v3, v4}, Lcn/nubia/weather/utils/ToastUtil;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1436
    :pswitch_5
    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment$ActivityHandler;->this$0:Lcn/nubia/weather/ui/view/WeatherPageFragment;

    invoke-virtual {v3, v4}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setAnimationListener(Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$IAnimationStopCallBack;)V

    .line 1437
    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment$ActivityHandler;->this$0:Lcn/nubia/weather/ui/view/WeatherPageFragment;

    invoke-virtual {v3}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->stopAnimation()Z

    .line 1438
    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment$ActivityHandler;->this$0:Lcn/nubia/weather/ui/view/WeatherPageFragment;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->access$702(Lcn/nubia/weather/ui/view/WeatherPageFragment;Z)Z

    .line 1439
    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment$ActivityHandler;->this$0:Lcn/nubia/weather/ui/view/WeatherPageFragment;

    invoke-static {v3}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->access$800(Lcn/nubia/weather/ui/view/WeatherPageFragment;)V

    goto/16 :goto_0

    .line 1409
    nop

    :pswitch_data_0
    .packed-switch 0x100000
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method
