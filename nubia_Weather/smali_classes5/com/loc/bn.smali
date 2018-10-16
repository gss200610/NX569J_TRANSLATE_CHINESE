.class public final Lcom/loc/bn;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/bn$a;
    }
.end annotation


# instance fields
.field private a:Lcom/loc/bo;

.field private b:Lcom/loc/bq;


# direct methods
.method public constructor <init>(Lcom/loc/bq;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/loc/bn;-><init>(Lcom/loc/bq;B)V

    return-void
.end method

.method private constructor <init>(Lcom/loc/bq;B)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/loc/bn;->b:Lcom/loc/bq;

    iget-object v0, p1, Lcom/loc/bq;->e:Ljava/net/Proxy;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/loc/bo;

    iget-object v2, p0, Lcom/loc/bn;->b:Lcom/loc/bq;

    iget v2, v2, Lcom/loc/bq;->c:I

    iget-object v3, p0, Lcom/loc/bn;->b:Lcom/loc/bq;

    iget v3, v3, Lcom/loc/bq;->d:I

    invoke-direct {v1, v2, v3, v0}, Lcom/loc/bo;-><init>(IILjava/net/Proxy;)V

    iput-object v1, p0, Lcom/loc/bn;->a:Lcom/loc/bo;

    iget-object v0, p0, Lcom/loc/bn;->a:Lcom/loc/bo;

    invoke-virtual {v0}, Lcom/loc/bo;->b()V

    iget-object v0, p0, Lcom/loc/bn;->a:Lcom/loc/bo;

    invoke-virtual {v0}, Lcom/loc/bo;->a()V

    return-void

    :cond_0
    iget-object v0, p1, Lcom/loc/bq;->e:Ljava/net/Proxy;

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/loc/bn$a;)V
    .locals 4

    iget-object v0, p0, Lcom/loc/bn;->a:Lcom/loc/bo;

    iget-object v1, p0, Lcom/loc/bn;->b:Lcom/loc/bq;

    invoke-virtual {v1}, Lcom/loc/bq;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/bn;->b:Lcom/loc/bq;

    invoke-virtual {v2}, Lcom/loc/bq;->b()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/loc/bn;->b:Lcom/loc/bq;

    invoke-virtual {v3}, Lcom/loc/bq;->b_()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/loc/bo;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/loc/bn$a;)V

    return-void
.end method
