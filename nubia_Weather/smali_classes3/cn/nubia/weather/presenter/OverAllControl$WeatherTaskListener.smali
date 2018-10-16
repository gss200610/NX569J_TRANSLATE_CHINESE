.class Lcn/nubia/weather/presenter/OverAllControl$WeatherTaskListener;
.super Ljava/lang/Object;
.source "OverAllControl.java"

# interfaces
.implements Lcn/nubia/weather/task/WeatherTask$TaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/presenter/OverAllControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeatherTaskListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/presenter/OverAllControl;


# direct methods
.method private constructor <init>(Lcn/nubia/weather/presenter/OverAllControl;)V
    .locals 0

    .prologue
    .line 618
    iput-object p1, p0, Lcn/nubia/weather/presenter/OverAllControl$WeatherTaskListener;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/weather/presenter/OverAllControl;Lcn/nubia/weather/presenter/OverAllControl$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/weather/presenter/OverAllControl;
    .param p2, "x1"    # Lcn/nubia/weather/presenter/OverAllControl$1;

    .prologue
    .line 618
    invoke-direct {p0, p1}, Lcn/nubia/weather/presenter/OverAllControl$WeatherTaskListener;-><init>(Lcn/nubia/weather/presenter/OverAllControl;)V

    return-void
.end method


