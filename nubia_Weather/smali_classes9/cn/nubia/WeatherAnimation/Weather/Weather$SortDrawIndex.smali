.class Lcn/nubia/WeatherAnimation/Weather/Weather$SortDrawIndex;
.super Ljava/lang/Object;
.source "Weather.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/WeatherAnimation/Weather/Weather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SortDrawIndex"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcn/nubia/WeatherAnimation/Weather/DrawElement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/WeatherAnimation/Weather/Weather;


# direct methods
.method constructor <init>(Lcn/nubia/WeatherAnimation/Weather/Weather;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcn/nubia/WeatherAnimation/Weather/Weather$SortDrawIndex;->this$0:Lcn/nubia/WeatherAnimation/Weather/Weather;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcn/nubia/WeatherAnimation/Weather/DrawElement;Lcn/nubia/WeatherAnimation/Weather/DrawElement;)I
    .locals 3
    .param p1, "drawElement1"    # Lcn/nubia/WeatherAnimation/Weather/DrawElement;
    .param p2, "drawElement2"    # Lcn/nubia/WeatherAnimation/Weather/DrawElement;

    .prologue
    .line 283
    invoke-virtual {p1}, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->getDrawIndex()F

    move-result v0

    .line 284
    .local v0, "index1":F
    invoke-virtual {p2}, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->getDrawIndex()F

    move-result v1

    .line 286
    .local v1, "index2":F
    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    .line 287
    const/4 v2, 0x1

    .line 291
    :goto_0
    return v2

    .line 288
    :cond_0
    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    .line 289
    const/4 v2, -0x1

    goto :goto_0

    .line 291
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcn/nubia/WeatherAnimation/Weather/DrawElement;

    check-cast p2, Lcn/nubia/WeatherAnimation/Weather/DrawElement;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/WeatherAnimation/Weather/Weather$SortDrawIndex;->compare(Lcn/nubia/WeatherAnimation/Weather/DrawElement;Lcn/nubia/WeatherAnimation/Weather/DrawElement;)I

    move-result v0

    return v0
.end method
