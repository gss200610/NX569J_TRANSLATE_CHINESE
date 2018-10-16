.class public Lcn/nubia/weather/data/DataCenter$ObserverObject;
.super Ljava/lang/Object;
.source "DataCenter.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/data/DataCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ObserverObject"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mAreaID:Ljava/lang/String;

.field private mBaseModel:Lcn/nubia/weather/model/BaseModel;

.field private mCityName:Ljava/lang/String;

.field private mModelType:Lcn/nubia/weather/data/DataCenter$ModelType;

.field private mOperationType:Lcn/nubia/weather/data/DataCenter$OperationType;

.field final synthetic this$0:Lcn/nubia/weather/data/DataCenter;


# direct methods
.method public constructor <init>(Lcn/nubia/weather/data/DataCenter;Lcn/nubia/weather/data/DataCenter$OperationType;Lcn/nubia/weather/data/DataCenter$ModelType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcn/nubia/weather/data/DataCenter;
    .param p2, "mOperationType"    # Lcn/nubia/weather/data/DataCenter$OperationType;
    .param p3, "mModelType"    # Lcn/nubia/weather/data/DataCenter$ModelType;
    .param p4, "mAreaID"    # Ljava/lang/String;
    .param p5, "mCityName"    # Ljava/lang/String;

    .prologue
    .line 930
    iput-object p1, p0, Lcn/nubia/weather/data/DataCenter$ObserverObject;->this$0:Lcn/nubia/weather/data/DataCenter;

    .line 931
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 925
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/weather/data/DataCenter$ObserverObject;->mAreaID:Ljava/lang/String;

    .line 926
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/weather/data/DataCenter$ObserverObject;->mCityName:Ljava/lang/String;

    .line 932
    iput-object p2, p0, Lcn/nubia/weather/data/DataCenter$ObserverObject;->mOperationType:Lcn/nubia/weather/data/DataCenter$OperationType;

    .line 933
    iput-object p3, p0, Lcn/nubia/weather/data/DataCenter$ObserverObject;->mModelType:Lcn/nubia/weather/data/DataCenter$ModelType;

    .line 934
    iput-object p4, p0, Lcn/nubia/weather/data/DataCenter$ObserverObject;->mAreaID:Ljava/lang/String;

    .line 935
    iput-object p5, p0, Lcn/nubia/weather/data/DataCenter$ObserverObject;->mCityName:Ljava/lang/String;

    .line 936
    return-void
.end method

.method public constructor <init>(Lcn/nubia/weather/data/DataCenter;Lcn/nubia/weather/data/DataCenter$OperationType;Lcn/nubia/weather/data/DataCenter$ModelType;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/weather/model/BaseModel;)V
    .locals 1
    .param p1, "this$0"    # Lcn/nubia/weather/data/DataCenter;
    .param p2, "mOperationType"    # Lcn/nubia/weather/data/DataCenter$OperationType;
    .param p3, "mModelType"    # Lcn/nubia/weather/data/DataCenter$ModelType;
    .param p4, "mAreaID"    # Ljava/lang/String;
    .param p5, "mCityName"    # Ljava/lang/String;
    .param p6, "mBaseModel"    # Lcn/nubia/weather/model/BaseModel;

    .prologue
    .line 939
    iput-object p1, p0, Lcn/nubia/weather/data/DataCenter$ObserverObject;->this$0:Lcn/nubia/weather/data/DataCenter;

    .line 940
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 925
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/weather/data/DataCenter$ObserverObject;->mAreaID:Ljava/lang/String;

    .line 926
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/weather/data/DataCenter$ObserverObject;->mCityName:Ljava/lang/String;

    .line 941
    iput-object p2, p0, Lcn/nubia/weather/data/DataCenter$ObserverObject;->mOperationType:Lcn/nubia/weather/data/DataCenter$OperationType;

    .line 942
    iput-object p3, p0, Lcn/nubia/weather/data/DataCenter$ObserverObject;->mModelType:Lcn/nubia/weather/data/DataCenter$ModelType;

    .line 943
    iput-object p4, p0, Lcn/nubia/weather/data/DataCenter$ObserverObject;->mAreaID:Ljava/lang/String;

    .line 944
    iput-object p5, p0, Lcn/nubia/weather/data/DataCenter$ObserverObject;->mCityName:Ljava/lang/String;

    .line 945
    iput-object p6, p0, Lcn/nubia/weather/data/DataCenter$ObserverObject;->mBaseModel:Lcn/nubia/weather/model/BaseModel;

    .line 946
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 974
    if-nez p1, :cond_1

    .line 985
    :cond_0
    :goto_0
    return v2

    .line 977
    :cond_1
    if-ne p0, p1, :cond_2

    move v2, v1

    .line 978
    goto :goto_0

    .line 980
    :cond_2
    instance-of v3, p1, Lcn/nubia/weather/data/DataCenter$ObserverObject;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 981
    check-cast v0, Lcn/nubia/weather/data/DataCenter$ObserverObject;

    .line 982
    .local v0, "info":Lcn/nubia/weather/data/DataCenter$ObserverObject;
    invoke-virtual {p0}, Lcn/nubia/weather/data/DataCenter$ObserverObject;->getmAreaID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcn/nubia/weather/data/DataCenter$ObserverObject;->getmAreaID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 983
    invoke-virtual {p0}, Lcn/nubia/weather/data/DataCenter$ObserverObject;->getmCityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcn/nubia/weather/data/DataCenter$ObserverObject;->getmCityName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public getmAreaID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 957
    iget-object v0, p0, Lcn/nubia/weather/data/DataCenter$ObserverObject;->mAreaID:Ljava/lang/String;

    return-object v0
.end method

.method public getmBaseModel()Lcn/nubia/weather/model/BaseModel;
    .locals 1

    .prologue
    .line 961
    iget-object v0, p0, Lcn/nubia/weather/data/DataCenter$ObserverObject;->mBaseModel:Lcn/nubia/weather/model/BaseModel;

    return-object v0
.end method

.method public getmCityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, Lcn/nubia/weather/data/DataCenter$ObserverObject;->mCityName:Ljava/lang/String;

    return-object v0
.end method

.method public getmModelType()Lcn/nubia/weather/data/DataCenter$ModelType;
    .locals 1

    .prologue
    .line 953
    iget-object v0, p0, Lcn/nubia/weather/data/DataCenter$ObserverObject;->mModelType:Lcn/nubia/weather/data/DataCenter$ModelType;

    return-object v0
.end method

.method public getmOperationType()Lcn/nubia/weather/data/DataCenter$OperationType;
    .locals 1

    .prologue
    .line 949
    iget-object v0, p0, Lcn/nubia/weather/data/DataCenter$ObserverObject;->mOperationType:Lcn/nubia/weather/data/DataCenter$OperationType;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 991
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public setmCityName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCityName"    # Ljava/lang/String;

    .prologue
    .line 969
    iput-object p1, p0, Lcn/nubia/weather/data/DataCenter$ObserverObject;->mCityName:Ljava/lang/String;

    .line 970
    return-void
.end method
