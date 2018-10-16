.class Lcn/nubia/weather/presenter/OverAllControl$1$1;
.super Ljava/lang/Object;
.source "OverAllControl.java"

# interfaces
.implements Lcn/nubia/weather/task/WeatherTask$TaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/presenter/OverAllControl$1;->onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/weather/presenter/OverAllControl$1;

.field final synthetic val$cityName:Ljava/lang/String;

.field final synthetic val$districtName:Ljava/lang/String;

.field final synthetic val$model:Lcn/nubia/weather/model/WeatherModel;

.field final synthetic val$type:Lcn/nubia/weather/app/Constant$OperationType;


# direct methods
.method constructor <init>(Lcn/nubia/weather/presenter/OverAllControl$1;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/weather/model/WeatherModel;Lcn/nubia/weather/app/Constant$OperationType;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/weather/presenter/OverAllControl$1;

    .prologue
    .line 517
    iput-object p1, p0, Lcn/nubia/weather/presenter/OverAllControl$1$1;->this$1:Lcn/nubia/weather/presenter/OverAllControl$1;

    iput-object p2, p0, Lcn/nubia/weather/presenter/OverAllControl$1$1;->val$districtName:Ljava/lang/String;

    iput-object p3, p0, Lcn/nubia/weather/presenter/OverAllControl$1$1;->val$cityName:Ljava/lang/String;

    iput-object p4, p0, Lcn/nubia/weather/presenter/OverAllControl$1$1;->val$model:Lcn/nubia/weather/model/WeatherModel;

    iput-object p5, p0, Lcn/nubia/weather/presenter/OverAllControl$1$1;->val$type:Lcn/nubia/weather/app/Constant$OperationType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doException(Ljava/util/Map;Lokhttp3/Response;)V
    .locals 3
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokhttp3/Response;",
            ")V"
        }
    .end annotation

    .prologue
    .line 591
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl$1$1;->this$1:Lcn/nubia/weather/presenter/OverAllControl$1;

    iget-object v0, v0, Lcn/nubia/weather/presenter/OverAllControl$1;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    const v1, 0x100001

    iget-object v2, p0, Lcn/nubia/weather/presenter/OverAllControl$1$1;->this$1:Lcn/nubia/weather/presenter/OverAllControl$1;

    iget-object v2, v2, Lcn/nubia/weather/presenter/OverAllControl$1;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    iget-object v2, v2, Lcn/nubia/weather/presenter/OverAllControl;->mListenerOperationType:Lcn/nubia/weather/app/Constant$OperationType;

    invoke-static {v0, v1, v2}, Lcn/nubia/weather/presenter/OverAllControl;->access$200(Lcn/nubia/weather/presenter/OverAllControl;ILcn/nubia/weather/app/Constant$OperationType;)V

    .line 592
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl$1$1;->val$model:Lcn/nubia/weather/model/WeatherModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl$1$1;->val$model:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 593
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl$1$1;->this$1:Lcn/nubia/weather/presenter/OverAllControl$1;

    iget-object v0, v0, Lcn/nubia/weather/presenter/OverAllControl$1;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl$1$1;->val$model:Lcn/nubia/weather/model/WeatherModel;

    iget-object v2, p0, Lcn/nubia/weather/presenter/OverAllControl$1$1;->val$type:Lcn/nubia/weather/app/Constant$OperationType;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/weather/presenter/OverAllControl;->queryWeatherWithTimeThreshold(Lcn/nubia/weather/model/WeatherModel;Lcn/nubia/weather/app/Constant$OperationType;)V

    .line 595
    :cond_0
    return-void
.end method