# virtual methods
.method public doException(Ljava/util/Map;Lokhttp3/Response;)V
    .locals 4
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
    .line 739
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "KEY_MAP_OPERATION_TYPE"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 740
    .local v2, "strOperationType":Ljava/lang/String;
    sget-object v1, Lcn/nubia/weather/app/Constant$OperationType;->PASSIVE:Lcn/nubia/weather/app/Constant$OperationType;

    .line 741
    .local v1, "operationType":Lcn/nubia/weather/app/Constant$OperationType;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 742
    invoke-static {v2}, Lcn/nubia/weather/app/Constant$OperationType;->valueOf(Ljava/lang/String;)Lcn/nubia/weather/app/Constant$OperationType;

    move-result-object v1

    .line 744
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 745
    .local v0, "message":Landroid/os/Message;
    sget-object v3, Lcn/nubia/weather/app/Constant$OperationType;->ACTIVE:Lcn/nubia/weather/app/Constant$OperationType;

    if-eq v1, v3, :cond_1

    sget-object v3, Lcn/nubia/weather/app/Constant$OperationType;->PULL:Lcn/nubia/weather/app/Constant$OperationType;

    if-ne v1, v3, :cond_3

    .line 746
    :cond_1
    const v3, 0x100003

    iput v3, v0, Landroid/os/Message;->what:I

    .line 747
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 748
    iget-object v3, p0, Lcn/nubia/weather/presenter/OverAllControl$WeatherTaskListener;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    invoke-static {v3, v0}, Lcn/nubia/weather/presenter/OverAllControl;->access$400(Lcn/nubia/weather/presenter/OverAllControl;Landroid/os/Message;)V

    .line 753
    :cond_2
    :goto_0
    return-void

    .line 749
    :cond_3
    sget-object v3, Lcn/nubia/weather/app/Constant$OperationType;->SEARCH:Lcn/nubia/weather/app/Constant$OperationType;

    if-ne v1, v3, :cond_2

    .line 750
    const v3, 0x100009

    iput v3, v0, Landroid/os/Message;->what:I

    .line 751
    iget-object v3, p0, Lcn/nubia/weather/presenter/OverAllControl$WeatherTaskListener;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    invoke-static {v3, v0}, Lcn/nubia/weather/presenter/OverAllControl;->access$400(Lcn/nubia/weather/presenter/OverAllControl;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public doFail(Ljava/util/Map;Lokhttp3/Response;)V
    .locals 4
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
    .line 717
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "KEY_MAP_OPERATION_TYPE"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 718
    .local v2, "strOperationType":Ljava/lang/String;
    sget-object v1, Lcn/nubia/weather/app/Constant$OperationType;->PASSIVE:Lcn/nubia/weather/app/Constant$OperationType;

    .line 719
    .local v1, "operationType":Lcn/nubia/weather/app/Constant$OperationType;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 720
    invoke-static {v2}, Lcn/nubia/weather/app/Constant$OperationType;->valueOf(Ljava/lang/String;)Lcn/nubia/weather/app/Constant$OperationType;

    move-result-object v1

    .line 722
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 723
    .local v0, "message":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 724
    sget-object v3, Lcn/nubia/weather/app/Constant$OperationType;->ACTIVE:Lcn/nubia/weather/app/Constant$OperationType;

    if-eq v1, v3, :cond_1

    sget-object v3, Lcn/nubia/weather/app/Constant$OperationType;->PULL:Lcn/nubia/weather/app/Constant$OperationType;

    if-ne v1, v3, :cond_4

    .line 725
    :cond_1
    const v3, 0x100003

    iput v3, v0, Landroid/os/Message;->what:I

    .line 726
    iget-object v3, p0, Lcn/nubia/weather/presenter/OverAllControl$WeatherTaskListener;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    invoke-static {v3, v0}, Lcn/nubia/weather/presenter/OverAllControl;->access$400(Lcn/nubia/weather/presenter/OverAllControl;Landroid/os/Message;)V

    .line 732
    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 733
    invoke-virtual {p2}, Lokhttp3/Response;->close()V

    .line 735
    :cond_3
    return-void

    .line 727
    :cond_4
    sget-object v3, Lcn/nubia/weather/app/Constant$OperationType;->SEARCH:Lcn/nubia/weather/app/Constant$OperationType;

    if-ne v1, v3, :cond_2

    .line 728
    const v3, 0x100008

    iput v3, v0, Landroid/os/Message;->what:I

    .line 729
    iget-object v3, p0, Lcn/nubia/weather/presenter/OverAllControl$WeatherTaskListener;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    invoke-static {v3, v0}, Lcn/nubia/weather/presenter/OverAllControl;->access$400(Lcn/nubia/weather/presenter/OverAllControl;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public doSuccess(Ljava/util/Map;Lokhttp3/Response;)V
    .locals 24
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
    .line 621
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v21, "KEY_MAP_TYPE"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 622
    .local v20, "type":Ljava/lang/String;
    const-string v21, "KEY_MAP_AREAID"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 623
    .local v6, "areaID":Ljava/lang/String;
    const-string v21, "KEY_MAP_OPERATION_TYPE"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 624
    .local v19, "strOperationType":Ljava/lang/String;
    sget-object v17, Lcn/nubia/weather/app/Constant$OperationType;->PASSIVE:Lcn/nubia/weather/app/Constant$OperationType;

    .line 625
    .local v17, "operationType":Lcn/nubia/weather/app/Constant$OperationType;
    if-eqz v19, :cond_0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_0

    .line 626
    invoke-static/range {v19 .. v19}, Lcn/nubia/weather/app/Constant$OperationType;->valueOf(Ljava/lang/String;)Lcn/nubia/weather/app/Constant$OperationType;

    move-result-object v17

    .line 628
    :cond_0
    const-string v18, ""

    .line 630
    .local v18, "result":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 634
    :goto_0
    invoke-static {}, Lcn/nubia/weather/task/AirTask;->getTaskType()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 637
    move-object/from16 v0, v18

    invoke-static {v6, v0}, Lcn/nubia/weather/model/AQIModel;->buildForHuaFeng(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/weather/model/AQIModel;

    move-result-object v5

    .line 638
    .local v5, "aqiModel":Lcn/nubia/weather/model/AQIModel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/presenter/OverAllControl$WeatherTaskListener;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcn/nubia/weather/presenter/OverAllControl;->access$300(Lcn/nubia/weather/presenter/OverAllControl;)Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcn/nubia/weather/data/DataCenter;->updateModel(Lcn/nubia/weather/model/BaseModel;)V

    .line 713
    .end local v5    # "aqiModel":Lcn/nubia/weather/model/AQIModel;
    :cond_1
    :goto_1
    return-void

    .line 631
    :catch_0
    move-exception v9

    .line 632
    .local v9, "e":Ljava/io/IOException;
    const-string v21, "OverAllControl"

    const-string v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v9}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 639
    .end local v9    # "e":Ljava/io/IOException;
    :cond_2
    invoke-static {}, Lcn/nubia/weather/task/AlarmTask;->getTaskType()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 642
    move-object/from16 v0, v18

    invoke-static {v6, v0}, Lcn/nubia/weather/model/AlarmModel;->buildForHuaFeng(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/weather/model/AlarmModel;

    move-result-object v4

    .line 643
    .local v4, "alarmModel":Lcn/nubia/weather/model/AlarmModel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/presenter/OverAllControl$WeatherTaskListener;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcn/nubia/weather/presenter/OverAllControl;->access$300(Lcn/nubia/weather/presenter/OverAllControl;)Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcn/nubia/weather/data/DataCenter;->updateModel(Lcn/nubia/weather/model/BaseModel;)V

    goto :goto_1

    .line 644
    .end local v4    # "alarmModel":Lcn/nubia/weather/model/AlarmModel;
    :cond_3
    invoke-static {}, Lcn/nubia/weather/task/Forecast5dTask;->getTaskType()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 648
    move-object/from16 v0, v18

    invoke-static {v6, v0}, Lcn/nubia/weather/model/Forecast5dModel;->buildForHuaFeng(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/weather/model/Forecast5dModel;

    move-result-object v10

    .line 649
    .local v10, "forecat5dModel":Lcn/nubia/weather/model/Forecast5dModel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/presenter/OverAllControl$WeatherTaskListener;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcn/nubia/weather/presenter/OverAllControl;->access$300(Lcn/nubia/weather/presenter/OverAllControl;)Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Lcn/nubia/weather/data/DataCenter;->updateModel(Lcn/nubia/weather/model/BaseModel;)V

    goto :goto_1

    .line 650
    .end local v10    # "forecat5dModel":Lcn/nubia/weather/model/Forecast5dModel;
    :cond_4
    invoke-static {}, Lcn/nubia/weather/task/HourfcTask;->getTaskType()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 653
    move-object/from16 v0, v18

    invoke-static {v6, v0}, Lcn/nubia/weather/model/HourfcModel;->buildForHuaFeng(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/weather/model/HourfcModel;

    move-result-object v11

    .line 654
    .local v11, "hourfcModel":Lcn/nubia/weather/model/HourfcModel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/presenter/OverAllControl$WeatherTaskListener;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcn/nubia/weather/presenter/OverAllControl;->access$300(Lcn/nubia/weather/presenter/OverAllControl;)Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lcn/nubia/weather/data/DataCenter;->updateModel(Lcn/nubia/weather/model/BaseModel;)V

    goto :goto_1

    .line 655
    .end local v11    # "hourfcModel":Lcn/nubia/weather/model/HourfcModel;
    :cond_5
    invoke-static {}, Lcn/nubia/weather/task/IndexTask;->getTaskType()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 659
    move-object/from16 v0, v18

    invoke-static {v6, v0}, Lcn/nubia/weather/model/IndexModel;->buildForHuaFeng(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/weather/model/IndexModel;

    move-result-object v12

    .line 660
    .local v12, "indexModel":Lcn/nubia/weather/model/IndexModel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/presenter/OverAllControl$WeatherTaskListener;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcn/nubia/weather/presenter/OverAllControl;->access$300(Lcn/nubia/weather/presenter/OverAllControl;)Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcn/nubia/weather/data/DataCenter;->updateModel(Lcn/nubia/weather/model/BaseModel;)V

    goto/16 :goto_1

    .line 661
    .end local v12    # "indexModel":Lcn/nubia/weather/model/IndexModel;
    :cond_6
    invoke-static {}, Lcn/nubia/weather/task/ObserveTask;->getTaskType()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 665
    move-object/from16 v0, v18

    invoke-static {v6, v0}, Lcn/nubia/weather/model/ObserveModel;->buildForHuaFeng(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/weather/model/ObserveModel;

    move-result-object v16

    .line 666
    .local v16, "observeModel":Lcn/nubia/weather/model/ObserveModel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/presenter/OverAllControl$WeatherTaskListener;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcn/nubia/weather/presenter/OverAllControl;->access$300(Lcn/nubia/weather/presenter/OverAllControl;)Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcn/nubia/weather/data/DataCenter;->updateModel(Lcn/nubia/weather/model/BaseModel;)V

    goto/16 :goto_1

    .line 667
    .end local v16    # "observeModel":Lcn/nubia/weather/model/ObserveModel;
    :cond_7
    invoke-static {}, Lcn/nubia/weather/task/PastDayTask;->getTaskType()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 671
    invoke-static {}, Lcn/nubia/weather/task/NubiaServerTask;->getTaskType()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 672
    move-object/from16 v0, v18

    invoke-static {v6, v0}, Lcn/nubia/weather/model/NubiaServerModel;->build(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/weather/model/NubiaServerModel;

    move-result-object v15

    .line 673
    .local v15, "nubiaServerModel":Lcn/nubia/weather/model/NubiaServerModel;
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lcn/nubia/weather/model/NubiaServerModel;->build(Lcn/nubia/weather/model/WeatherModel;)Lcn/nubia/weather/model/WeatherModel;

    move-result-object v14

    .line 674
    .local v14, "model":Lcn/nubia/weather/model/WeatherModel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/presenter/OverAllControl$WeatherTaskListener;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcn/nubia/weather/presenter/OverAllControl;->access$300(Lcn/nubia/weather/presenter/OverAllControl;)Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Lcn/nubia/weather/data/DataCenter;->updateModelForNubia(Lcn/nubia/weather/model/WeatherModel;)V

    goto/16 :goto_1

    .line 675
    .end local v14    # "model":Lcn/nubia/weather/model/WeatherModel;
    .end local v15    # "nubiaServerModel":Lcn/nubia/weather/model/NubiaServerModel;
    :cond_8
    invoke-static {}, Lcn/nubia/weather/task/CitySearchTask;->getTaskType()Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 676
    invoke-static/range {v18 .. v18}, Lcn/nubia/weather/model/CityModel;->buildForHuaFeng(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 677
    .local v8, "cityModels":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/CityModel;>;"
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v13

    .line 678
    .local v13, "message":Landroid/os/Message;
    if-eqz v8, :cond_9

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_c

    .line 679
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/presenter/OverAllControl$WeatherTaskListener;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcn/nubia/weather/presenter/OverAllControl;->access$300(Lcn/nubia/weather/presenter/OverAllControl;)Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcn/nubia/weather/utils/NetUtil;->getNetworkState(Landroid/content/Context;)I

    move-result v21

    if-nez v21, :cond_a

    .line 680
    const-string v21, "OverAllControl"

    const-string v22, "NETWORN_NONE)"

    invoke-static/range {v21 .. v22}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    const v21, 0x100009

    move/from16 v0, v21

    iput v0, v13, Landroid/os/Message;->what:I

    .line 697
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/presenter/OverAllControl$WeatherTaskListener;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v13}, Lcn/nubia/weather/presenter/OverAllControl;->access$400(Lcn/nubia/weather/presenter/OverAllControl;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 682
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/presenter/OverAllControl$WeatherTaskListener;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcn/nubia/weather/presenter/OverAllControl;->access$500(Lcn/nubia/weather/presenter/OverAllControl;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_b

    .line 684
    new-instance v3, Lcn/nubia/weather/task/PreciseCitySearchTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/presenter/OverAllControl$WeatherTaskListener;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    move-object/from16 v21, v0

    .line 685
    invoke-static/range {v21 .. v21}, Lcn/nubia/weather/presenter/OverAllControl;->access$500(Lcn/nubia/weather/presenter/OverAllControl;)Ljava/lang/String;

    move-result-object v21

    sget-object v22, Lcn/nubia/weather/app/Constant$OperationType;->SEARCH:Lcn/nubia/weather/app/Constant$OperationType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/presenter/OverAllControl$WeatherTaskListener;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcn/nubia/weather/presenter/OverAllControl;->access$600(Lcn/nubia/weather/presenter/OverAllControl;)Lcn/nubia/weather/task/WeatherTask$TaskListener;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v3, v0, v1, v2}, Lcn/nubia/weather/task/PreciseCitySearchTask;-><init>(Ljava/lang/String;Lcn/nubia/weather/app/Constant$OperationType;Lcn/nubia/weather/task/WeatherTask$TaskListener;)V

    .line 686
    .local v3, "PreciseCitySearchTask":Lcn/nubia/weather/task/WeatherTask;
    invoke-static {}, Lcn/nubia/weather/app/ThreadPool;->getInstance()Lcn/nubia/weather/app/ThreadPool;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcn/nubia/weather/app/ThreadPool;->addTask(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 690
    .end local v3    # "PreciseCitySearchTask":Lcn/nubia/weather/task/WeatherTask;
    :cond_b
    const v21, 0x100008

    move/from16 v0, v21

    iput v0, v13, Landroid/os/Message;->what:I

    .line 691
    move-object/from16 v0, p1

    iput-object v0, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_2

    .line 694
    :cond_c
    const v21, 0x100007

    move/from16 v0, v21

    iput v0, v13, Landroid/os/Message;->what:I

    .line 695
    iput-object v8, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_2

    .line 698
    .end local v8    # "cityModels":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/CityModel;>;"
    .end local v13    # "message":Landroid/os/Message;
    :cond_d
    invoke-static {}, Lcn/nubia/weather/task/PreciseCitySearchTask;->getTaskType()Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 699
    invoke-static/range {v18 .. v18}, Lcn/nubia/weather/model/CityModel;->buildForHuaFeng(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 700
    .restart local v8    # "cityModels":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/CityModel;>;"
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v13

    .line 701
    .restart local v13    # "message":Landroid/os/Message;
    if-eqz v8, :cond_e

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_f

    .line 702
    :cond_e
    const v21, 0x100008

    move/from16 v0, v21

    iput v0, v13, Landroid/os/Message;->what:I

    .line 703
    move-object/from16 v0, p1

    iput-object v0, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 708
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/presenter/OverAllControl$WeatherTaskListener;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v13}, Lcn/nubia/weather/presenter/OverAllControl;->access$400(Lcn/nubia/weather/presenter/OverAllControl;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 705
    :cond_f
    const v21, 0x100007

    move/from16 v0, v21

    iput v0, v13, Landroid/os/Message;->what:I

    .line 706
    iput-object v8, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_3

    .line 709
    .end local v8    # "cityModels":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/CityModel;>;"
    .end local v13    # "message":Landroid/os/Message;
    :cond_10
    invoke-static {}, Lcn/nubia/weather/task/LocKeyCitySearchTask;->getTaskType()Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 710
    invoke-static/range {v18 .. v18}, Lcn/nubia/weather/model/CityModel;->buildForHuaFengWithSingleCity(Ljava/lang/String;)Lcn/nubia/weather/model/CityModel;

    move-result-object v7

    .line 711
    .local v7, "city":Lcn/nubia/weather/model/CityModel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/presenter/OverAllControl$WeatherTaskListener;->this$0:Lcn/nubia/weather/presenter/OverAllControl;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcn/nubia/weather/presenter/OverAllControl;->access$300(Lcn/nubia/weather/presenter/OverAllControl;)Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lcn/nubia/weather/data/DataCenter;->updateModel(Lcn/nubia/weather/model/BaseModel;)V

    goto/16 :goto_1
.end method
