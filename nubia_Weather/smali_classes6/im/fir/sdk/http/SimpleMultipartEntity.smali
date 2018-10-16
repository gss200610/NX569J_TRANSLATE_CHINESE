.class Lim/fir/sdk/http/SimpleMultipartEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/HttpEntity;


# static fields
.field private static final CR_LF:[B

.field private static final LOG_TAG:Ljava/lang/String; = "SimpleMultipartEntity"

.field private static final MULTIPART_CHARS:[C

.field private static final STR_CR_LF:Ljava/lang/String; = "\r\n"

.field private static final TRANSFER_ENCODING_BINARY:[B


# instance fields
.field private final boundary:Ljava/lang/String;

.field private final boundaryEnd:[B

.field private final boundaryLine:[B

.field private bytesWritten:I

.field private final fileParts:Ljava/util/List;

.field private isRepeatable:Z

.field private final out:Ljava/io/ByteArrayOutputStream;

.field private final progressHandler:Lim/fir/sdk/http/ResponseHandlerInterface;

.field private totalSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lim/fir/sdk/http/SimpleMultipartEntity;->CR_LF:[B

    const-string v0, "Content-Transfer-Encoding: binary\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lim/fir/sdk/http/SimpleMultipartEntity;->TRANSFER_ENCODING_BINARY:[B

    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lim/fir/sdk/http/SimpleMultipartEntity;->MULTIPART_CHARS:[C

    return-void
.end method

.method public constructor <init>(Lim/fir/sdk/http/ResponseHandlerInterface;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/fir/sdk/http/SimpleMultipartEntity;->fileParts:Ljava/util/List;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lim/fir/sdk/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0x1e

    if-ge v0, v3, :cond_0

    sget-object v3, Lim/fir/sdk/http/SimpleMultipartEntity;->MULTIPART_CHARS:[C

    sget-object v4, Lim/fir/sdk/http/SimpleMultipartEntity;->MULTIPART_CHARS:[C

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget-char v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/fir/sdk/http/SimpleMultipartEntity;->boundary:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/fir/sdk/http/SimpleMultipartEntity;->boundary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lim/fir/sdk/http/SimpleMultipartEntity;->boundaryLine:[B

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/fir/sdk/http/SimpleMultipartEntity;->boundary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lim/fir/sdk/http/SimpleMultipartEntity;->boundaryEnd:[B

    iput-object p1, p0, Lim/fir/sdk/http/SimpleMultipartEntity;->progressHandler:Lim/fir/sdk/http/ResponseHandlerInterface;

    return-void
.end method

.method static synthetic access$000(Lim/fir/sdk/http/SimpleMultipartEntity;)[B
    .locals 1

    iget-object v0, p0, Lim/fir/sdk/http/SimpleMultipartEntity;->boundaryLine:[B

    return-object v0
.end method

.method static synthetic access$100(Lim/fir/sdk/http/SimpleMultipartEntity;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1

    invoke-direct {p0, p1, p2}, Lim/fir/sdk/http/SimpleMultipartEntity;->createContentDisposition(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lim/fir/sdk/http/SimpleMultipartEntity;Ljava/lang/String;)[B
    .locals 1

    invoke-direct {p0, p1}, Lim/fir/sdk/http/SimpleMultipartEntity;->createContentType(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()[B
    .locals 1

    sget-object v0, Lim/fir/sdk/http/SimpleMultipartEntity;->TRANSFER_ENCODING_BINARY:[B

    return-object v0
.end method

.method static synthetic access$400()[B
    .locals 1

    sget-object v0, Lim/fir/sdk/http/SimpleMultipartEntity;->CR_LF:[B

    return-object v0
.end method

.method static synthetic access$500(Lim/fir/sdk/http/SimpleMultipartEntity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lim/fir/sdk/http/SimpleMultipartEntity;->updateProgress(I)V

    return-void
.end method

.method private createContentDisposition(Ljava/lang/String;)[B
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Content-Disposition: form-data; name=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method private createContentDisposition(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Content-Disposition: form-data; name=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"; filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method private createContentType(Ljava/lang/String;)[B
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Content-Type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lim/fir/sdk/http/SimpleMultipartEntity;->normalizeContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method private normalizeContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "application/octet-stream"

    :cond_0
    return-object p1
.end method

.method private updateProgress(I)V
    .locals 3

    iget v0, p0, Lim/fir/sdk/http/SimpleMultipartEntity;->bytesWritten:I

    add-int/2addr v0, p1

    iput v0, p0, Lim/fir/sdk/http/SimpleMultipartEntity;->bytesWritten:I

    iget-object v0, p0, Lim/fir/sdk/http/SimpleMultipartEntity;->progressHandler:Lim/fir/sdk/http/ResponseHandlerInterface;

    iget v1, p0, Lim/fir/sdk/http/SimpleMultipartEntity;->bytesWritten:I

    iget v2, p0, Lim/fir/sdk/http/SimpleMultipartEntity;->totalSize:I

    invoke-interface {v0, v1, v2}, Lim/fir/sdk/http/ResponseHandlerInterface;->sendProgressMessage(II)V

    return-void
.end method


# virtual methods
.method public addPart(Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lim/fir/sdk/http/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public addPart(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lim/fir/sdk/http/SimpleMultipartEntity;->fileParts:Ljava/util/List;

    new-instance v1, Lim/fir/sdk/http/SimpleMultipartEntity$FilePart;

    invoke-direct {p0, p3}, Lim/fir/sdk/http/SimpleMultipartEntity;->normalizeContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, p1, p2, v2}, Lim/fir/sdk/http/SimpleMultipartEntity$FilePart;-><init>(Lim/fir/sdk/http/SimpleMultipartEntity;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPart(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget-object v6, p0, Lim/fir/sdk/http/SimpleMultipartEntity;->fileParts:Ljava/util/List;

    new-instance v0, Lim/fir/sdk/http/SimpleMultipartEntity$FilePart;

    invoke-direct {p0, p3}, Lim/fir/sdk/http/SimpleMultipartEntity;->normalizeContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lim/fir/sdk/http/SimpleMultipartEntity$FilePart;-><init>(Lim/fir/sdk/http/SimpleMultipartEntity;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lim/fir/sdk/http/SimpleMultipartEntity;->addPartWithCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addPart(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lim/fir/sdk/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lim/fir/sdk/http/SimpleMultipartEntity;->boundaryLine:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lim/fir/sdk/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, p1, p2}, Lim/fir/sdk/http/SimpleMultipartEntity;->createContentDisposition(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lim/fir/sdk/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, p4}, Lim/fir/sdk/http/SimpleMultipartEntity;->createContentType(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lim/fir/sdk/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    sget-object v1, Lim/fir/sdk/http/SimpleMultipartEntity;->TRANSFER_ENCODING_BINARY:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lim/fir/sdk/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    sget-object v1, Lim/fir/sdk/http/SimpleMultipartEntity;->CR_LF:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lim/fir/sdk/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lim/fir/sdk/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    sget-object v1, Lim/fir/sdk/http/SimpleMultipartEntity;->CR_LF:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lim/fir/sdk/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    iget-object v0, p0, Lim/fir/sdk/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-static {v0}, Lim/fir/sdk/http/AsyncHttpClient;->silentCloseOutputStream(Ljava/io/OutputStream;)V

    return-void
.end method

.method public addPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lim/fir/sdk/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lim/fir/sdk/http/SimpleMultipartEntity;->boundaryLine:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lim/fir/sdk/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, p1}, Lim/fir/sdk/http/SimpleMultipartEntity;->createContentDisposition(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lim/fir/sdk/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, p3}, Lim/fir/sdk/http/SimpleMultipartEntity;->createContentType(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lim/fir/sdk/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    sget-object v1, Lim/fir/sdk/http/SimpleMultipartEntity;->CR_LF:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lim/fir/sdk/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lim/fir/sdk/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    sget-object v1, Lim/fir/sdk/http/SimpleMultipartEntity;->CR_LF:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SimpleMultipartEntity"

    const-string v2, "addPart ByteArrayOutputStream exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addPartWithCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p3, :cond_0

    const-string p3, "UTF-8"

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "text/plain; charset="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lim/fir/sdk/http/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public consumeContent()V
    .locals 2

    invoke-virtual {p0}, Lim/fir/sdk/http/SimpleMultipartEntity;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Streaming entity does not implement #consumeContent()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getContent() is not supported. Use writeTo() instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 8

    iget-object v0, p0, Lim/fir/sdk/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lim/fir/sdk/http/SimpleMultipartEntity;->fileParts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/fir/sdk/http/SimpleMultipartEntity$FilePart;

    invoke-virtual {v0}, Lim/fir/sdk/http/SimpleMultipartEntity$FilePart;->getTotalLength()J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-gez v5, :cond_0

    const-wide/16 v0, -0x1

    :goto_1
    return-wide v0

    :cond_0
    add-long/2addr v0, v2

    move-wide v2, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lim/fir/sdk/http/SimpleMultipartEntity;->boundaryEnd:[B

    array-length v0, v0

    int-to-long v0, v0

    add-long/2addr v0, v2

    goto :goto_1
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 4

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "Content-Type"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "multipart/form-data; boundary="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lim/fir/sdk/http/SimpleMultipartEntity;->boundary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    iget-boolean v0, p0, Lim/fir/sdk/http/SimpleMultipartEntity;->isRepeatable:Z

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setIsRepeatable(Z)V
    .locals 0

    iput-boolean p1, p0, Lim/fir/sdk/http/SimpleMultipartEntity;->isRepeatable:Z

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lim/fir/sdk/http/SimpleMultipartEntity;->bytesWritten:I

    invoke-virtual {p0}, Lim/fir/sdk/http/SimpleMultipartEntity;->getContentLength()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lim/fir/sdk/http/SimpleMultipartEntity;->totalSize:I

    iget-object v0, p0, Lim/fir/sdk/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lim/fir/sdk/http/SimpleMultipartEntity;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lim/fir/sdk/http/SimpleMultipartEntity;->updateProgress(I)V

    iget-object v0, p0, Lim/fir/sdk/http/SimpleMultipartEntity;->fileParts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/fir/sdk/http/SimpleMultipartEntity$FilePart;

    invoke-virtual {v0, p1}, Lim/fir/sdk/http/SimpleMultipartEntity$FilePart;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lim/fir/sdk/http/SimpleMultipartEntity;->boundaryEnd:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lim/fir/sdk/http/SimpleMultipartEntity;->boundaryEnd:[B

    array-length v0, v0

    invoke-direct {p0, v0}, Lim/fir/sdk/http/SimpleMultipartEntity;->updateProgress(I)V

    return-void
.end method