.method public doFail(Ljava/util/Map;Lokhttp3/Response;)V
    .locals 3
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokhttp3/Response;",
            ")V"
        }
    .end annotation

    .prologue
    .line 579
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "OverAllControl"

    const-string v1, "getAreaID fail"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl$1$1;->this$1:Lcn/nubia/weather/presenter/OverAllControl$1;

    iget-object v0, v0, Lcn/nubia/weather/presenter/OverAllControl$1;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    const v1, 0x100001

    iget-object v2, p0, Lcn/nubia/weather/presenter/OverAllControl$1$1;->this$1:Lcn/nubia/weather/presenter/OverAllControl$1;

    iget-object v2, v2, Lcn/nubia/weather/presenter/OverAllControl$1;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    iget-object v2, v2, Lcn/nubia/weather/presenter/OverAllControl;->mListenerOperationType:Lcn/nubia/weather/app/Constant$OperationType;

    invoke-static {v0, v1, v2}, Lcn/nubia/weather/presenter/OverAllControl;->access$200(Lcn/nubia/weather/presenter/OverAllControl;ILcn/nubia/weather/app/Constant$OperationType;)V

    .line 581
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl$1$1;->val$model:Lcn/nubia/weather/model/WeatherModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl$1$1;->val$model:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 582
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl$1$1;->this$1:Lcn/nubia/weather/presenter/OverAllControl$1;

    iget-object v0, v0, Lcn/nubia/weather/presenter/OverAllControl$1;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl$1$1;->val$model:Lcn/nubia/weather/model/WeatherModel;

    iget-object v2, p0, Lcn/nubia/weather/presenter/OverAllControl$1$1;->val$type:Lcn/nubia/weather/app/Constant$OperationType;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/weather/presenter/OverAllControl;->queryWeatherWithTimeThreshold(Lcn/nubia/weather/model/WeatherModel;Lcn/nubia/weather/app/Constant$OperationType;)V

    .line 584
    :cond_0
    if-eqz p2, :cond_1

    .line 585
    invoke-virtual {p2}, Lokhttp3/Response;->close()V

    .line 587
    :cond_1
    return-void
.end method

