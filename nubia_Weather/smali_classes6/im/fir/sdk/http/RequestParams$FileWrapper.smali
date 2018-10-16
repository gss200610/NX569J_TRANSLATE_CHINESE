.class public Lim/fir/sdk/http/RequestParams$FileWrapper;
.super Ljava/lang/Object;


# instance fields
.field public final contentType:Ljava/lang/String;

.field public final customFileName:Ljava/lang/String;

.field public final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lim/fir/sdk/http/RequestParams$FileWrapper;->file:Ljava/io/File;

    iput-object p2, p0, Lim/fir/sdk/http/RequestParams$FileWrapper;->contentType:Ljava/lang/String;

    iput-object p3, p0, Lim/fir/sdk/http/RequestParams$FileWrapper;->customFileName:Ljava/lang/String;

    return-void
.end method
