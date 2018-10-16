.class public final Lcom/loc/bx;
.super Ljava/lang/Object;
.source "APS.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/bx$a;
    }
.end annotation


# static fields
.field static G:I

.field public static J:Z

.field private static N:Z

.field private static P:I


# instance fields
.field A:Ljava/lang/StringBuilder;

.field B:Z

.field public C:Z

.field D:I

.field E:Lcom/loc/cb;

.field F:Z

.field H:Lcom/loc/ca;

.field I:Ljava/lang/String;

.field K:Landroid/content/IntentFilter;

.field private L:I

.field private M:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private Q:Z

.field a:Landroid/content/Context;

.field b:Landroid/net/ConnectivityManager;

.field c:Lcom/loc/cj;

.field d:Lcom/loc/cg;

.field e:Lcom/loc/ci;

.field f:Lcom/loc/ch;

.field g:Lcom/loc/cl;

.field h:Lcom/loc/by;

.field i:Lcom/loc/cd;

.field j:Lcom/loc/cs;

.field k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field l:Lcom/loc/bx$a;

.field m:Lcom/amap/api/location/AMapLocationClientOption;

.field n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

.field o:J

.field p:Lcom/loc/ct;

.field q:Z

.field r:Lcom/loc/cq;

.field s:Ljava/lang/StringBuilder;

.field t:Z

.field u:Z

.field v:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

.field w:Z

.field x:Z

.field y:Landroid/net/wifi/WifiInfo;

.field z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/loc/bx;->N:Z

    sput v1, Lcom/loc/bx;->P:I

    sput v1, Lcom/loc/bx;->G:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/loc/bx;->J:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/loc/bx;->a:Landroid/content/Context;

    iput-object v2, p0, Lcom/loc/bx;->b:Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/loc/bx;->c:Lcom/loc/cj;

    iput-object v2, p0, Lcom/loc/bx;->d:Lcom/loc/cg;

    iput-object v2, p0, Lcom/loc/bx;->e:Lcom/loc/ci;

    iput-object v2, p0, Lcom/loc/bx;->f:Lcom/loc/ch;

    iput-object v2, p0, Lcom/loc/bx;->g:Lcom/loc/cl;

    iput-object v2, p0, Lcom/loc/bx;->h:Lcom/loc/by;

    iput-object v2, p0, Lcom/loc/bx;->i:Lcom/loc/cd;

    iput-object v2, p0, Lcom/loc/bx;->j:Lcom/loc/cs;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/bx;->k:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/loc/bx;->l:Lcom/loc/bx$a;

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v0, p0, Lcom/loc/bx;->m:Lcom/amap/api/location/AMapLocationClientOption;

    iput-object v2, p0, Lcom/loc/bx;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/bx;->o:J

    iput v3, p0, Lcom/loc/bx;->L:I

    iput-object v2, p0, Lcom/loc/bx;->p:Lcom/loc/ct;

    iput-boolean v3, p0, Lcom/loc/bx;->q:Z

    iput-object v2, p0, Lcom/loc/bx;->M:Ljava/lang/String;

    iput-object v2, p0, Lcom/loc/bx;->r:Lcom/loc/cq;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/loc/bx;->s:Ljava/lang/StringBuilder;

    iput-boolean v4, p0, Lcom/loc/bx;->t:Z

    iput-boolean v4, p0, Lcom/loc/bx;->u:Z

    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->DEFAULT:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    iput-object v0, p0, Lcom/loc/bx;->v:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    iput-boolean v4, p0, Lcom/loc/bx;->w:Z

    iput-boolean v3, p0, Lcom/loc/bx;->x:Z

    iput-object v2, p0, Lcom/loc/bx;->y:Landroid/net/wifi/WifiInfo;

    iput-boolean v4, p0, Lcom/loc/bx;->z:Z

    iput-object v2, p0, Lcom/loc/bx;->O:Ljava/lang/String;

    iput-object v2, p0, Lcom/loc/bx;->A:Ljava/lang/StringBuilder;

    iput-boolean v3, p0, Lcom/loc/bx;->B:Z

    iput-boolean v3, p0, Lcom/loc/bx;->C:Z

    const/16 v0, 0xc

    iput v0, p0, Lcom/loc/bx;->D:I

    iput-boolean v4, p0, Lcom/loc/bx;->Q:Z

    iput-object v2, p0, Lcom/loc/bx;->E:Lcom/loc/cb;

    iput-boolean v3, p0, Lcom/loc/bx;->F:Z

    iput-object v2, p0, Lcom/loc/bx;->H:Lcom/loc/ca;

    iput-object v2, p0, Lcom/loc/bx;->I:Ljava/lang/String;

    iput-object v2, p0, Lcom/loc/bx;->K:Landroid/content/IntentFilter;

    return-void
.end method