.method public doSuccess(Ljava/util/Map;Lokhttp3/Response;)V
    .locals 13
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokhttp3/Response;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const v12, 0x100001

    .line 521
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v10

    .line 522
    .local v10, "result":Ljava/lang/String;
    invoke-static {v10}, Lcn/nubia/weather/model/CityModel;->buildForHuaFengWithSingleCity(Ljava/lang/String;)Lcn/nubia/weather/model/CityModel;

    move-result-object v6

    .line 523
    .local v6, "cityModel":Lcn/nubia/weather/model/CityModel;
    const-string v1, ""

    .line 524
    .local v1, "areaID":Ljava/lang/String;
    const-string v2, ""

    .line 525
    .local v2, "areaName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 526
    .local v3, "parentID":Ljava/lang/String;
    invoke-virtual {v6}, Lcn/nubia/weather/model/CityModel;->getGmtOffSet()Ljava/lang/String;

    move-result-object v5

    .line 527
    .local v5, "gmtOffset":Ljava/lang/String;
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lcn/nubia/weather/model/CityModel;->getmAreaID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 528
    invoke-virtual {v6}, Lcn/nubia/weather/model/CityModel;->getmAreaID()Ljava/lang/String;

    move-result-object v1

    .line 529
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl$1$1;->this$1:Lcn/nubia/weather/presenter/OverAllControl$1;

    iget-object v0, v0, Lcn/nubia/weather/presenter/OverAllControl$1;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    invoke-static {v0}, Lcn/nubia/weather/presenter/OverAllControl;->access$300(Lcn/nubia/weather/presenter/OverAllControl;)Landroid/content/Context;

    move-result-object v0

    const-string v4, "isLocationOpen"

    const/4 v11, 0x1

    invoke-static {v0, v4, v11}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 530
    const-string v0, "OverAllControl"

    const-string v4, "Try to add loca-city when anto-location button is switched off"

    invoke-static {v0, v4}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    .end local v1    # "areaID":Ljava/lang/String;
    .end local v2    # "areaName":Ljava/lang/String;
    .end local v3    # "parentID":Ljava/lang/String;
    .end local v5    # "gmtOffset":Ljava/lang/String;
    .end local v6    # "cityModel":Lcn/nubia/weather/model/CityModel;
    .end local v10    # "result":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 534
    .restart local v1    # "areaID":Ljava/lang/String;
    .restart local v2    # "areaName":Ljava/lang/String;
    .restart local v3    # "parentID":Ljava/lang/String;
    .restart local v5    # "gmtOffset":Ljava/lang/String;
    .restart local v6    # "cityModel":Lcn/nubia/weather/model/CityModel;
    .restart local v10    # "result":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl$1$1;->val$districtName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 535
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl$1$1;->val$cityName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 536
    iget-object v2, p0, Lcn/nubia/weather/presenter/OverAllControl$1$1;->val$cityName:Ljava/lang/String;

    .line 544
    :cond_2
    :goto_1
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl$1$1;->val$model:Lcn/nubia/weather/model/WeatherModel;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl$1$1;->val$model:Lcn/nubia/weather/model/WeatherModel;

    .line 545
    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl$1$1;->val$model:Lcn/nubia/weather/model/WeatherModel;

    .line 546
    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 547
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl$1$1;->this$1:Lcn/nubia/weather/presenter/OverAllControl$1;

    iget-object v0, v0, Lcn/nubia/weather/presenter/OverAllControl$1;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    iget-object v4, p0, Lcn/nubia/weather/presenter/OverAllControl$1$1;->val$model:Lcn/nubia/weather/model/WeatherModel;

    iget-object v11, p0, Lcn/nubia/weather/presenter/OverAllControl$1$1;->val$type:Lcn/nubia/weather/app/Constant$OperationType;

    invoke-virtual {v0, v4, v11}, Lcn/nubia/weather/presenter/OverAllControl;->queryWeatherWithTimeThreshold(Lcn/nubia/weather/model/WeatherModel;Lcn/nubia/weather/app/Constant$OperationType;)V

    .line 555
    :goto_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v8

    .line 556
    .local v8, "message":Landroid/os/Message;
    const v0, 0x100002

    iput v0, v8, Landroid/os/Message;->what:I

    .line 557
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 558
    .local v9, "obj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "KEY_MAP_AREAID"

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    const-string v0, "KEY_MAP_CITYNAME"

    iget-object v4, p0, Lcn/nubia/weather/presenter/OverAllControl$1$1;->val$districtName:Ljava/lang/String;

    invoke-interface {v9, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    iput-object v9, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 561
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl$1$1;->this$1:Lcn/nubia/weather/presenter/OverAllControl$1;

    iget-object v0, v0, Lcn/nubia/weather/presenter/OverAllControl$1;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    invoke-static {v0, v8}, Lcn/nubia/weather/presenter/OverAllControl;->access$400(Lcn/nubia/weather/presenter/OverAllControl;Landroid/os/Message;)V

    .line 565
    .end local v8    # "message":Landroid/os/Message;
    .end local v9    # "obj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_3
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl$1$1;->this$1:Lcn/nubia/weather/presenter/OverAllControl$1;

    iget-object v0, v0, Lcn/nubia/weather/presenter/OverAllControl$1;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    invoke-static {v0}, Lcn/nubia/weather/presenter/OverAllControl;->access$300(Lcn/nubia/weather/presenter/OverAllControl;)Landroid/content/Context;

    move-result-object v0

    const-string v4, "KEY_AREAID_LOCATION"

    invoke-static {v0, v4, v1}, Lcn/nubia/weather/utils/PreferenceUtils;->setPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 568
    .end local v1    # "areaID":Ljava/lang/String;
    .end local v2    # "areaName":Ljava/lang/String;
    .end local v3    # "parentID":Ljava/lang/String;
    .end local v5    # "gmtOffset":Ljava/lang/String;
    .end local v6    # "cityModel":Lcn/nubia/weather/model/CityModel;
    .end local v10    # "result":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 569
    .local v7, "e":Ljava/io/IOException;
    const-string v0, "OverAllControl"

    const-string v4, "Location Exception "

    invoke-static {v0, v4, v7}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 570
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl$1$1;->this$1:Lcn/nubia/weather/presenter/OverAllControl$1;

    iget-object v0, v0, Lcn/nubia/weather/presenter/OverAllControl$1;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    iget-object v4, p0, Lcn/nubia/weather/presenter/OverAllControl$1$1;->this$1:Lcn/nubia/weather/presenter/OverAllControl$1;

    iget-object v4, v4, Lcn/nubia/weather/presenter/OverAllControl$1;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    iget-object v4, v4, Lcn/nubia/weather/presenter/OverAllControl;->mListenerOperationType:Lcn/nubia/weather/app/Constant$OperationType;

    invoke-static {v0, v12, v4}, Lcn/nubia/weather/presenter/OverAllControl;->access$200(Lcn/nubia/weather/presenter/OverAllControl;ILcn/nubia/weather/app/Constant$OperationType;)V

    .line 571
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl$1$1;->val$model:Lcn/nubia/weather/model/WeatherModel;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl$1$1;->this$1:Lcn/nubia/weather/presenter/OverAllControl$1;

    iget-object v0, v0, Lcn/nubia/weather/presenter/OverAllControl$1;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    iget-object v4, p0, Lcn/nubia/weather/presenter/OverAllControl$1$1;->val$model:Lcn/nubia/weather/model/WeatherModel;

    iget-object v11, p0, Lcn/nubia/weather/presenter/OverAllControl$1$1;->val$type:Lcn/nubia/weather/app/Constant$OperationType;

    invoke-virtual {v0, v4, v11}, Lcn/nubia/weather/presenter/OverAllControl;->queryWeatherWithTimeThreshold(Lcn/nubia/weather/model/WeatherModel;Lcn/nubia/weather/app/Constant$OperationType;)V

    goto/16 :goto_0

    .line 537
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v1    # "areaID":Ljava/lang/String;
    .restart local v2    # "areaName":Ljava/lang/String;
    .restart local v3    # "parentID":Ljava/lang/String;
    .restart local v5    # "gmtOffset":Ljava/lang/String;
    .restart local v6    # "cityModel":Lcn/nubia/weather/model/CityModel;
    .restart local v10    # "result":Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl$1$1;->val$cityName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 538
    invoke-virtual {v6}, Lcn/nubia/weather/model/CityModel;->getName_cn()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 541
    :cond_4
    iget-object v2, p0, Lcn/nubia/weather/presenter/OverAllControl$1$1;->val$districtName:Ljava/lang/String;

    goto/16 :goto_1

    .line 549
    :cond_5
    invoke-virtual {v6}, Lcn/nubia/weather/model/CityModel;->getmParentCityKey()Ljava/lang/String;

    move-result-object v3

    .line 550
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl$1$1;->this$1:Lcn/nubia/weather/presenter/OverAllControl$1;

    iget-object v0, v0, Lcn/nubia/weather/presenter/OverAllControl$1;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/weather/presenter/OverAllControl;->createAndAddModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 552
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl$1$1;->this$1:Lcn/nubia/weather/presenter/OverAllControl$1;

    iget-object v0, v0, Lcn/nubia/weather/presenter/OverAllControl$1;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    iget-object v4, p0, Lcn/nubia/weather/presenter/OverAllControl$1$1;->val$type:Lcn/nubia/weather/app/Constant$OperationType;

    invoke-virtual {v0, v1, v3, v5, v4}, Lcn/nubia/weather/presenter/OverAllControl;->queryWeatherInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/weather/app/Constant$OperationType;)V

    goto :goto_2

    .line 563
    :cond_6
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl$1$1;->this$1:Lcn/nubia/weather/presenter/OverAllControl$1;

    iget-object v0, v0, Lcn/nubia/weather/presenter/OverAllControl$1;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    const v4, 0x100001

    iget-object v11, p0, Lcn/nubia/weather/presenter/OverAllControl$1$1;->this$1:Lcn/nubia/weather/presenter/OverAllControl$1;

    iget-object v11, v11, Lcn/nubia/weather/presenter/OverAllControl$1;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    iget-object v11, v11, Lcn/nubia/weather/presenter/OverAllControl;->mListenerOperationType:Lcn/nubia/weather/app/Constant$OperationType;

    invoke-static {v0, v4, v11}, Lcn/nubia/weather/presenter/OverAllControl;->access$200(Lcn/nubia/weather/presenter/OverAllControl;ILcn/nubia/weather/app/Constant$OperationType;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
