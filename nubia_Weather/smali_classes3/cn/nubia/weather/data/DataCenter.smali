.class public Lcn/nubia/weather/data/DataCenter;
.super Ljava/util/Observable;
.source "DataCenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/data/DataCenter$ObserverObject;,
        Lcn/nubia/weather/data/DataCenter$ModelType;,
        Lcn/nubia/weather/data/DataCenter$OperationType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DataCenter"

.field private static mInstance:Lcn/nubia/weather/data/DataCenter;


# instance fields
.field private lock:Ljava/lang/Object;

.field private final mCityWeathers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/model/WeatherModel;",
            ">;"
        }
    .end annotation
.end field

.field private mIsPrepare:Z

.field private mPersistenter:Lcn/nubia/weather/persistent/IPersistenter;

.field private obj:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/weather/data/DataCenter;->obj:Ljava/lang/Object;

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/weather/data/DataCenter;->lock:Ljava/lang/Object;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/weather/data/DataCenter;->mIsPrepare:Z

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    .line 69
    invoke-direct {p0, p1}, Lcn/nubia/weather/data/DataCenter;->initWeatherInfo(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method static synthetic access$002(Lcn/nubia/weather/data/DataCenter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/data/DataCenter;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcn/nubia/weather/data/DataCenter;->mIsPrepare:Z

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/weather/data/DataCenter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/data/DataCenter;

    .prologue
    .line 43
    iget-object v0, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/weather/data/DataCenter;Lcn/nubia/weather/model/WeatherModel;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/data/DataCenter;
    .param p1, "x1"    # Lcn/nubia/weather/model/WeatherModel;
    .param p2, "x2"    # Z

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcn/nubia/weather/data/DataCenter;->addWeatherInfoWhenInit(Lcn/nubia/weather/model/WeatherModel;Z)V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/weather/data/DataCenter;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/data/DataCenter;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcn/nubia/weather/data/DataCenter;->setChanged()V

    return-void
.end method

.method private addWeatherInfo(Lcn/nubia/weather/model/WeatherModel;Z)V
    .locals 10
    .param p1, "weather"    # Lcn/nubia/weather/model/WeatherModel;
    .param p2, "isInit"    # Z

    .prologue
    const/4 v4, 0x1

    .line 481
    if-nez p1, :cond_1

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 484
    :cond_1
    const-string v1, "DataCenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addWeatherInfo ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 485
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 484
    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const/4 v8, 0x0

    .line 488
    .local v8, "isUpdate":Z
    iget-object v2, p0, Lcn/nubia/weather/data/DataCenter;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 490
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/weather/data/DataCenter;->ismIsPrepare()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez p2, :cond_2

    .line 491
    const-string v1, "DataCenter"

    const-string v3, "The DataCenter is Not Prepare!"

    invoke-static {v1, v3}, Lcn/nubia/weather/utils/ZLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    monitor-exit v2

    goto :goto_0

    .line 542
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 494
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v1

    if-ne v1, v4, :cond_b

    .line 495
    iget-object v1, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v7, v1, -0x1

    .line 496
    .local v7, "index":I
    const/4 v9, 0x0

    .line 499
    .local v9, "model":Lcn/nubia/weather/model/WeatherModel;
    :goto_1
    if-lez v7, :cond_4

    .line 500
    iget-object v1, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "model":Lcn/nubia/weather/model/WeatherModel;
    check-cast v9, Lcn/nubia/weather/model/WeatherModel;

    .line 501
    .restart local v9    # "model":Lcn/nubia/weather/model/WeatherModel;
    invoke-virtual {v9}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 502
    const-string v1, "DataCenter"

    const-string v3, "Remove AUTO"

    invoke-static {v1, v3}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget-object v1, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 504
    const/4 v8, 0x1

    .line 499
    :cond_3
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 509
    :cond_4
    iget-object v1, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 510
    iget-object v1, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/weather/model/WeatherModel;

    .line 511
    .local v6, "firstModel":Lcn/nubia/weather/model/WeatherModel;
    invoke-virtual {v6}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v1

    if-ne v1, v4, :cond_7

    .line 512
    const/4 v8, 0x1

    .line 513
    const-string v1, "DataCenter"

    const-string v3, "Fist is AUTO  UPDATE"

    invoke-static {v1, v3}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    invoke-virtual {v6, p1}, Lcn/nubia/weather/model/WeatherModel;->copyModelV2(Lcn/nubia/weather/model/WeatherModel;)V

    .line 516
    invoke-direct {p0, v6}, Lcn/nubia/weather/data/DataCenter;->setModelTime(Lcn/nubia/weather/model/WeatherModel;)V

    .line 542
    .end local v6    # "firstModel":Lcn/nubia/weather/model/WeatherModel;
    .end local v7    # "index":I
    .end local v9    # "model":Lcn/nubia/weather/model/WeatherModel;
    :cond_5
    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 544
    const/4 v0, 0x0

    .line 545
    .local v0, "object":Lcn/nubia/weather/data/DataCenter$ObserverObject;
    if-eqz v8, :cond_f

    .line 546
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v1

    if-nez v1, :cond_e

    .line 547
    new-instance v0, Lcn/nubia/weather/data/DataCenter$ObserverObject;

    .end local v0    # "object":Lcn/nubia/weather/data/DataCenter$ObserverObject;
    sget-object v2, Lcn/nubia/weather/data/DataCenter$OperationType;->UPDATE:Lcn/nubia/weather/data/DataCenter$OperationType;

    sget-object v3, Lcn/nubia/weather/data/DataCenter$ModelType;->WEATHER:Lcn/nubia/weather/data/DataCenter$ModelType;

    .line 548
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/weather/data/DataCenter$ObserverObject;-><init>(Lcn/nubia/weather/data/DataCenter;Lcn/nubia/weather/data/DataCenter$OperationType;Lcn/nubia/weather/data/DataCenter$ModelType;Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    .restart local v0    # "object":Lcn/nubia/weather/data/DataCenter$ObserverObject;
    :goto_3
    invoke-virtual {p0}, Lcn/nubia/weather/data/DataCenter;->setChanged()V

    .line 559
    invoke-virtual {p0, v0}, Lcn/nubia/weather/data/DataCenter;->notifyObservers(Ljava/lang/Object;)V

    .line 562
    if-nez p2, :cond_0

    .line 567
    iget-object v2, p0, Lcn/nubia/weather/data/DataCenter;->obj:Ljava/lang/Object;

    monitor-enter v2

    .line 568
    :try_start_2
    iget-object v1, p0, Lcn/nubia/weather/data/DataCenter;->mPersistenter:Lcn/nubia/weather/persistent/IPersistenter;

    if-eqz v1, :cond_6

    .line 569
    if-eqz v8, :cond_10

    .line 570
    iget-object v1, p0, Lcn/nubia/weather/data/DataCenter;->mPersistenter:Lcn/nubia/weather/persistent/IPersistenter;

    invoke-interface {v1, p1}, Lcn/nubia/weather/persistent/IPersistenter;->updateLocationWeather(Lcn/nubia/weather/model/WeatherModel;)V

    .line 575
    :cond_6
    :goto_4
    monitor-exit v2

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 518
    .end local v0    # "object":Lcn/nubia/weather/data/DataCenter$ObserverObject;
    .restart local v6    # "firstModel":Lcn/nubia/weather/model/WeatherModel;
    .restart local v7    # "index":I
    .restart local v9    # "model":Lcn/nubia/weather/model/WeatherModel;
    :cond_7
    :try_start_3
    invoke-direct {p0, p1}, Lcn/nubia/weather/data/DataCenter;->isModelDuplicated(Lcn/nubia/weather/model/WeatherModel;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 519
    monitor-exit v2

    goto/16 :goto_0

    .line 521
    :cond_8
    const/4 v8, 0x0

    .line 522
    iget-object v1, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 523
    invoke-direct {p0, p1}, Lcn/nubia/weather/data/DataCenter;->setModelTime(Lcn/nubia/weather/model/WeatherModel;)V

    goto :goto_2

    .line 526
    .end local v6    # "firstModel":Lcn/nubia/weather/model/WeatherModel;
    :cond_9
    invoke-direct {p0, p1}, Lcn/nubia/weather/data/DataCenter;->isModelDuplicated(Lcn/nubia/weather/model/WeatherModel;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 527
    monitor-exit v2

    goto/16 :goto_0

    .line 529
    :cond_a
    const/4 v8, 0x0

    .line 530
    iget-object v1, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 531
    invoke-direct {p0, p1}, Lcn/nubia/weather/data/DataCenter;->setModelTime(Lcn/nubia/weather/model/WeatherModel;)V

    goto :goto_2

    .line 533
    .end local v7    # "index":I
    .end local v9    # "model":Lcn/nubia/weather/model/WeatherModel;
    :cond_b
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v1

    if-nez v1, :cond_5

    .line 534
    iget-object v1, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/nubia/weather/model/WeatherModel;

    .line 535
    .restart local v9    # "model":Lcn/nubia/weather/model/WeatherModel;
    invoke-direct {p0, p1}, Lcn/nubia/weather/data/DataCenter;->isModelDuplicated(Lcn/nubia/weather/model/WeatherModel;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 536
    monitor-exit v2

    goto/16 :goto_0

    .line 539
    .end local v9    # "model":Lcn/nubia/weather/model/WeatherModel;
    :cond_d
    iget-object v1, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    invoke-direct {p0, p1}, Lcn/nubia/weather/data/DataCenter;->setModelTime(Lcn/nubia/weather/model/WeatherModel;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 550
    .restart local v0    # "object":Lcn/nubia/weather/data/DataCenter$ObserverObject;
    :cond_e
    new-instance v0, Lcn/nubia/weather/data/DataCenter$ObserverObject;

    .end local v0    # "object":Lcn/nubia/weather/data/DataCenter$ObserverObject;
    sget-object v2, Lcn/nubia/weather/data/DataCenter$OperationType;->UPDATE_LOCATION:Lcn/nubia/weather/data/DataCenter$OperationType;

    sget-object v3, Lcn/nubia/weather/data/DataCenter$ModelType;->WEATHER:Lcn/nubia/weather/data/DataCenter$ModelType;

    .line 551
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/weather/data/DataCenter$ObserverObject;-><init>(Lcn/nubia/weather/data/DataCenter;Lcn/nubia/weather/data/DataCenter$OperationType;Lcn/nubia/weather/data/DataCenter$ModelType;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "object":Lcn/nubia/weather/data/DataCenter$ObserverObject;
    goto/16 :goto_3

    .line 554
    :cond_f
    new-instance v0, Lcn/nubia/weather/data/DataCenter$ObserverObject;

    .end local v0    # "object":Lcn/nubia/weather/data/DataCenter$ObserverObject;
    sget-object v2, Lcn/nubia/weather/data/DataCenter$OperationType;->ADD:Lcn/nubia/weather/data/DataCenter$OperationType;

    sget-object v3, Lcn/nubia/weather/data/DataCenter$ModelType;->WEATHER:Lcn/nubia/weather/data/DataCenter$ModelType;

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v4

    .line 555
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/weather/data/DataCenter$ObserverObject;-><init>(Lcn/nubia/weather/data/DataCenter;Lcn/nubia/weather/data/DataCenter$OperationType;Lcn/nubia/weather/data/DataCenter$ModelType;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "object":Lcn/nubia/weather/data/DataCenter$ObserverObject;
    goto/16 :goto_3

    .line 572
    :cond_10
    :try_start_4
    iget-object v1, p0, Lcn/nubia/weather/data/DataCenter;->mPersistenter:Lcn/nubia/weather/persistent/IPersistenter;

    invoke-interface {v1, p1}, Lcn/nubia/weather/persistent/IPersistenter;->addWeatherInfo(Lcn/nubia/weather/model/WeatherModel;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_4
.end method

.method private addWeatherInfoWhenInit(Lcn/nubia/weather/model/WeatherModel;Z)V
    .locals 7
    .param p1, "weather"    # Lcn/nubia/weather/model/WeatherModel;
    .param p2, "isInit"    # Z

    .prologue
    const/4 v6, 0x1

    .line 403
    if-nez p1, :cond_0

    .line 455
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-object v4, p0, Lcn/nubia/weather/data/DataCenter;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 408
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/weather/data/DataCenter;->ismIsPrepare()Z

    move-result v3

    if-nez v3, :cond_1

    if-nez p2, :cond_1

    .line 409
    const-string v3, "DataCenter"

    const-string v5, "The DataCenter is Not Prepare!"

    invoke-static {v3, v5}, Lcn/nubia/weather/utils/ZLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    monitor-exit v4

    goto :goto_0

    .line 454
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 412
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v3

    if-ne v3, v6, :cond_9

    .line 413
    iget-object v3, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 414
    .local v1, "index":I
    const/4 v2, 0x0

    .line 417
    .local v2, "model":Lcn/nubia/weather/model/WeatherModel;
    :goto_1
    if-lez v1, :cond_3

    .line 418
    iget-object v3, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "model":Lcn/nubia/weather/model/WeatherModel;
    check-cast v2, Lcn/nubia/weather/model/WeatherModel;

    .line 419
    .restart local v2    # "model":Lcn/nubia/weather/model/WeatherModel;
    invoke-virtual {v2}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 420
    const-string v3, "DataCenter"

    const-string v5, "Remove AUTO"

    invoke-static {v3, v5}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object v3, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 417
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 426
    :cond_3
    iget-object v3, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 427
    iget-object v3, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/model/WeatherModel;

    .line 428
    .local v0, "firstModel":Lcn/nubia/weather/model/WeatherModel;
    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v3

    if-ne v3, v6, :cond_5

    .line 431
    invoke-virtual {v0, p1}, Lcn/nubia/weather/model/WeatherModel;->copyModelV2(Lcn/nubia/weather/model/WeatherModel;)V

    .line 432
    invoke-direct {p0, v0}, Lcn/nubia/weather/data/DataCenter;->setModelTime(Lcn/nubia/weather/model/WeatherModel;)V

    .line 454
    .end local v0    # "firstModel":Lcn/nubia/weather/model/WeatherModel;
    .end local v1    # "index":I
    .end local v2    # "model":Lcn/nubia/weather/model/WeatherModel;
    :cond_4
    :goto_2
    monitor-exit v4

    goto :goto_0

    .line 434
    .restart local v0    # "firstModel":Lcn/nubia/weather/model/WeatherModel;
    .restart local v1    # "index":I
    .restart local v2    # "model":Lcn/nubia/weather/model/WeatherModel;
    :cond_5
    invoke-direct {p0, p1}, Lcn/nubia/weather/data/DataCenter;->isModelDuplicated(Lcn/nubia/weather/model/WeatherModel;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 435
    monitor-exit v4

    goto :goto_0

    .line 437
    :cond_6
    iget-object v3, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v3, v5, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 438
    invoke-direct {p0, p1}, Lcn/nubia/weather/data/DataCenter;->setModelTime(Lcn/nubia/weather/model/WeatherModel;)V

    goto :goto_2

    .line 441
    .end local v0    # "firstModel":Lcn/nubia/weather/model/WeatherModel;
    :cond_7
    invoke-direct {p0, p1}, Lcn/nubia/weather/data/DataCenter;->isModelDuplicated(Lcn/nubia/weather/model/WeatherModel;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 442
    monitor-exit v4

    goto :goto_0

    .line 444
    :cond_8
    iget-object v3, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v3, v5, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 445
    invoke-direct {p0, p1}, Lcn/nubia/weather/data/DataCenter;->setModelTime(Lcn/nubia/weather/model/WeatherModel;)V

    goto :goto_2

    .line 447
    .end local v1    # "index":I
    .end local v2    # "model":Lcn/nubia/weather/model/WeatherModel;
    :cond_9
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v3

    if-nez v3, :cond_4

    .line 448
    invoke-direct {p0, p1}, Lcn/nubia/weather/data/DataCenter;->isModelDuplicated(Lcn/nubia/weather/model/WeatherModel;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 449
    monitor-exit v4

    goto/16 :goto_0

    .line 451
    :cond_a
    iget-object v3, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    invoke-direct {p0, p1}, Lcn/nubia/weather/data/DataCenter;->setModelTime(Lcn/nubia/weather/model/WeatherModel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private clearManualWeather()V
    .locals 3

    .prologue
    .line 684
    iget-object v2, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 685
    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_1

    .line 686
    iget-object v2, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/weather/model/WeatherModel;

    .line 687
    .local v1, "model":Lcn/nubia/weather/model/WeatherModel;
    invoke-virtual {v1}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v2

    if-nez v2, :cond_0

    .line 688
    iget-object v2, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 689
    invoke-direct {p0, v1}, Lcn/nubia/weather/data/DataCenter;->moveToGarbageCache(Lcn/nubia/weather/model/WeatherModel;)V

    .line 685
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 692
    .end local v1    # "model":Lcn/nubia/weather/model/WeatherModel;
    :cond_1
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 186
    const-class v1, Lcn/nubia/weather/data/DataCenter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/nubia/weather/data/DataCenter;->mInstance:Lcn/nubia/weather/data/DataCenter;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 187
    new-instance v0, Lcn/nubia/weather/data/DataCenter;

    invoke-direct {v0, p0}, Lcn/nubia/weather/data/DataCenter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/nubia/weather/data/DataCenter;->mInstance:Lcn/nubia/weather/data/DataCenter;

    .line 189
    :cond_0
    sget-object v0, Lcn/nubia/weather/data/DataCenter;->mInstance:Lcn/nubia/weather/data/DataCenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getMatchedModel(Lcn/nubia/weather/model/BaseModel;)Ljava/util/List;
    .locals 5
    .param p1, "m"    # Lcn/nubia/weather/model/BaseModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/weather/model/BaseModel;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/model/WeatherModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 893
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 894
    .local v1, "needUpdates":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/WeatherModel;>;"
    iget-object v2, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 895
    iget-object v2, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/model/WeatherModel;

    .line 896
    .local v0, "model":Lcn/nubia/weather/model/WeatherModel;
    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcn/nubia/weather/model/BaseModel;->getmAreaID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 897
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 901
    .end local v0    # "model":Lcn/nubia/weather/model/WeatherModel;
    :cond_1
    return-object v1
.end method

.method private initWeatherInfo(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-static {p1}, Lcn/nubia/weather/persistent/WeatherStore;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/persistent/WeatherStore;

    move-result-object v0

    .line 79
    .local v0, "mStore":Lcn/nubia/weather/persistent/IPersistenter;
    iput-object v0, p0, Lcn/nubia/weather/data/DataCenter;->mPersistenter:Lcn/nubia/weather/persistent/IPersistenter;

    .line 80
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcn/nubia/weather/data/DataCenter$1;

    invoke-direct {v2, p0, p1}, Lcn/nubia/weather/data/DataCenter$1;-><init>(Lcn/nubia/weather/data/DataCenter;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 126
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 176
    return-void
.end method

.method private isModelDuplicated(Lcn/nubia/weather/model/WeatherModel;)Z
    .locals 4
    .param p1, "weather"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    .line 468
    iget-object v1, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/model/WeatherModel;

    .line 469
    .local v0, "weatherModel":Lcn/nubia/weather/model/WeatherModel;
    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 470
    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v2

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 471
    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 472
    const-string v1, "DataCenter"

    const-string v2, "Add city. But already exist"

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const/4 v1, 0x1

    .line 476
    .end local v0    # "weatherModel":Lcn/nubia/weather/model/WeatherModel;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isNeedUpdate(Ljava/util/List;Lcn/nubia/weather/model/BaseModel;)Z
    .locals 1
    .param p2, "observeModel"    # Lcn/nubia/weather/model/BaseModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/model/WeatherModel;",
            ">;",
            "Lcn/nubia/weather/model/BaseModel;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 889
    .local p1, "weatherModes":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/WeatherModel;>;"
    const/4 v0, 0x1

    return v0
.end method

.method private moveToGarbageCache(Lcn/nubia/weather/model/WeatherModel;)V
    .locals 3
    .param p1, "weather"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    .line 585
    if-nez p1, :cond_0

    .line 590
    :goto_0
    return-void

    .line 588
    :cond_0
    const-string v0, "DataCenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveToGarbageCache, CityName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    invoke-static {}, Lcn/nubia/weather/data/GarbageCache;->getInstance()Lcn/nubia/weather/data/GarbageCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/weather/data/GarbageCache;->addWeatherModel(Lcn/nubia/weather/model/WeatherModel;)V

    goto :goto_0
.end method

.method private setModelTime(Lcn/nubia/weather/model/WeatherModel;)V
    .locals 4
    .param p1, "weather"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    const-wide/16 v2, 0x0

    .line 376
    if-nez p1, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    const-string v0, "TYPE_NWS_SERVER"

    const-string v1, "TYPE_NUBIA_SERVER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 380
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmNubiaServerModel()Lcn/nubia/weather/model/NubiaServerModel;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 381
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 382
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 383
    :cond_2
    invoke-virtual {p1, v2, v3}, Lcn/nubia/weather/model/WeatherModel;->setmTime(J)V

    goto :goto_0

    .line 386
    :cond_3
    const-string v0, "TYPE_NWS_SERVER"

    const-string v1, "TYPE_NWS_SERVER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 387
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmForecast5d()Lcn/nubia/weather/model/Forecast5dModel;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmHourfc()Lcn/nubia/weather/model/HourfcModel;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 388
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmIndex()Lcn/nubia/weather/model/IndexModel;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 389
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 390
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 391
    :cond_4
    invoke-virtual {p1, v2, v3}, Lcn/nubia/weather/model/WeatherModel;->setmTime(J)V

    goto :goto_0

    .line 395
    :cond_5
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmTime()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 396
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcn/nubia/weather/model/WeatherModel;->setmTime(J)V

    goto/16 :goto_0
.end method


# virtual methods
.method public addWeatherInfo(Lcn/nubia/weather/model/WeatherModel;)V
    .locals 1
    .param p1, "weather"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    .line 357
    if-nez p1, :cond_0

    .line 361
    :goto_0
    return-void

    .line 360
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/weather/data/DataCenter;->addWeatherInfo(Lcn/nubia/weather/model/WeatherModel;Z)V

    goto :goto_0
.end method

.method public clearLocationWeather()V
    .locals 0

    .prologue
    .line 598
    return-void
.end method

.method public clearObservers()V
    .locals 0

    .prologue
    .line 698
    invoke-virtual {p0}, Lcn/nubia/weather/data/DataCenter;->deleteObservers()V

    .line 699
    return-void
.end method

.method public clearWeatherInfo()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 661
    iget-object v2, p0, Lcn/nubia/weather/data/DataCenter;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 662
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/weather/data/DataCenter;->ismIsPrepare()Z

    move-result v1

    if-nez v1, :cond_0

    .line 663
    const-string v1, "DataCenter"

    const-string v3, "Not Prepare!"

    invoke-static {v1, v3}, Lcn/nubia/weather/utils/ZLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    monitor-exit v2

    .line 678
    :goto_0
    return-void

    .line 666
    :cond_0
    invoke-direct {p0}, Lcn/nubia/weather/data/DataCenter;->clearManualWeather()V

    .line 667
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 668
    new-instance v0, Lcn/nubia/weather/data/DataCenter$ObserverObject;

    sget-object v2, Lcn/nubia/weather/data/DataCenter$OperationType;->CLEAR:Lcn/nubia/weather/data/DataCenter$OperationType;

    sget-object v3, Lcn/nubia/weather/data/DataCenter$ModelType;->WEATHER:Lcn/nubia/weather/data/DataCenter$ModelType;

    move-object v1, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcn/nubia/weather/data/DataCenter$ObserverObject;-><init>(Lcn/nubia/weather/data/DataCenter;Lcn/nubia/weather/data/DataCenter$OperationType;Lcn/nubia/weather/data/DataCenter$ModelType;Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    .local v0, "object":Lcn/nubia/weather/data/DataCenter$ObserverObject;
    invoke-virtual {p0}, Lcn/nubia/weather/data/DataCenter;->setChanged()V

    .line 672
    invoke-virtual {p0, v0}, Lcn/nubia/weather/data/DataCenter;->notifyObservers(Ljava/lang/Object;)V

    .line 673
    iget-object v2, p0, Lcn/nubia/weather/data/DataCenter;->obj:Ljava/lang/Object;

    monitor-enter v2

    .line 674
    :try_start_1
    iget-object v1, p0, Lcn/nubia/weather/data/DataCenter;->mPersistenter:Lcn/nubia/weather/persistent/IPersistenter;

    if-eqz v1, :cond_1

    .line 675
    iget-object v1, p0, Lcn/nubia/weather/data/DataCenter;->mPersistenter:Lcn/nubia/weather/persistent/IPersistenter;

    invoke-interface {v1}, Lcn/nubia/weather/persistent/IPersistenter;->clearManualWeatherInfo()V

    .line 677
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 667
    .end local v0    # "object":Lcn/nubia/weather/data/DataCenter$ObserverObject;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public dragTo(II)V
    .locals 8
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    const/4 v5, 0x0

    .line 827
    const/4 v7, 0x0

    .line 828
    .local v7, "model":Lcn/nubia/weather/model/WeatherModel;
    iget-object v3, p0, Lcn/nubia/weather/data/DataCenter;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 829
    :try_start_0
    iget-object v2, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcn/nubia/weather/model/WeatherModel;

    move-object v7, v0

    .line 830
    iget-object v2, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 831
    iget-object v2, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v2, p2, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 832
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 833
    iget-object v3, p0, Lcn/nubia/weather/data/DataCenter;->obj:Ljava/lang/Object;

    monitor-enter v3

    .line 834
    :try_start_1
    iget-object v2, p0, Lcn/nubia/weather/data/DataCenter;->mPersistenter:Lcn/nubia/weather/persistent/IPersistenter;

    if-eqz v2, :cond_0

    .line 835
    iget-object v2, p0, Lcn/nubia/weather/data/DataCenter;->mPersistenter:Lcn/nubia/weather/persistent/IPersistenter;

    invoke-interface {v2, v7}, Lcn/nubia/weather/persistent/IPersistenter;->changeIndex(Lcn/nubia/weather/model/WeatherModel;)V

    .line 837
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 838
    invoke-virtual {p0}, Lcn/nubia/weather/data/DataCenter;->setChanged()V

    .line 839
    new-instance v1, Lcn/nubia/weather/data/DataCenter$ObserverObject;

    sget-object v3, Lcn/nubia/weather/data/DataCenter$OperationType;->SWTICH:Lcn/nubia/weather/data/DataCenter$OperationType;

    sget-object v4, Lcn/nubia/weather/data/DataCenter$ModelType;->WEATHER:Lcn/nubia/weather/data/DataCenter$ModelType;

    move-object v2, p0

    move-object v6, v5

    invoke-direct/range {v1 .. v6}, Lcn/nubia/weather/data/DataCenter$ObserverObject;-><init>(Lcn/nubia/weather/data/DataCenter;Lcn/nubia/weather/data/DataCenter$OperationType;Lcn/nubia/weather/data/DataCenter$ModelType;Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    .local v1, "object":Lcn/nubia/weather/data/DataCenter$ObserverObject;
    invoke-virtual {p0, v1}, Lcn/nubia/weather/data/DataCenter;->notifyObservers(Ljava/lang/Object;)V

    .line 842
    return-void

    .line 832
    .end local v1    # "object":Lcn/nubia/weather/data/DataCenter$ObserverObject;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 837
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public getCityNames()Ljava/lang/String;
    .locals 7

    .prologue
    .line 869
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 870
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v0, ","

    .line 871
    .local v0, "comma":Ljava/lang/String;
    iget-object v6, p0, Lcn/nubia/weather/data/DataCenter;->lock:Ljava/lang/Object;

    monitor-enter v6

    .line 872
    :try_start_0
    iget-object v5, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    if-nez v5, :cond_0

    .line 873
    const-string v5, ""

    monitor-exit v6

    .line 884
    :goto_0
    return-object v5

    .line 875
    :cond_0
    iget-object v5, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 876
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 877
    iget-object v5, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/weather/model/WeatherModel;

    .line 878
    .local v2, "m":Lcn/nubia/weather/model/WeatherModel;
    invoke-virtual {v2}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v5

    if-nez v5, :cond_1

    .line 879
    invoke-virtual {v2}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 883
    .end local v2    # "m":Lcn/nubia/weather/model/WeatherModel;
    :cond_2
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 884
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 883
    .end local v1    # "i":I
    .end local v4    # "size":I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public getLocationWeather()Lcn/nubia/weather/model/WeatherModel;
    .locals 4

    .prologue
    .line 288
    iget-object v1, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/model/WeatherModel;

    .line 289
    .local v0, "model":Lcn/nubia/weather/model/WeatherModel;
    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 293
    .end local v0    # "model":Lcn/nubia/weather/model/WeatherModel;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOrderStr()Ljava/lang/String;
    .locals 6

    .prologue
    .line 850
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 851
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcn/nubia/weather/data/DataCenter;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 853
    :try_start_0
    iget-object v4, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 854
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 855
    iget-object v4, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/weather/model/WeatherModel;

    .line 856
    .local v1, "m":Lcn/nubia/weather/model/WeatherModel;
    invoke-virtual {v1}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    const-string v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    invoke-virtual {v1}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 859
    add-int/lit8 v4, v3, -0x1

    if-eq v0, v4, :cond_0

    .line 860
    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 863
    .end local v1    # "m":Lcn/nubia/weather/model/WeatherModel;
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 864
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 863
    .end local v0    # "i":I
    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 347
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWeater(Ljava/lang/String;Ljava/lang/String;I)Lcn/nubia/weather/model/WeatherModel;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "cityName"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 232
    iget-object v1, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/model/WeatherModel;

    .line 233
    .local v0, "model":Lcn/nubia/weather/model/WeatherModel;
    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v2

    if-ne v2, p3, :cond_0

    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    .end local v0    # "model":Lcn/nubia/weather/model/WeatherModel;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWeather(I)Lcn/nubia/weather/model/WeatherModel;
    .locals 1
    .param p1, "index"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    if-ltz p1, :cond_0

    .line 277
    iget-object v0, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/model/WeatherModel;

    .line 279
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWeatherByAreaID(Ljava/lang/String;)Lcn/nubia/weather/model/WeatherModel;
    .locals 5
    .param p1, "areaID"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 305
    if-nez p1, :cond_0

    move-object v0, v2

    .line 314
    :goto_0
    return-object v0

    .line 308
    :cond_0
    iget-object v3, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/model/WeatherModel;

    .line 309
    .local v0, "model":Lcn/nubia/weather/model/WeatherModel;
    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v1, ""

    .line 310
    .local v1, "str":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 309
    .end local v1    # "str":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .end local v0    # "model":Lcn/nubia/weather/model/WeatherModel;
    :cond_3
    move-object v0, v2

    .line 314
    goto :goto_0
.end method

.method public getWeatherInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/model/WeatherModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWeatherList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/model/WeatherModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 203
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/WeatherModel;>;"
    iget-object v5, p0, Lcn/nubia/weather/data/DataCenter;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 204
    :try_start_0
    iget-object v4, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    if-nez v4, :cond_0

    .line 205
    const/4 v2, 0x0

    monitor-exit v5

    .line 213
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/WeatherModel;>;"
    :goto_0
    return-object v2

    .line 207
    .restart local v2    # "result":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/WeatherModel;>;"
    :cond_0
    iget-object v4, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 208
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_1

    .line 209
    iget-object v4, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/weather/model/WeatherModel;

    .line 210
    .local v1, "m":Lcn/nubia/weather/model/WeatherModel;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 212
    .end local v1    # "m":Lcn/nubia/weather/model/WeatherModel;
    :cond_1
    monitor-exit v5

    goto :goto_0

    .end local v0    # "i":I
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/WeatherModel;>;"
    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getWeatherListButLocationCity()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/model/WeatherModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 223
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/WeatherModel;>;"
    iget-object v2, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/model/WeatherModel;

    .line 224
    .local v0, "model":Lcn/nubia/weather/model/WeatherModel;
    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 225
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 228
    .end local v0    # "model":Lcn/nubia/weather/model/WeatherModel;
    :cond_1
    return-object v1
.end method

.method public hasLocation()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 257
    iget-object v0, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 263
    :goto_0
    return v0

    .line 260
    :cond_0
    iget-object v0, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    .line 261
    goto :goto_0

    :cond_1
    move v0, v1

    .line 263
    goto :goto_0
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 4
    .param p1, "areaId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 326
    if-nez p1, :cond_1

    move v0, v2

    .line 335
    :cond_0
    :goto_0
    return v0

    .line 329
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 330
    iget-object v1, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v1}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    .line 331
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v1}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 329
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    .line 335
    goto :goto_0
.end method

.method public ismIsPrepare()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcn/nubia/weather/data/DataCenter;->mIsPrepare:Z

    return v0
.end method

.method public notifyWithNoUpdate(Lcn/nubia/weather/model/WeatherModel;)V
    .locals 6
    .param p1, "weather"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    .line 806
    const/4 v0, 0x0

    .line 807
    .local v0, "object":Lcn/nubia/weather/data/DataCenter$ObserverObject;
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v1

    if-nez v1, :cond_0

    .line 808
    new-instance v0, Lcn/nubia/weather/data/DataCenter$ObserverObject;

    .end local v0    # "object":Lcn/nubia/weather/data/DataCenter$ObserverObject;
    sget-object v2, Lcn/nubia/weather/data/DataCenter$OperationType;->UPDATE:Lcn/nubia/weather/data/DataCenter$OperationType;

    sget-object v3, Lcn/nubia/weather/data/DataCenter$ModelType;->WEATHER:Lcn/nubia/weather/data/DataCenter$ModelType;

    .line 809
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/weather/data/DataCenter$ObserverObject;-><init>(Lcn/nubia/weather/data/DataCenter;Lcn/nubia/weather/data/DataCenter$OperationType;Lcn/nubia/weather/data/DataCenter$ModelType;Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    .restart local v0    # "object":Lcn/nubia/weather/data/DataCenter$ObserverObject;
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/weather/data/DataCenter;->setChanged()V

    .line 815
    invoke-virtual {p0, v0}, Lcn/nubia/weather/data/DataCenter;->notifyObservers(Ljava/lang/Object;)V

    .line 816
    return-void

    .line 811
    :cond_0
    new-instance v0, Lcn/nubia/weather/data/DataCenter$ObserverObject;

    .end local v0    # "object":Lcn/nubia/weather/data/DataCenter$ObserverObject;
    sget-object v2, Lcn/nubia/weather/data/DataCenter$OperationType;->UPDATE_LOCATION:Lcn/nubia/weather/data/DataCenter$OperationType;

    sget-object v3, Lcn/nubia/weather/data/DataCenter$ModelType;->WEATHER:Lcn/nubia/weather/data/DataCenter$ModelType;

    .line 812
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/weather/data/DataCenter$ObserverObject;-><init>(Lcn/nubia/weather/data/DataCenter;Lcn/nubia/weather/data/DataCenter$OperationType;Lcn/nubia/weather/data/DataCenter$ModelType;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "object":Lcn/nubia/weather/data/DataCenter$ObserverObject;
    goto :goto_0
.end method

.method public removeWeatherInfo(Lcn/nubia/weather/model/WeatherModel;)V
    .locals 8
    .param p1, "weather"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    const/4 v4, 0x1

    .line 608
    if-nez p1, :cond_0

    .line 655
    :goto_0
    return-void

    .line 611
    :cond_0
    const-string v1, "DataCenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeWeatherInfo ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 612
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 613
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 611
    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    iget-object v2, p0, Lcn/nubia/weather/data/DataCenter;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 615
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/weather/data/DataCenter;->ismIsPrepare()Z

    move-result v1

    if-nez v1, :cond_1

    .line 616
    const-string v1, "DataCenter"

    const-string v3, "Not Prepare!"

    invoke-static {v1, v3}, Lcn/nubia/weather/utils/ZLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    monitor-exit v2

    goto :goto_0

    .line 642
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 619
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 620
    iget-object v1, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v6, v1, -0x1

    .line 621
    .local v6, "index":I
    const/4 v7, 0x0

    .line 622
    .local v7, "model":Lcn/nubia/weather/model/WeatherModel;
    :goto_1
    if-ltz v6, :cond_5

    .line 623
    iget-object v1, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "model":Lcn/nubia/weather/model/WeatherModel;
    check-cast v7, Lcn/nubia/weather/model/WeatherModel;

    .line 624
    .restart local v7    # "model":Lcn/nubia/weather/model/WeatherModel;
    invoke-virtual {v7}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 625
    iget-object v1, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 626
    invoke-direct {p0, v7}, Lcn/nubia/weather/data/DataCenter;->moveToGarbageCache(Lcn/nubia/weather/model/WeatherModel;)V

    .line 622
    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 630
    .end local v6    # "index":I
    .end local v7    # "model":Lcn/nubia/weather/model/WeatherModel;
    :cond_3
    iget-object v1, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v6, v1, -0x1

    .line 631
    .restart local v6    # "index":I
    const/4 v7, 0x0

    .line 632
    .restart local v7    # "model":Lcn/nubia/weather/model/WeatherModel;
    :goto_2
    if-ltz v6, :cond_5

    .line 633
    iget-object v1, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "model":Lcn/nubia/weather/model/WeatherModel;
    check-cast v7, Lcn/nubia/weather/model/WeatherModel;

    .line 634
    .restart local v7    # "model":Lcn/nubia/weather/model/WeatherModel;
    invoke-virtual {v7}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 635
    invoke-virtual {v7}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 636
    invoke-virtual {v7}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v1

    if-nez v1, :cond_4

    .line 637
    iget-object v1, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 638
    invoke-direct {p0, v7}, Lcn/nubia/weather/data/DataCenter;->moveToGarbageCache(Lcn/nubia/weather/model/WeatherModel;)V

    .line 632
    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 642
    :cond_5
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 644
    new-instance v0, Lcn/nubia/weather/data/DataCenter$ObserverObject;

    sget-object v2, Lcn/nubia/weather/data/DataCenter$OperationType;->REMOVE:Lcn/nubia/weather/data/DataCenter$OperationType;

    sget-object v3, Lcn/nubia/weather/data/DataCenter$ModelType;->WEATHER:Lcn/nubia/weather/data/DataCenter$ModelType;

    .line 645
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/weather/data/DataCenter$ObserverObject;-><init>(Lcn/nubia/weather/data/DataCenter;Lcn/nubia/weather/data/DataCenter$OperationType;Lcn/nubia/weather/data/DataCenter$ModelType;Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    .local v0, "object":Lcn/nubia/weather/data/DataCenter$ObserverObject;
    invoke-virtual {p0}, Lcn/nubia/weather/data/DataCenter;->setChanged()V

    .line 648
    invoke-virtual {p0, v0}, Lcn/nubia/weather/data/DataCenter;->notifyObservers(Ljava/lang/Object;)V

    .line 649
    iget-object v2, p0, Lcn/nubia/weather/data/DataCenter;->obj:Ljava/lang/Object;

    monitor-enter v2

    .line 650
    :try_start_2
    iget-object v1, p0, Lcn/nubia/weather/data/DataCenter;->mPersistenter:Lcn/nubia/weather/persistent/IPersistenter;

    if-eqz v1, :cond_6

    .line 652
    iget-object v1, p0, Lcn/nubia/weather/data/DataCenter;->mPersistenter:Lcn/nubia/weather/persistent/IPersistenter;

    invoke-interface {v1, p1}, Lcn/nubia/weather/persistent/IPersistenter;->removeWeatherInfo(Lcn/nubia/weather/model/WeatherModel;)V

    .line 654
    :cond_6
    monitor-exit v2

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public updateModel(Lcn/nubia/weather/model/BaseModel;)V
    .locals 10
    .param p1, "model"    # Lcn/nubia/weather/model/BaseModel;

    .prologue
    .line 758
    if-nez p1, :cond_0

    .line 802
    :goto_0
    return-void

    .line 762
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 763
    .local v8, "weatherModels":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/WeatherModel;>;"
    const/4 v7, 0x0

    .line 764
    .local v7, "weatherModel":Lcn/nubia/weather/model/WeatherModel;
    iget-object v2, p0, Lcn/nubia/weather/data/DataCenter;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 765
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/weather/data/DataCenter;->ismIsPrepare()Z

    move-result v1

    if-nez v1, :cond_1

    .line 766
    const-string v1, "DataCenter"

    const-string v3, "Not Prepare!"

    invoke-static {v1, v3}, Lcn/nubia/weather/utils/ZLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    monitor-exit v2

    goto :goto_0

    .line 777
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 769
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcn/nubia/weather/data/DataCenter;->getMatchedModel(Lcn/nubia/weather/model/BaseModel;)Ljava/util/List;

    move-result-object v8

    .line 770
    invoke-direct {p0, v8, p1}, Lcn/nubia/weather/data/DataCenter;->isNeedUpdate(Ljava/util/List;Lcn/nubia/weather/model/BaseModel;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 771
    monitor-exit v2

    goto :goto_0

    .line 773
    :cond_2
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/weather/model/WeatherModel;

    .line 774
    .local v6, "m":Lcn/nubia/weather/model/WeatherModel;
    invoke-virtual {p1, v6}, Lcn/nubia/weather/model/BaseModel;->setToWeatherModelV2(Lcn/nubia/weather/model/WeatherModel;)V

    .line 775
    move-object v7, v6

    .line 776
    goto :goto_1

    .line 777
    .end local v6    # "m":Lcn/nubia/weather/model/WeatherModel;
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 779
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/weather/model/WeatherModel;

    .line 780
    .restart local v6    # "m":Lcn/nubia/weather/model/WeatherModel;
    const/4 v0, 0x0

    .line 781
    .local v0, "object":Lcn/nubia/weather/data/DataCenter$ObserverObject;
    invoke-virtual {v6}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 782
    new-instance v0, Lcn/nubia/weather/data/DataCenter$ObserverObject;

    .end local v0    # "object":Lcn/nubia/weather/data/DataCenter$ObserverObject;
    sget-object v2, Lcn/nubia/weather/data/DataCenter$OperationType;->UPDATE_LOCATION:Lcn/nubia/weather/data/DataCenter$OperationType;

    sget-object v3, Lcn/nubia/weather/data/DataCenter$ModelType;->WEATHER:Lcn/nubia/weather/data/DataCenter$ModelType;

    .line 783
    invoke-virtual {v6}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/weather/data/DataCenter$ObserverObject;-><init>(Lcn/nubia/weather/data/DataCenter;Lcn/nubia/weather/data/DataCenter$OperationType;Lcn/nubia/weather/data/DataCenter$ModelType;Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    .restart local v0    # "object":Lcn/nubia/weather/data/DataCenter$ObserverObject;
    :cond_5
    :goto_3
    invoke-virtual {v6}, Lcn/nubia/weather/model/WeatherModel;->getGmtOffSet()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 789
    invoke-virtual {p0}, Lcn/nubia/weather/data/DataCenter;->setChanged()V

    .line 790
    invoke-virtual {p0, v0}, Lcn/nubia/weather/data/DataCenter;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_2

    .line 784
    :cond_6
    invoke-virtual {v6}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v1

    if-nez v1, :cond_5

    .line 785
    new-instance v0, Lcn/nubia/weather/data/DataCenter$ObserverObject;

    .end local v0    # "object":Lcn/nubia/weather/data/DataCenter$ObserverObject;
    sget-object v2, Lcn/nubia/weather/data/DataCenter$OperationType;->UPDATE:Lcn/nubia/weather/data/DataCenter$OperationType;

    sget-object v3, Lcn/nubia/weather/data/DataCenter$ModelType;->WEATHER:Lcn/nubia/weather/data/DataCenter$ModelType;

    .line 786
    invoke-virtual {v6}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/weather/data/DataCenter$ObserverObject;-><init>(Lcn/nubia/weather/data/DataCenter;Lcn/nubia/weather/data/DataCenter$OperationType;Lcn/nubia/weather/data/DataCenter$ModelType;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "object":Lcn/nubia/weather/data/DataCenter$ObserverObject;
    goto :goto_3

    .line 795
    .end local v0    # "object":Lcn/nubia/weather/data/DataCenter$ObserverObject;
    .end local v6    # "m":Lcn/nubia/weather/model/WeatherModel;
    :cond_7
    iget-object v2, p0, Lcn/nubia/weather/data/DataCenter;->obj:Ljava/lang/Object;

    monitor-enter v2

    .line 796
    :try_start_2
    iget-object v1, p0, Lcn/nubia/weather/data/DataCenter;->mPersistenter:Lcn/nubia/weather/persistent/IPersistenter;

    if-eqz v1, :cond_8

    .line 797
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/weather/model/WeatherModel;

    .line 798
    .restart local v6    # "m":Lcn/nubia/weather/model/WeatherModel;
    iget-object v3, p0, Lcn/nubia/weather/data/DataCenter;->mPersistenter:Lcn/nubia/weather/persistent/IPersistenter;

    invoke-interface {v3, v6}, Lcn/nubia/weather/persistent/IPersistenter;->updateWeatherInfo(Lcn/nubia/weather/model/WeatherModel;)V

    goto :goto_4

    .line 801
    .end local v6    # "m":Lcn/nubia/weather/model/WeatherModel;
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_8
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0
.end method

.method public updateModelForNubia(Lcn/nubia/weather/model/WeatherModel;)V
    .locals 9
    .param p1, "model"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    .line 708
    if-nez p1, :cond_0

    .line 748
    :goto_0
    return-void

    .line 712
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 713
    .local v7, "weatherModels":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/WeatherModel;>;"
    iget-object v2, p0, Lcn/nubia/weather/data/DataCenter;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 714
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/weather/data/DataCenter;->ismIsPrepare()Z

    move-result v1

    if-nez v1, :cond_1

    .line 715
    const-string v1, "DataCenter"

    const-string v3, "Not Prepare!"

    invoke-static {v1, v3}, Lcn/nubia/weather/utils/ZLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    monitor-exit v2

    goto :goto_0

    .line 726
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 718
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcn/nubia/weather/data/DataCenter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/weather/model/WeatherModel;

    .line 719
    .local v6, "m":Lcn/nubia/weather/model/WeatherModel;
    invoke-virtual {v6}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 720
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 723
    .end local v6    # "m":Lcn/nubia/weather/model/WeatherModel;
    :cond_3
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/weather/model/WeatherModel;

    .line 724
    .restart local v6    # "m":Lcn/nubia/weather/model/WeatherModel;
    invoke-virtual {v6, p1}, Lcn/nubia/weather/model/WeatherModel;->copyModel(Lcn/nubia/weather/model/WeatherModel;)V

    goto :goto_2

    .line 726
    .end local v6    # "m":Lcn/nubia/weather/model/WeatherModel;
    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 727
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/weather/model/WeatherModel;

    .line 728
    .restart local v6    # "m":Lcn/nubia/weather/model/WeatherModel;
    const/4 v0, 0x0

    .line 729
    .local v0, "object":Lcn/nubia/weather/data/DataCenter$ObserverObject;
    invoke-virtual {v6}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 730
    new-instance v0, Lcn/nubia/weather/data/DataCenter$ObserverObject;

    .end local v0    # "object":Lcn/nubia/weather/data/DataCenter$ObserverObject;
    sget-object v2, Lcn/nubia/weather/data/DataCenter$OperationType;->UPDATE_LOCATION:Lcn/nubia/weather/data/DataCenter$OperationType;

    sget-object v3, Lcn/nubia/weather/data/DataCenter$ModelType;->WEATHER:Lcn/nubia/weather/data/DataCenter$ModelType;

    .line 731
    invoke-virtual {v6}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/weather/data/DataCenter$ObserverObject;-><init>(Lcn/nubia/weather/data/DataCenter;Lcn/nubia/weather/data/DataCenter$OperationType;Lcn/nubia/weather/data/DataCenter$ModelType;Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    .restart local v0    # "object":Lcn/nubia/weather/data/DataCenter$ObserverObject;
    :cond_5
    :goto_4
    invoke-virtual {p0}, Lcn/nubia/weather/data/DataCenter;->setChanged()V

    .line 737
    invoke-virtual {p0, v0}, Lcn/nubia/weather/data/DataCenter;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_3

    .line 732
    :cond_6
    invoke-virtual {v6}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v1

    if-nez v1, :cond_5

    .line 733
    new-instance v0, Lcn/nubia/weather/data/DataCenter$ObserverObject;

    .end local v0    # "object":Lcn/nubia/weather/data/DataCenter$ObserverObject;
    sget-object v2, Lcn/nubia/weather/data/DataCenter$OperationType;->UPDATE:Lcn/nubia/weather/data/DataCenter$OperationType;

    sget-object v3, Lcn/nubia/weather/data/DataCenter$ModelType;->WEATHER:Lcn/nubia/weather/data/DataCenter$ModelType;

    .line 734
    invoke-virtual {v6}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/weather/data/DataCenter$ObserverObject;-><init>(Lcn/nubia/weather/data/DataCenter;Lcn/nubia/weather/data/DataCenter$OperationType;Lcn/nubia/weather/data/DataCenter$ModelType;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "object":Lcn/nubia/weather/data/DataCenter$ObserverObject;
    goto :goto_4

    .line 741
    .end local v0    # "object":Lcn/nubia/weather/data/DataCenter$ObserverObject;
    .end local v6    # "m":Lcn/nubia/weather/model/WeatherModel;
    :cond_7
    iget-object v2, p0, Lcn/nubia/weather/data/DataCenter;->obj:Ljava/lang/Object;

    monitor-enter v2

    .line 742
    :try_start_2
    iget-object v1, p0, Lcn/nubia/weather/data/DataCenter;->mPersistenter:Lcn/nubia/weather/persistent/IPersistenter;

    if-eqz v1, :cond_8

    .line 743
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/weather/model/WeatherModel;

    .line 744
    .restart local v6    # "m":Lcn/nubia/weather/model/WeatherModel;
    iget-object v3, p0, Lcn/nubia/weather/data/DataCenter;->mPersistenter:Lcn/nubia/weather/persistent/IPersistenter;

    invoke-interface {v3, v6}, Lcn/nubia/weather/persistent/IPersistenter;->updateWeatherInfoForNubia(Lcn/nubia/weather/model/WeatherModel;)V

    goto :goto_5

    .line 747
    .end local v6    # "m":Lcn/nubia/weather/model/WeatherModel;
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_8
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0
.end method