.method private static a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 3

    new-instance v0, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setErrorCode(I)V

    invoke-virtual {v0, p1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V

    const/16 v1, 0xf

    if-ne p0, v1, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0x867

    invoke-static {v1, v2}, Lcom/loc/da;->a(Ljava/lang/String;I)V

    :cond_0
    return-object v0
.end method

.method private a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;Lcom/loc/br;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 6

    const/4 v5, 0x4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v1, p2, Lcom/loc/br;->a:[B

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/loc/br;->a:[B

    array-length v1, v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setErrorCode(I)V

    iget-object v0, p0, Lcom/loc/bx;->s:Ljava/lang/StringBuilder;

    const-string v1, "\u7f51\u7edc\u5f02\u5e38,\u8bf7\u6c42\u5f02\u5e38#0403"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/loc/bx;->A:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/bx;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/loc/br;->d:Ljava/lang/String;

    const/16 v1, 0x7f9

    invoke-static {v0, v1}, Lcom/loc/da;->a(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    new-instance v1, Lcom/loc/cs;

    invoke-direct {v1}, Lcom/loc/cs;-><init>()V

    new-instance v2, Ljava/lang/String;

    iget-object v3, p2, Lcom/loc/br;->a:[B

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v3, "\"status\":\"0\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/loc/bx;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v0, p2}, Lcom/loc/cs;->a(Ljava/lang/String;Landroid/content/Context;Lcom/loc/br;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object p1

    iget-object v0, p0, Lcom/loc/bx;->A:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->h(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p1, v5}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setErrorCode(I)V

    const-string v1, "APS"

    const-string v2, "checkResponseEntity"

    invoke-static {v0, v1, v2}, Lcom/loc/cv;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/loc/bx;->s:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "check response exception ex is"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#0403"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/loc/bx;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v1, "</body></html>"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setErrorCode(I)V

    iget-object v0, p0, Lcom/loc/bx;->c:Lcom/loc/cj;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/loc/bx;->c:Lcom/loc/cj;

    iget-object v1, p0, Lcom/loc/bx;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Lcom/loc/cj;->a(Landroid/net/ConnectivityManager;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/loc/bx;->s:Ljava/lang/StringBuilder;

    const-string v1, "\u60a8\u8fde\u63a5\u7684\u662f\u4e00\u4e2a\u9700\u8981\u767b\u5f55\u7684\u7f51\u7edc\uff0c\u8bf7\u786e\u8ba4\u5df2\u7ecf\u767b\u5165\u7f51\u7edc#0501"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/16 v1, 0x803

    invoke-static {v0, v1}, Lcom/loc/da;->a(Ljava/lang/String;I)V

    :goto_1
    iget-object v0, p0, Lcom/loc/bx;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/loc/bx;->s:Ljava/lang/StringBuilder;

    const-string v1, "\u8bf7\u6c42\u53ef\u80fd\u88ab\u52ab\u6301\u4e86#0502"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/16 v1, 0x804

    invoke-static {v0, v1}, Lcom/loc/da;->a(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_5
    move-object p1, v0

    goto/16 :goto_0
.end method

.method private a(ZZ)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v12, 0x6

    const/4 v11, 0x5

    new-instance v10, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const-string v0, ""

    invoke-direct {v10, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/loc/bx;->p:Lcom/loc/ct;

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/ct;

    invoke-direct {v0}, Lcom/loc/ct;-><init>()V

    iput-object v0, p0, Lcom/loc/bx;->p:Lcom/loc/ct;

    :cond_0
    iget-object v0, p0, Lcom/loc/bx;->m:Lcom/amap/api/location/AMapLocationClientOption;

    if-nez v0, :cond_1

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v0, p0, Lcom/loc/bx;->m:Lcom/amap/api/location/AMapLocationClientOption;

    :cond_1
    iget-object v0, p0, Lcom/loc/bx;->p:Lcom/loc/ct;

    iget-object v1, p0, Lcom/loc/bx;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/bx;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->isNeedAddress()Z

    move-result v2

    iget-object v3, p0, Lcom/loc/bx;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->isOffset()Z

    move-result v3

    iget-object v4, p0, Lcom/loc/bx;->d:Lcom/loc/cg;

    iget-object v5, p0, Lcom/loc/bx;->c:Lcom/loc/cj;

    iget-object v6, p0, Lcom/loc/bx;->b:Landroid/net/ConnectivityManager;

    iget-object v7, p0, Lcom/loc/bx;->i:Lcom/loc/cd;

    iget-object v8, p0, Lcom/loc/bx;->f:Lcom/loc/ch;

    invoke-virtual {v8}, Lcom/loc/ch;->f()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/loc/bx;->I:Ljava/lang/String;

    invoke-virtual/range {v0 .. v9}, Lcom/loc/ct;->a(Landroid/content/Context;ZZLcom/loc/cg;Lcom/loc/cj;Landroid/net/ConnectivityManager;Lcom/loc/cd;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/bx;->e:Lcom/loc/ci;

    iget-object v1, p0, Lcom/loc/bx;->d:Lcom/loc/cg;

    invoke-virtual {v0, v1}, Lcom/loc/ci;->a(Lcom/loc/cg;)V

    iget-object v0, p0, Lcom/loc/bx;->p:Lcom/loc/ct;

    invoke-virtual {v0}, Lcom/loc/ct;->a()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-static {}, Lcom/loc/dd;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/loc/bx;->o:J

    :try_start_1
    iget-object v1, p0, Lcom/loc/bx;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/loc/cv;->d(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/loc/bx;->r:Lcom/loc/cq;

    iget-object v2, p0, Lcom/loc/bx;->a:Landroid/content/Context;

    invoke-static {}, Lcom/loc/cv;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3, p2}, Lcom/loc/cq;->a(Landroid/content/Context;[BLjava/lang/String;Z)Lcom/loc/cr;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/bx;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/loc/co;->a(Landroid/content/Context;)Lcom/loc/co;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/loc/co;->a(Lcom/loc/cr;)V

    iget-object v1, p0, Lcom/loc/bx;->r:Lcom/loc/cq;

    invoke-virtual {v1, v0}, Lcom/loc/cq;->a(Lcom/loc/cr;)Lcom/loc/br;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    const-string v0, ""

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/loc/bx;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/co;->a(Landroid/content/Context;)Lcom/loc/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/co;->a()V

    iget-object v0, p0, Lcom/loc/bx;->r:Lcom/loc/cq;

    invoke-virtual {v0}, Lcom/loc/cq;->b()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v10, v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->a(J)V

    iget-object v0, v2, Lcom/loc/br;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/loc/bx;->s:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "#csid:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/loc/br;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v0, v2, Lcom/loc/br;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/loc/bx;->A:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->h(Ljava/lang/String;)V

    :cond_3
    if-nez p1, :cond_13

    invoke-direct {p0, v10, v2}, Lcom/loc/bx;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;Lcom/loc/br;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v1

    if-eqz v1, :cond_9

    move-object v10, v1

    :goto_0
    return-object v10

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/loc/bx;->s:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get parames error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#0301"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/16 v1, 0x7ef

    invoke-static {v0, v1}, Lcom/loc/da;->a(Ljava/lang/String;I)V

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/loc/bx;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/bx;->a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v10

    iget-object v0, p0, Lcom/loc/bx;->A:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->h(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    iget-object v0, p0, Lcom/loc/bx;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/co;->a(Landroid/content/Context;)Lcom/loc/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/co;->b()V

    const-string v0, "APS"

    const-string v2, "getApsLoc req"

    invoke-static {v1, v0, v2}, Lcom/loc/cv;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/mobile/binary"

    invoke-static {v0, v1}, Lcom/loc/da;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/loc/bx;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/dd;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/loc/bx;->s:Ljava/lang/StringBuilder;

    const-string v1, "\u7f51\u7edc\u5f02\u5e38\uff0c\u672a\u8fde\u63a5\u5230\u7f51\u7edc\uff0c\u8bf7\u8fde\u63a5\u7f51\u7edc#0401"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/loc/bx;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/bx;->a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v10

    iget-object v0, p0, Lcom/loc/bx;->A:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    instance-of v0, v1, Lcom/loc/k;

    if-eqz v0, :cond_8

    move-object v0, v1

    check-cast v0, Lcom/loc/k;

    invoke-virtual {v0}, Lcom/loc/k;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\u7f51\u7edc\u5f02\u5e38\u72b6\u6001\u7801"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/loc/bx;->s:Ljava/lang/StringBuilder;

    const-string v2, "\u7f51\u7edc\u5f02\u5e38\uff0c\u72b6\u6001\u7801\u9519\u8bef#0404"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast v1, Lcom/loc/k;

    invoke-virtual {v1}, Lcom/loc/k;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    check-cast v1, Lcom/loc/k;

    invoke-virtual {v1}, Lcom/loc/k;->e()I

    move-result v0

    const/16 v1, 0x17

    if-eq v0, v1, :cond_6

    invoke-static {}, Lcom/loc/dd;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/loc/bx;->o:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/loc/bx;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->getHttpTimeOut()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/loc/bx;->s:Ljava/lang/StringBuilder;

    const-string v1, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8fde\u63a5\u8d85\u65f6#0402"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/loc/bx;->s:Ljava/lang/StringBuilder;

    const-string v1, "\u7f51\u7edc\u5f02\u5e38,\u8bf7\u6c42\u5f02\u5e38#0403"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/loc/bx;->s:Ljava/lang/StringBuilder;

    const-string v1, "\u7f51\u7edc\u5f02\u5e38,\u8bf7\u6c42\u5f02\u5e38#0403"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_9
    iget-object v1, v2, Lcom/loc/br;->a:[B

    invoke-static {v1}, Lcom/loc/ck;->a([B)[B

    move-result-object v1

    if-nez v1, :cond_a

    invoke-virtual {v10, v11}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setErrorCode(I)V

    iget-object v1, p0, Lcom/loc/bx;->s:Ljava/lang/StringBuilder;

    const-string v2, "\u89e3\u5bc6\u6570\u636e\u5931\u8d25#0503"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/loc/bx;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V

    const/16 v1, 0x805

    invoke-static {v0, v1}, Lcom/loc/da;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_a
    iget-object v2, p0, Lcom/loc/bx;->j:Lcom/loc/cs;

    invoke-virtual {v2, v10, v1}, Lcom/loc/cs;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;[B)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/dd;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/loc/bx;->M:Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/bx;->M:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    const/16 v2, 0x80e

    invoke-static {v0, v2}, Lcom/loc/da;->a(Ljava/lang/String;I)V

    :goto_2
    invoke-virtual {v1, v12}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setErrorCode(I)V

    iget-object v2, p0, Lcom/loc/bx;->s:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "location faile retype:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " rdesc:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/loc/bx;->M:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, ""

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#0601"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/loc/bx;->A:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/bx;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V

    move-object v10, v1

    goto/16 :goto_0

    :cond_b
    const/16 v2, 0x80d

    invoke-static {v0, v2}, Lcom/loc/da;->a(Ljava/lang/String;I)V

    goto :goto_2

    :cond_c
    iget-object v0, p0, Lcom/loc/bx;->M:Ljava/lang/String;

    goto :goto_3

    :cond_d
    iget-object v0, p0, Lcom/loc/bx;->i:Lcom/loc/cd;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/loc/bx;->i:Lcom/loc/cd;

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getAccuracy()F

    move-result v3

    :try_start_2
    const-string v4, "-1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/high16 v2, 0x40a00000    # 5.0f

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_11

    invoke-virtual {v0}, Lcom/loc/cd;->b()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_e
    :goto_4
    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getLocationType()I

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "-5"

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "1"

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "2"

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "14"

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "24"

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "-1"

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_f
    invoke-virtual {v1, v11}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationType(I)V

    :cond_10
    :goto_5
    iget-boolean v0, p0, Lcom/loc/bx;->u:Z

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setOffset(Z)V

    iget-boolean v0, p0, Lcom/loc/bx;->t:Z

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->a(Z)V

    iget-object v0, p0, Lcom/loc/bx;->v:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->f(Ljava/lang/String;)V

    move-object v0, v1

    :goto_6
    const-string v1, "new"

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/loc/bx;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/bx;->I:Ljava/lang/String;

    move-object v10, v0

    goto/16 :goto_0

    :cond_11
    :try_start_3
    invoke-virtual {v0}, Lcom/loc/cd;->a()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_4

    :catch_2
    move-exception v0

    const-string v2, "BeaconManager"

    const-string v3, "checkLocationType"

    invoke-static {v0, v2, v3}, Lcom/loc/cv;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_12
    invoke-virtual {v1, v12}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationType(I)V

    goto :goto_5

    :cond_13
    move-object v0, v10

    goto :goto_6
.end method

.method private a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x2bc

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    iget-object v0, p0, Lcom/loc/bx;->d:Lcom/loc/cg;

    invoke-virtual {v0}, Lcom/loc/cg;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/loc/bx;->c:Lcom/loc/cj;

    invoke-virtual {v0}, Lcom/loc/cj;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    sget v0, Lcom/loc/bx;->P:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lcom/loc/cu;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    sput v0, Lcom/loc/bx;->P:I

    invoke-static {p0}, Lcom/loc/cu;->a(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "initAuth"

    invoke-static {v0, v1, v2}, Lcom/loc/cv;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)V
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/loc/bx;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    :cond_0
    iget-object v0, p0, Lcom/loc/bx;->e:Lcom/loc/ci;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/loc/bx;->e:Lcom/loc/ci;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->toJson(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loc/ci;->a(Lorg/json/JSONObject;)V

    :cond_1
    iget-object v0, p0, Lcom/loc/bx;->e:Lcom/loc/ci;

    invoke-virtual {v0}, Lcom/loc/ci;->c()V

    :cond_2
    return-void
.end method

.method private l()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/bx;->l:Lcom/loc/bx$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/bx$a;

    invoke-direct {v0, p0}, Lcom/loc/bx$a;-><init>(Lcom/loc/bx;)V

    iput-object v0, p0, Lcom/loc/bx;->l:Lcom/loc/bx$a;

    :cond_0
    iget-object v0, p0, Lcom/loc/bx;->K:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/loc/bx;->K:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/loc/bx;->K:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/bx;->K:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/bx;->K:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/bx;->K:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/bx;->K:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/loc/bx;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/bx;->l:Lcom/loc/bx$a;

    iget-object v2, p0, Lcom/loc/bx;->K:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "initBroadcastListener"

    invoke-static {v0, v1, v2}, Lcom/loc/cv;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private m()Ljava/lang/String;
    .locals 10

    const/4 v3, 0x1

    const/16 v9, 0x849

    const/16 v8, 0xc

    const/4 v2, 0x0

    const/4 v7, 0x0

    const-string v4, ""

    const-string v5, "network"

    iget-object v0, p0, Lcom/loc/bx;->d:Lcom/loc/cg;

    invoke-virtual {v0}, Lcom/loc/cg;->e()I

    move-result v0

    iget-object v1, p0, Lcom/loc/bx;->d:Lcom/loc/cg;

    invoke-virtual {v1}, Lcom/loc/cg;->c()Lcom/loc/cf;

    move-result-object v1

    if-nez v1, :cond_c

    iget-object v6, p0, Lcom/loc/bx;->k:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/loc/bx;->k:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_c

    :cond_0
    iget-object v0, p0, Lcom/loc/bx;->b:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/loc/bx;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-static {v0, v1}, Lcom/loc/dd;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/loc/bx;->b:Landroid/net/ConnectivityManager;

    :cond_1
    iget-object v0, p0, Lcom/loc/bx;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/dd;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iput v8, p0, Lcom/loc/bx;->D:I

    iget-object v0, p0, Lcom/loc/bx;->s:Ljava/lang/StringBuilder;

    const-string v1, "\u5b9a\u4f4d\u6743\u9650\u88ab\u7981\u7528,\u8bf7\u6388\u4e88\u5e94\u7528\u5b9a\u4f4d\u6743\u9650#1201"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v9}, Lcom/loc/da;->a(Ljava/lang/String;I)V

    :goto_0
    return-object v4

    :cond_2
    invoke-static {}, Lcom/loc/dd;->c()I

    move-result v0

    const/16 v1, 0x18

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/loc/bx;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    iput v8, p0, Lcom/loc/bx;->D:I

    iget-object v0, p0, Lcom/loc/bx;->s:Ljava/lang/StringBuilder;

    const-string v1, "\u5b9a\u4f4d\u670d\u52a1\u6ca1\u6709\u5f00\u542f\uff0c\u8bf7\u5728\u8bbe\u7f6e\u4e2d\u6253\u5f00\u5b9a\u4f4d\u670d\u52a1\u5f00\u5173#1206"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v9}, Lcom/loc/da;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/loc/bx;->d:Lcom/loc/cg;

    invoke-virtual {v0}, Lcom/loc/cg;->i()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/bx;->c:Lcom/loc/cj;

    invoke-virtual {v1}, Lcom/loc/cj;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/bx;->c:Lcom/loc/cj;

    iget-object v3, p0, Lcom/loc/bx;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v3}, Lcom/loc/cj;->a(Landroid/net/ConnectivityManager;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/loc/bx;->c:Lcom/loc/cj;

    invoke-virtual {v2}, Lcom/loc/cj;->l()Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v1, :cond_6

    :cond_4
    iput v8, p0, Lcom/loc/bx;->D:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/loc/bx;->s:Ljava/lang/StringBuilder;

    const-string v1, "\u83b7\u53d6\u57fa\u7ad9\u4e0e\u83b7\u53d6WIFI\u7684\u6743\u9650\u90fd\u88ab\u7981\u7528\uff0c\u8bf7\u5728\u5b89\u5168\u8f6f\u4ef6\u4e2d\u6253\u5f00\u5e94\u7528\u7684\u5b9a\u4f4d\u6743\u9650#1202"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-static {v7, v9}, Lcom/loc/da;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/loc/bx;->s:Ljava/lang/StringBuilder;

    const-string v1, "\u83b7\u53d6\u5230\u7684\u57fa\u7ad9\u4e3a\u7a7a\uff0c\u5e76\u4e14\u83b7\u53d6WIFI\u6743\u9650\u88ab\u7981\u7528,\u8bf7\u5728\u5b89\u5168\u8f6f\u4ef6\u4e2d\u6253\u5f00\u5e94\u7528\u7684\u5b9a\u4f4d\u6743\u9650#1203"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_8

    iput v8, p0, Lcom/loc/bx;->D:I

    iget-object v0, p0, Lcom/loc/bx;->c:Lcom/loc/cj;

    invoke-virtual {v0}, Lcom/loc/cj;->f()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/loc/bx;->s:Ljava/lang/StringBuilder;

    const-string v1, "WIFI\u5f00\u5173\u5173\u95ed\uff0c\u5e76\u4e14\u83b7\u53d6\u57fa\u7ad9\u6743\u9650\u88ab\u7981\u7528\uff0c\u8bf7\u5728\u5b89\u5168\u8f6f\u4ef6\u4e2d\u6253\u5f00\u5e94\u7528\u7684\u5b9a\u4f4d\u6743\u9650\u6216\u8005\u6253\u5f00WIFI\u5f00\u5173#1204"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-static {v7, v9}, Lcom/loc/da;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/loc/bx;->s:Ljava/lang/StringBuilder;

    const-string v1, "\u83b7\u53d6\u7684WIFI\u5217\u8868\u4e3a\u7a7a\uff0c\u5e76\u4e14\u83b7\u53d6\u57fa\u7ad9\u6743\u9650\u88ab\u7981\u7528\uff0c\u8bf7\u5728\u5b89\u5168\u8f6f\u4ef6\u4e2d\u6253\u5f00\u5e94\u7528\u7684\u5b9a\u4f4d\u6743\u9650#1205"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/loc/bx;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/dd;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/loc/bx;->c:Lcom/loc/cj;

    invoke-virtual {v0}, Lcom/loc/cj;->f()Z

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0x12

    iput v0, p0, Lcom/loc/bx;->D:I

    iget-object v0, p0, Lcom/loc/bx;->s:Ljava/lang/StringBuilder;

    const-string v1, "\u98de\u884c\u6a21\u5f0f\u4e0b\u5173\u95ed\u4e86WIFI\u5f00\u5173\uff0c\u8bf7\u5173\u95ed\u98de\u884c\u6a21\u5f0f\u6216\u8005\u6253\u5f00WIFI\u5f00\u5173#1801"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x854

    invoke-static {v7, v0}, Lcom/loc/da;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/loc/bx;->c:Lcom/loc/cj;

    invoke-virtual {v0}, Lcom/loc/cj;->f()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/loc/bx;->d:Lcom/loc/cg;

    invoke-virtual {v0}, Lcom/loc/cg;->l()Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0x13

    iput v0, p0, Lcom/loc/bx;->D:I

    iget-object v0, p0, Lcom/loc/bx;->s:Ljava/lang/StringBuilder;

    const-string v1, "\u6ca1\u6709\u68c0\u67e5\u5230SIM\u5361\uff0c\u5e76\u4e14WIFI\u5f00\u5173\u5173\u95ed\uff0c\u8bf7\u6253\u5f00WIFI\u5f00\u5173\u6216\u8005\u63d2\u5165SIM\u5361#1901"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x855

    invoke-static {v7, v0}, Lcom/loc/da;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/loc/bx;->c:Lcom/loc/cj;

    invoke-virtual {v0}, Lcom/loc/cj;->f()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/loc/bx;->s:Ljava/lang/StringBuilder;

    const-string v1, "\u83b7\u53d6\u5230\u7684\u57fa\u7ad9\u4e3a\u7a7a\uff0c\u5e76\u4e14\u5173\u95ed\u4e86WIFI\u5f00\u5173\uff0c\u8bf7\u60a8\u6253\u5f00WIFI\u5f00\u5173\u5728\u53d1\u8d77\u5b9a\u4f4d#1301"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const/16 v0, 0xd

    iput v0, p0, Lcom/loc/bx;->D:I

    const/16 v0, 0x853

    invoke-static {v7, v0}, Lcom/loc/da;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/loc/bx;->s:Ljava/lang/StringBuilder;

    const-string v1, "\u83b7\u53d6\u5230\u7684\u57fa\u7ad9\u4e0eWIFI\u4e3a\u7a7a\uff0c\u8bf7\u79fb\u52a8\u5230\u6709WIFI\u7684\u533a\u57df\uff0c\u82e5\u786e\u5b9a\u5f53\u524d\u533a\u57df\u6709WIFI\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u6388\u4e88APP\u5b9a\u4f4d\u6743\u9650#1302"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_c
    iget-object v6, p0, Lcom/loc/bx;->c:Lcom/loc/cj;

    invoke-virtual {v6}, Lcom/loc/cj;->g()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/loc/bx;->y:Landroid/net/wifi/WifiInfo;

    iget-object v6, p0, Lcom/loc/bx;->c:Lcom/loc/cj;

    iget-object v6, p0, Lcom/loc/bx;->y:Landroid/net/wifi/WifiInfo;

    invoke-static {v6}, Lcom/loc/cj;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/loc/bx;->z:Z

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0xb

    iput v0, p0, Lcom/loc/bx;->D:I

    const/16 v0, 0x83f

    invoke-static {v7, v0}, Lcom/loc/da;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/loc/bx;->s:Ljava/lang/StringBuilder;

    const-string v1, "get cgi failure#1101"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    move-object v0, v4

    :cond_e
    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/loc/dd;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_10
    move-object v4, v0

    goto/16 :goto_0

    :pswitch_0
    if-eqz v1, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v1, Lcom/loc/cf;->a:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/loc/cf;->b:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/loc/cf;->c:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/loc/cf;->d:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/loc/bx;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/loc/bx;->z:Z

    if-eqz v0, :cond_12

    :cond_11
    const-string v0, "cgiwifi"

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_12
    const-string v0, "cgi"

    goto :goto_5

    :pswitch_1
    if-eqz v1, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v1, Lcom/loc/cf;->a:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/loc/cf;->b:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/loc/cf;->g:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/loc/cf;->h:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/loc/cf;->i:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/loc/bx;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/loc/bx;->z:Z

    if-eqz v0, :cond_14

    :cond_13
    const-string v0, "cgiwifi"

    :goto_6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_14
    const-string v0, "cgi"

    goto :goto_6

    :pswitch_2
    iget-object v0, p0, Lcom/loc/bx;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/loc/bx;->z:Z

    if-eqz v0, :cond_1b

    :cond_15
    move v1, v3

    :goto_7
    iget-boolean v0, p0, Lcom/loc/bx;->z:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/loc/bx;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x2

    iput v0, p0, Lcom/loc/bx;->D:I

    iget-object v0, p0, Lcom/loc/bx;->s:Ljava/lang/StringBuilder;

    const-string v1, "\u5f53\u524d\u57fa\u7ad9\u4e3a\u4f2a\u57fa\u7ad9\uff0c\u5e76\u4e14WIFI\u6743\u9650\u88ab\u7981\u7528\uff0c\u8bf7\u5728\u5b89\u5168\u8f6f\u4ef6\u4e2d\u6253\u5f00\u5e94\u7528\u7684\u5b9a\u4f4d\u6743\u9650#0201"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7e5

    invoke-static {v7, v0}, Lcom/loc/da;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_16
    iget-object v0, p0, Lcom/loc/bx;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_18

    const/4 v0, 0x2

    iput v0, p0, Lcom/loc/bx;->D:I

    iget-boolean v0, p0, Lcom/loc/bx;->z:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/loc/bx;->s:Ljava/lang/StringBuilder;

    const-string v1, "\u5f53\u524d\u57fa\u7ad9\u4e3a\u4f2a\u57fa\u7ad9\uff0c\u5e76\u4e14\u641c\u5230\u7684WIFI\u6570\u91cf\u4e0d\u8db3\uff0c\u8bf7\u79fb\u52a8\u5230WIFI\u6bd4\u8f83\u4e30\u5bcc\u7684\u533a\u57df#0202"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7e6

    invoke-static {v7, v0}, Lcom/loc/da;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_17
    iget-object v0, p0, Lcom/loc/bx;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v6, p0, Lcom/loc/bx;->c:Lcom/loc/cj;

    invoke-virtual {v6}, Lcom/loc/cj;->g()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/loc/bx;->s:Ljava/lang/StringBuilder;

    const-string v1, "\u5f53\u524d\u57fa\u7ad9\u4e3a\u4f2a\u57fa\u7ad9\uff0c\u5e76\u4e14\u641c\u5230\u7684WIFI\u6570\u91cf\u4e0d\u8db3\uff0c\u8bf7\u79fb\u52a8\u5230WIFI\u6bd4\u8f83\u4e30\u5bcc\u7684\u533a\u57df#0202"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7e5

    invoke-static {v7, v0}, Lcom/loc/da;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_18
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "#%s#"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v2

    invoke-static {v0, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_19

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_19
    const-string v1, "network"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v0, ""

    const/4 v1, 0x2

    iput v1, p0, Lcom/loc/bx;->D:I

    iget-object v1, p0, Lcom/loc/bx;->c:Lcom/loc/cj;

    invoke-virtual {v1}, Lcom/loc/cj;->f()Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, p0, Lcom/loc/bx;->s:Ljava/lang/StringBuilder;

    const-string v2, "\u5f53\u524d\u57fa\u7ad9\u4e3a\u4f2a\u57fa\u7ad9,\u5e76\u4e14\u5173\u95ed\u4e86WIFI\u5f00\u5173\uff0c\u8bf7\u5728\u8bbe\u7f6e\u4e2d\u6253\u5f00WIFI\u5f00\u5173#0203"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8
    const/16 v1, 0x7e6

    invoke-static {v7, v1}, Lcom/loc/da;->a(Ljava/lang/String;I)V

    goto/16 :goto_4

    :cond_1a
    iget-object v1, p0, Lcom/loc/bx;->s:Ljava/lang/StringBuilder;

    const-string v2, "\u5f53\u524d\u57fa\u7ad9\u4e3a\u4f2a\u57fa\u7ad9,\u5e76\u4e14\u6ca1\u6709\u641c\u7d22\u5230WIFI\uff0c\u8bf7\u79fb\u52a8\u5230WIFI\u6bd4\u8f83\u4e30\u5bcc\u7684\u533a\u57df#0204"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_1b
    move v1, v2

    goto/16 :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private n()Z
    .locals 2

    iget-object v0, p0, Lcom/loc/bx;->c:Lcom/loc/cj;

    invoke-virtual {v0}, Lcom/loc/cj;->b()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bx;->k:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/loc/bx;->k:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/loc/bx;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method


# virtual methods
.method public final a(DD)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/loc/bx;->r:Lcom/loc/cq;

    iget-object v1, p0, Lcom/loc/bx;->a:Landroid/content/Context;

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/loc/cq;->a(Landroid/content/Context;DD)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\"status\":\"1\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/loc/bx;->j:Lcom/loc/cs;

    invoke-virtual {v1, v0}, Lcom/loc/cs;->a(Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLatitude(D)V

    invoke-virtual {v0, p3, p4}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLongitude(D)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final varargs a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;[Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/loc/bx;->H:Lcom/loc/ca;

    iget-boolean v1, p0, Lcom/loc/bx;->w:Z

    invoke-virtual {v0, v1}, Lcom/loc/ca;->a(Z)V

    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/loc/bx;->H:Lcom/loc/ca;

    invoke-virtual {v0, p1}, Lcom/loc/ca;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    aget-object v0, p2, v2

    const-string v1, "shake"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/loc/bx;->H:Lcom/loc/ca;

    invoke-virtual {v0, p1}, Lcom/loc/ca;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object p1

    goto :goto_0

    :cond_3
    aget-object v0, p2, v2

    const-string v1, "fusion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/bx;->H:Lcom/loc/ca;

    goto :goto_0
.end method

.method public final a(Z)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 7

    iget-object v0, p0, Lcom/loc/bx;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/bx;->s:Ljava/lang/StringBuilder;

    const-string v1, "context is null#0101"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/16 v1, 0x7db

    invoke-static {v0, v1}, Lcom/loc/da;->a(Ljava/lang/String;I)V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/loc/bx;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/bx;->a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v6

    :goto_0
    return-object v6

    :cond_0
    iget-object v0, p0, Lcom/loc/bx;->c:Lcom/loc/cj;

    invoke-virtual {v0}, Lcom/loc/cj;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xf

    const-string v1, "networkLocation has been mocked!#1502"

    invoke-static {v0, v1}, Lcom/loc/bx;->a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v6

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/loc/bx;->a()V

    iget-object v0, p0, Lcom/loc/bx;->O:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/loc/bx;->D:I

    iget-object v1, p0, Lcom/loc/bx;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/bx;->a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v6

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/loc/bx;->a(ZZ)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v6

    invoke-static {v6}, Lcom/loc/dd;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/loc/bx;->g:Lcom/loc/cl;

    iget-object v1, p0, Lcom/loc/bx;->A:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loc/cl;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/bx;->g:Lcom/loc/cl;

    iget-object v1, p0, Lcom/loc/bx;->d:Lcom/loc/cg;

    invoke-virtual {v1}, Lcom/loc/cg;->c()Lcom/loc/cf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loc/cl;->a(Lcom/loc/cf;)V

    invoke-direct {p0, v6}, Lcom/loc/bx;->b(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/loc/bx;->A:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/loc/bx;->e:Lcom/loc/ci;

    iget-object v1, p0, Lcom/loc/bx;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/loc/ci;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/loc/bx;->e:Lcom/loc/ci;

    iget-object v1, p0, Lcom/loc/bx;->g:Lcom/loc/cl;

    iget-object v2, p0, Lcom/loc/bx;->O:Ljava/lang/String;

    iget-object v4, p0, Lcom/loc/bx;->m:Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v5, p0, Lcom/loc/bx;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/loc/bx;->m()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v6}, Lcom/loc/ci;->a(Lcom/loc/cl;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/location/AMapLocationClientOption;Ljava/lang/String;Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v6

    goto :goto_0
.end method

.method public final a()V
    .locals 5

    iget-object v0, p0, Lcom/loc/bx;->a:Landroid/content/Context;

    invoke-static {}, Lcom/loc/cq;->a()Lcom/loc/cq;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bx;->r:Lcom/loc/cq;

    iget-object v0, p0, Lcom/loc/bx;->r:Lcom/loc/cq;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/loc/bx;->r:Lcom/loc/cq;

    iget-object v0, p0, Lcom/loc/bx;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getHttpTimeOut()J

    move-result-wide v2

    iget-object v0, p0, Lcom/loc/bx;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationProtocol()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    move-result-object v0

    sget-object v4, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;->HTTPS:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    invoke-virtual {v0, v4}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iget-object v4, p0, Lcom/loc/bx;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClientOption;->getGeoLanguage()Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/loc/cq;->a(JZLcom/amap/api/location/AMapLocationClientOption$GeoLanguage;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/loc/bx;->b:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/loc/bx;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-static {v0, v1}, Lcom/loc/dd;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/loc/bx;->b:Landroid/net/ConnectivityManager;

    :cond_1
    iget-object v0, p0, Lcom/loc/bx;->p:Lcom/loc/ct;

    if-nez v0, :cond_2

    new-instance v0, Lcom/loc/ct;

    invoke-direct {v0}, Lcom/loc/ct;-><init>()V

    iput-object v0, p0, Lcom/loc/bx;->p:Lcom/loc/ct;

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final a(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/bx;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/loc/ca;

    invoke-direct {v0}, Lcom/loc/ca;-><init>()V

    iput-object v0, p0, Lcom/loc/bx;->H:Lcom/loc/ca;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bx;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/loc/bx;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/cu;->e(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/loc/bx;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/dd;->b(Landroid/content/Context;)Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/bx;->c:Lcom/loc/cj;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/loc/bx;->a:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-static {v0, v1}, Lcom/loc/dd;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    new-instance v1, Lcom/loc/cj;

    iget-object v2, p0, Lcom/loc/bx;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/loc/cj;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;)V

    iput-object v1, p0, Lcom/loc/bx;->c:Lcom/loc/cj;

    :cond_2
    iget-object v0, p0, Lcom/loc/bx;->d:Lcom/loc/cg;

    if-nez v0, :cond_3

    new-instance v0, Lcom/loc/cg;

    iget-object v1, p0, Lcom/loc/bx;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/loc/cg;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/loc/bx;->d:Lcom/loc/cg;

    :cond_3
    iget-object v0, p0, Lcom/loc/bx;->e:Lcom/loc/ci;

    if-nez v0, :cond_4

    new-instance v0, Lcom/loc/ci;

    invoke-direct {v0}, Lcom/loc/ci;-><init>()V

    iput-object v0, p0, Lcom/loc/bx;->e:Lcom/loc/ci;

    :cond_4
    iget-object v0, p0, Lcom/loc/bx;->f:Lcom/loc/ch;

    if-nez v0, :cond_5

    new-instance v0, Lcom/loc/ch;

    invoke-direct {v0}, Lcom/loc/ch;-><init>()V

    iput-object v0, p0, Lcom/loc/bx;->f:Lcom/loc/ch;

    :cond_5
    iget-object v0, p0, Lcom/loc/bx;->g:Lcom/loc/cl;

    if-nez v0, :cond_6

    new-instance v0, Lcom/loc/cl;

    invoke-direct {v0}, Lcom/loc/cl;-><init>()V

    iput-object v0, p0, Lcom/loc/bx;->g:Lcom/loc/cl;

    :cond_6
    iget-object v0, p0, Lcom/loc/bx;->j:Lcom/loc/cs;

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/cs;

    invoke-direct {v0}, Lcom/loc/cs;-><init>()V

    iput-object v0, p0, Lcom/loc/bx;->j:Lcom/loc/cs;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "initBase"

    invoke-static {v0, v1, v2}, Lcom/loc/cv;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/amap/api/location/AMapLocationClientOption;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/loc/bx;->m:Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v2, p0, Lcom/loc/bx;->m:Lcom/amap/api/location/AMapLocationClientOption;

    if-nez v2, :cond_0

    new-instance v2, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v2}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v2, p0, Lcom/loc/bx;->m:Lcom/amap/api/location/AMapLocationClientOption;

    :cond_0
    iget-object v2, p0, Lcom/loc/bx;->c:Lcom/loc/cj;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/loc/bx;->c:Lcom/loc/cj;

    iget-object v3, p0, Lcom/loc/bx;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->isWifiActiveScan()Z

    iget-object v3, p0, Lcom/loc/bx;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->isWifiScan()Z

    move-result v3

    iget-object v4, p0, Lcom/loc/bx;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClientOption;->isMockEnable()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/loc/cj;->a(ZZ)V

    :cond_1
    iget-object v2, p0, Lcom/loc/bx;->r:Lcom/loc/cq;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/loc/bx;->r:Lcom/loc/cq;

    iget-object v3, p0, Lcom/loc/bx;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->getHttpTimeOut()J

    move-result-wide v4

    iget-object v3, p0, Lcom/loc/bx;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationProtocol()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    move-result-object v3

    sget-object v6, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;->HTTPS:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    invoke-virtual {v3, v6}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClientOption;->getGeoLanguage()Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    move-result-object v3

    invoke-virtual {v2, v4, v5, v0, v3}, Lcom/loc/cq;->a(JZLcom/amap/api/location/AMapLocationClientOption$GeoLanguage;)V

    :cond_3
    iget-object v0, p0, Lcom/loc/bx;->g:Lcom/loc/cl;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/loc/bx;->g:Lcom/loc/cl;

    iget-object v2, p0, Lcom/loc/bx;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v2}, Lcom/loc/cl;->a(Lcom/amap/api/location/AMapLocationClientOption;)V

    :cond_4
    iget-object v0, p0, Lcom/loc/bx;->j:Lcom/loc/cs;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/loc/bx;->j:Lcom/loc/cs;

    iget-object v2, p0, Lcom/loc/bx;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v2}, Lcom/loc/cs;->a(Lcom/amap/api/location/AMapLocationClientOption;)V

    :cond_5
    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->DEFAULT:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    :try_start_0
    iget-object v2, p0, Lcom/loc/bx;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->getGeoLanguage()Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    move-result-object v0

    iget-object v2, p0, Lcom/loc/bx;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->isNeedAddress()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    :try_start_1
    iget-object v3, p0, Lcom/loc/bx;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->isOffset()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    move-result v3

    :try_start_2
    iget-object v4, p0, Lcom/loc/bx;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClientOption;->isLocationCacheEnable()Z

    move-result v1

    iget-object v4, p0, Lcom/loc/bx;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocationLatest()Z

    move-result v4

    iput-boolean v4, p0, Lcom/loc/bx;->x:Z

    iget-object v4, p0, Lcom/loc/bx;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClientOption;->isSensorEnable()Z

    move-result v4

    iput-boolean v4, p0, Lcom/loc/bx;->F:Z

    iget-boolean v4, p0, Lcom/loc/bx;->u:Z

    if-ne v3, v4, :cond_6

    iget-boolean v4, p0, Lcom/loc/bx;->t:Z

    if-ne v2, v4, :cond_6

    iget-boolean v4, p0, Lcom/loc/bx;->w:Z

    if-ne v1, v4, :cond_6

    iget-object v4, p0, Lcom/loc/bx;->v:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    if-eq v0, v4, :cond_8

    :cond_6
    :try_start_3
    iget-object v4, p0, Lcom/loc/bx;->g:Lcom/loc/cl;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/loc/bx;->g:Lcom/loc/cl;

    invoke-virtual {v4}, Lcom/loc/cl;->a()V

    :cond_7
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/loc/bx;->b(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/loc/bx;->Q:Z

    iget-object v4, p0, Lcom/loc/bx;->H:Lcom/loc/ca;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/loc/bx;->H:Lcom/loc/ca;

    invoke-virtual {v4}, Lcom/loc/ca;->a()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :cond_8
    :goto_0
    iput-boolean v3, p0, Lcom/loc/bx;->u:Z

    iput-boolean v2, p0, Lcom/loc/bx;->t:Z

    iput-boolean v1, p0, Lcom/loc/bx;->w:Z

    iput-object v0, p0, Lcom/loc/bx;->v:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    return-void

    :catch_0
    move-exception v4

    :try_start_4
    const-string v5, "APS"

    const-string v6, "cleanCache"

    invoke-static {v4, v5, v6}, Lcom/loc/cv;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_0

    :catch_2
    move-exception v2

    move v2, v1

    move v3, v1

    goto :goto_0

    :catch_3
    move-exception v3

    move v3, v1

    goto :goto_0
.end method

.method public final a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)V
    .locals 6

    invoke-static {p1}, Lcom/loc/dd;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/bx;->g:Lcom/loc/cl;

    iget-object v1, p0, Lcom/loc/bx;->O:Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/bx;->A:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/loc/bx;->a:Landroid/content/Context;

    const/4 v5, 0x1

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/loc/cl;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/autonavi/aps/amapapi/model/AMapLocationServer;Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/loc/bx;->i:Lcom/loc/cd;

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/cd;

    iget-object v1, p0, Lcom/loc/bx;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/loc/cd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/loc/bx;->i:Lcom/loc/cd;

    :cond_0
    iget-object v0, p0, Lcom/loc/bx;->E:Lcom/loc/cb;

    if-nez v0, :cond_1

    new-instance v0, Lcom/loc/cb;

    iget-object v1, p0, Lcom/loc/bx;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/loc/cb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/loc/bx;->E:Lcom/loc/cb;

    :cond_1
    iget-object v0, p0, Lcom/loc/bx;->h:Lcom/loc/by;

    if-nez v0, :cond_2

    new-instance v0, Lcom/loc/by;

    iget-object v1, p0, Lcom/loc/bx;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/loc/by;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/loc/bx;->h:Lcom/loc/by;

    :cond_2
    iget-object v0, p0, Lcom/loc/bx;->e:Lcom/loc/ci;

    iget-object v1, p0, Lcom/loc/bx;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/loc/ci;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/loc/bx;->l()V

    iget-object v0, p0, Lcom/loc/bx;->c:Lcom/loc/cj;

    invoke-virtual {v0, v2}, Lcom/loc/cj;->b(Z)V

    iget-object v0, p0, Lcom/loc/bx;->c:Lcom/loc/cj;

    invoke-virtual {v0}, Lcom/loc/cj;->b()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bx;->k:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/loc/bx;->d:Lcom/loc/cg;

    invoke-direct {p0}, Lcom/loc/bx;->n()Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/loc/cg;->a(ZZ)V

    iget-object v0, p0, Lcom/loc/bx;->g:Lcom/loc/cl;

    iget-object v1, p0, Lcom/loc/bx;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/loc/cl;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/loc/bx;->h:Lcom/loc/by;

    invoke-virtual {v0}, Lcom/loc/by;->b()V

    iget-object v0, p0, Lcom/loc/bx;->a:Landroid/content/Context;

    :try_start_0
    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/bx;->q:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    iput-boolean v3, p0, Lcom/loc/bx;->C:Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/loc/bx;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/loc/bx;->s:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/loc/bx;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public final d()Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-wide/16 v2, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/loc/bx;->c()V

    iget-object v0, p0, Lcom/loc/bx;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/bx;->s:Ljava/lang/StringBuilder;

    const-string v1, "context is null#0101"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/loc/bx;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/loc/bx;->a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/loc/bx;->L:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/loc/bx;->L:I

    iget v0, p0, Lcom/loc/bx;->L:I

    if-ne v0, v8, :cond_2

    iget-object v0, p0, Lcom/loc/bx;->f:Lcom/loc/ch;

    invoke-virtual {v0}, Lcom/loc/ch;->e()V

    iget-object v0, p0, Lcom/loc/bx;->c:Lcom/loc/cj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/bx;->c:Lcom/loc/cj;

    iget-boolean v1, p0, Lcom/loc/bx;->q:Z

    invoke-virtual {v0, v1}, Lcom/loc/cj;->a(Z)V

    :cond_1
    iget-object v0, p0, Lcom/loc/bx;->f:Lcom/loc/ch;

    invoke-virtual {v0}, Lcom/loc/ch;->a()V

    iget-object v0, p0, Lcom/loc/bx;->e:Lcom/loc/ci;

    invoke-virtual {v0}, Lcom/loc/ci;->a()V

    :cond_2
    iget-wide v0, p0, Lcom/loc/bx;->o:J

    iget-boolean v4, p0, Lcom/loc/bx;->Q:Z

    if-nez v4, :cond_4

    iput-boolean v8, p0, Lcom/loc/bx;->Q:Z

    move v0, v9

    :goto_1
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/loc/bx;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-static {v0}, Lcom/loc/dd;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/loc/bx;->w:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/loc/bx;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/loc/cu;->b(J)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/loc/bx;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationType(I)V

    :cond_3
    iget-object v0, p0, Lcom/loc/bx;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/loc/dd;->b()J

    move-result-wide v4

    sub-long v0, v4, v0

    const-wide/16 v4, 0x320

    cmp-long v0, v0, v4

    if-gez v0, :cond_13

    iget-object v0, p0, Lcom/loc/bx;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-static {v0}, Lcom/loc/dd;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/loc/dd;->a()J

    move-result-wide v0

    iget-object v4, p0, Lcom/loc/bx;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v4}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    :goto_2
    const-wide/16 v4, 0x2710

    cmp-long v0, v0, v4

    if-gtz v0, :cond_13

    move v0, v8

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/loc/bx;->E:Lcom/loc/cb;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/loc/bx;->F:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/loc/bx;->E:Lcom/loc/cb;

    invoke-virtual {v0}, Lcom/loc/cb;->a()V

    :cond_6
    :goto_3
    :try_start_0
    iget-object v0, p0, Lcom/loc/bx;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocationLatest()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/loc/bx;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_7
    move v0, v8

    :goto_4
    iget-object v1, p0, Lcom/loc/bx;->c:Lcom/loc/cj;

    invoke-virtual {v1, v0}, Lcom/loc/cj;->b(Z)V

    iget-object v0, p0, Lcom/loc/bx;->c:Lcom/loc/cj;

    invoke-virtual {v0}, Lcom/loc/cj;->b()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bx;->k:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    :try_start_1
    iget-object v0, p0, Lcom/loc/bx;->d:Lcom/loc/cg;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/loc/bx;->n()Z

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/loc/cg;->a(ZZ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_6
    invoke-direct {p0}, Lcom/loc/bx;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bx;->O:Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/bx;->O:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/loc/bx;->h:Lcom/loc/by;

    invoke-virtual {v0}, Lcom/loc/by;->e()Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bx;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v0, p0, Lcom/loc/bx;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/loc/bx;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v1, p0, Lcom/loc/bx;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/bx;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/loc/bx;->E:Lcom/loc/cb;

    invoke-virtual {v0}, Lcom/loc/cb;->b()V

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v4, "getLocation getScanResultsParam"

    invoke-static {v0, v1, v4}, Lcom/loc/cv;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_1
    move-exception v0

    const-string v1, "APS"

    const-string v4, "getLocation getCgiListParam"

    invoke-static {v0, v1, v4}, Lcom/loc/cv;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    iget v0, p0, Lcom/loc/bx;->D:I

    iget-object v1, p0, Lcom/loc/bx;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/bx;->a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/loc/bx;->e:Lcom/loc/ci;

    iget-object v1, p0, Lcom/loc/bx;->m:Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v4, p0, Lcom/loc/bx;->O:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/loc/ci;->a(Lcom/amap/api/location/AMapLocationClientOption;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/bx;->A:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/loc/bx;->a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bx;->A:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/loc/bx;->c:Lcom/loc/cj;

    invoke-virtual {v0}, Lcom/loc/cj;->h()Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0xf

    const-string v1, "networkLocation has been mocked!#1502"

    invoke-static {v0, v1}, Lcom/loc/bx;->a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setMock(Z)V

    goto/16 :goto_0

    :cond_b
    iget-wide v0, p0, Lcom/loc/bx;->o:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    move v2, v8

    :goto_7
    iget-object v0, p0, Lcom/loc/bx;->g:Lcom/loc/cl;

    iget-object v1, p0, Lcom/loc/bx;->d:Lcom/loc/cg;

    iget-object v3, p0, Lcom/loc/bx;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v4, p0, Lcom/loc/bx;->c:Lcom/loc/cj;

    iget-object v5, p0, Lcom/loc/bx;->A:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/loc/bx;->O:Ljava/lang/String;

    iget-object v7, p0, Lcom/loc/bx;->a:Landroid/content/Context;

    invoke-virtual/range {v0 .. v7}, Lcom/loc/cl;->a(Lcom/loc/cg;ZLcom/autonavi/aps/amapapi/model/AMapLocationServer;Lcom/loc/cj;Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/content/Context;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/dd;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-direct {p0, v0}, Lcom/loc/bx;->b(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)V

    :cond_c
    :goto_8
    iget-object v0, p0, Lcom/loc/bx;->g:Lcom/loc/cl;

    iget-object v1, p0, Lcom/loc/bx;->O:Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/bx;->A:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/loc/bx;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v4, p0, Lcom/loc/bx;->a:Landroid/content/Context;

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/loc/cl;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/autonavi/aps/amapapi/model/AMapLocationServer;Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/loc/bx;->e:Lcom/loc/ci;

    iget-object v1, p0, Lcom/loc/bx;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/bx;->O:Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/bx;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v0, v1, v2}, Lcom/loc/ci;->a(Ljava/lang/String;Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)V

    iget-object v0, p0, Lcom/loc/bx;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-static {v0}, Lcom/loc/dd;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/loc/bx;->e:Lcom/loc/ci;

    iget-object v1, p0, Lcom/loc/bx;->g:Lcom/loc/cl;

    iget-object v2, p0, Lcom/loc/bx;->O:Ljava/lang/String;

    iget-object v3, p0, Lcom/loc/bx;->A:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/loc/bx;->m:Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v5, p0, Lcom/loc/bx;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/loc/bx;->m()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/loc/bx;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual/range {v0 .. v6}, Lcom/loc/ci;->a(Lcom/loc/cl;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/location/AMapLocationClientOption;Ljava/lang/String;Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bx;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    :cond_d
    iget-object v0, p0, Lcom/loc/bx;->A:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/loc/bx;->A:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v9, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/loc/bx;->F:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/loc/bx;->E:Lcom/loc/cb;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/loc/bx;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v1, p0, Lcom/loc/bx;->E:Lcom/loc/cb;

    invoke-virtual {v1}, Lcom/loc/cb;->c()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setAltitude(D)V

    iget-object v0, p0, Lcom/loc/bx;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v1, p0, Lcom/loc/bx;->E:Lcom/loc/cb;

    invoke-virtual {v1}, Lcom/loc/cb;->d()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setBearing(F)V

    iget-object v0, p0, Lcom/loc/bx;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v1, p0, Lcom/loc/bx;->E:Lcom/loc/cb;

    invoke-virtual {v1}, Lcom/loc/cb;->e()D

    move-result-wide v2

    double-to-float v1, v2

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setSpeed(F)V

    :goto_9
    iget-object v0, p0, Lcom/loc/bx;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    goto/16 :goto_0

    :cond_e
    invoke-static {}, Lcom/loc/dd;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/loc/bx;->o:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-lez v0, :cond_f

    move v2, v8

    goto/16 :goto_7

    :cond_f
    move v2, v9

    goto/16 :goto_7

    :cond_10
    invoke-direct {p0, v9, v8}, Lcom/loc/bx;->a(ZZ)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bx;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v0, p0, Lcom/loc/bx;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-static {v0}, Lcom/loc/dd;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/loc/bx;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const-string v1, "new"

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/bx;->g:Lcom/loc/cl;

    iget-object v1, p0, Lcom/loc/bx;->A:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loc/cl;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/bx;->g:Lcom/loc/cl;

    iget-object v1, p0, Lcom/loc/bx;->d:Lcom/loc/cg;

    invoke-virtual {v1}, Lcom/loc/cg;->c()Lcom/loc/cf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loc/cl;->a(Lcom/loc/cf;)V

    iget-object v0, p0, Lcom/loc/bx;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-direct {p0, v0}, Lcom/loc/bx;->b(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)V

    goto/16 :goto_8

    :cond_11
    iget-object v0, p0, Lcom/loc/bx;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setAltitude(D)V

    iget-object v0, p0, Lcom/loc/bx;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v0, v10}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setBearing(F)V

    iget-object v0, p0, Lcom/loc/bx;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v0, v10}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setSpeed(F)V

    goto :goto_9

    :cond_12
    move v0, v9

    goto/16 :goto_4

    :cond_13
    move v0, v9

    goto/16 :goto_1

    :cond_14
    move-wide v0, v2

    goto/16 :goto_2
.end method

.method public final e()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/bx;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/loc/bx;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/loc/bx;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {p0, v0}, Lcom/loc/bx;->a(Lcom/amap/api/location/AMapLocationClientOption;)V

    iget-object v0, p0, Lcom/loc/bx;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/loc/bx;->i()V

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/loc/bx;->a(ZZ)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loc/bx;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "doFusionLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/cv;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final f()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/loc/bx;->I:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/loc/bx;->B:Z

    iput-boolean v0, p0, Lcom/loc/bx;->C:Z

    iget-object v0, p0, Lcom/loc/bx;->f:Lcom/loc/ch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/bx;->f:Lcom/loc/ch;

    invoke-virtual {v0}, Lcom/loc/ch;->b()V

    iget-object v0, p0, Lcom/loc/bx;->f:Lcom/loc/ch;

    iput-object v3, v0, Lcom/loc/ch;->a:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/loc/bx;->h:Lcom/loc/by;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/bx;->h:Lcom/loc/by;

    invoke-virtual {v0}, Lcom/loc/by;->a()V

    :cond_1
    iget-object v0, p0, Lcom/loc/bx;->g:Lcom/loc/cl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/bx;->g:Lcom/loc/cl;

    iget-object v1, p0, Lcom/loc/bx;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/loc/cl;->b(Landroid/content/Context;)V

    :cond_2
    iget-object v0, p0, Lcom/loc/bx;->H:Lcom/loc/ca;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/loc/bx;->H:Lcom/loc/ca;

    invoke-virtual {v0}, Lcom/loc/ca;->a()V

    :cond_3
    iget-object v0, p0, Lcom/loc/bx;->j:Lcom/loc/cs;

    if-eqz v0, :cond_4

    iput-object v3, p0, Lcom/loc/bx;->j:Lcom/loc/cs;

    :cond_4
    invoke-static {}, Lcom/loc/dd;->g()V

    :try_start_0
    iget-object v0, p0, Lcom/loc/bx;->a:Landroid/content/Context;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/loc/bx;->l:Lcom/loc/bx$a;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/loc/bx;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/bx;->l:Lcom/loc/bx$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    iput-object v3, p0, Lcom/loc/bx;->l:Lcom/loc/bx$a;

    :goto_0
    iget-object v0, p0, Lcom/loc/bx;->d:Lcom/loc/cg;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/loc/bx;->d:Lcom/loc/cg;

    invoke-virtual {v0}, Lcom/loc/cg;->g()V

    :cond_6
    iget-object v0, p0, Lcom/loc/bx;->c:Lcom/loc/cj;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/loc/bx;->c:Lcom/loc/cj;

    invoke-virtual {v0}, Lcom/loc/cj;->j()V

    :cond_7
    iget-object v0, p0, Lcom/loc/bx;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/loc/bx;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_8
    iget-object v0, p0, Lcom/loc/bx;->E:Lcom/loc/cb;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/loc/bx;->E:Lcom/loc/cb;

    invoke-virtual {v0}, Lcom/loc/cb;->f()V

    :cond_9
    iput-object v3, p0, Lcom/loc/bx;->n:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iput-object v3, p0, Lcom/loc/bx;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/loc/bx;->e:Lcom/loc/ci;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/loc/bx;->e:Lcom/loc/ci;

    invoke-virtual {v0}, Lcom/loc/ci;->b()V

    :cond_a
    iput-object v3, p0, Lcom/loc/bx;->A:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/loc/bx;->i:Lcom/loc/cd;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/loc/bx;->i:Lcom/loc/cd;

    invoke-virtual {v0}, Lcom/loc/cd;->d()V

    :cond_b
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "APS"

    const-string v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/loc/cv;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v3, p0, Lcom/loc/bx;->l:Lcom/loc/bx$a;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v3, p0, Lcom/loc/bx;->l:Lcom/loc/bx$a;

    throw v0
.end method

.method public final g()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/bx;->h:Lcom/loc/by;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/bx;->h:Lcom/loc/by;

    invoke-virtual {v0}, Lcom/loc/by;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "bindAMapService"

    invoke-static {v0, v1, v2}, Lcom/loc/cv;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final h()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/bx;->h:Lcom/loc/by;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/bx;->h:Lcom/loc/by;

    invoke-virtual {v0}, Lcom/loc/by;->d()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "bindOtherService"

    invoke-static {v0, v1, v2}, Lcom/loc/cv;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final i()V
    .locals 4

    const/4 v3, 0x1

    :try_start_0
    iget-boolean v0, p0, Lcom/loc/bx;->B:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/loc/bx;->O:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bx;->O:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/loc/bx;->A:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/bx;->A:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/loc/bx;->A:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_2
    iget-boolean v0, p0, Lcom/loc/bx;->x:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/loc/bx;->l()V

    :cond_3
    iget-object v0, p0, Lcom/loc/bx;->c:Lcom/loc/cj;

    iget-boolean v1, p0, Lcom/loc/bx;->x:Z

    invoke-virtual {v0, v1}, Lcom/loc/cj;->b(Z)V

    iget-object v0, p0, Lcom/loc/bx;->c:Lcom/loc/cj;

    invoke-virtual {v0}, Lcom/loc/cj;->b()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bx;->k:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/loc/bx;->d:Lcom/loc/cg;

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/loc/bx;->n()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/loc/cg;->a(ZZ)V

    invoke-direct {p0}, Lcom/loc/bx;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bx;->O:Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/bx;->O:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/loc/bx;->A:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/loc/bx;->a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bx;->A:Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    iput-boolean v3, p0, Lcom/loc/bx;->B:Z

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "initFirstLocateParam"

    invoke-static {v0, v1, v2}, Lcom/loc/cv;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final j()Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 5

    iget-object v0, p0, Lcom/loc/bx;->c:Lcom/loc/cj;

    invoke-virtual {v0}, Lcom/loc/cj;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xf

    const-string v1, "networkLocation has been mocked!#1502"

    invoke-static {v0, v1}, Lcom/loc/bx;->a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/loc/bx;->O:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/loc/bx;->D:I

    iget-object v1, p0, Lcom/loc/bx;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/bx;->a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/loc/bx;->g:Lcom/loc/cl;

    iget-object v1, p0, Lcom/loc/bx;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/bx;->O:Ljava/lang/String;

    iget-object v3, p0, Lcom/loc/bx;->A:Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/loc/cl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuilder;Z)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/dd;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/loc/bx;->b(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)V

    goto :goto_0
.end method

.method public final k()V
    .locals 6

    iget-object v0, p0, Lcom/loc/bx;->f:Lcom/loc/ch;

    iget-object v1, p0, Lcom/loc/bx;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/bx;->r:Lcom/loc/cq;

    iget-object v3, p0, Lcom/loc/bx;->c:Lcom/loc/cj;

    iget-object v4, p0, Lcom/loc/bx;->m:Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v5, p0, Lcom/loc/bx;->b:Landroid/net/ConnectivityManager;

    invoke-virtual/range {v0 .. v5}, Lcom/loc/ch;->a(Landroid/content/Context;Lcom/loc/cq;Lcom/loc/cj;Lcom/amap/api/location/AMapLocationClientOption;Landroid/net/ConnectivityManager;)V

    return-void
.end method
