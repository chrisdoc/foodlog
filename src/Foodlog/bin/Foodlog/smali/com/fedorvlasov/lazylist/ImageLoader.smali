.class public Lcom/fedorvlasov/lazylist/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fedorvlasov/lazylist/ImageLoader$BitmapDisplayer;,
        Lcom/fedorvlasov/lazylist/ImageLoader$PhotoToLoad;,
        Lcom/fedorvlasov/lazylist/ImageLoader$PhotosLoader;
    }
.end annotation


# instance fields
.field executorService:Ljava/util/concurrent/ExecutorService;

.field fileCache:Lcom/fedorvlasov/lazylist/FileCache;

.field handler:Landroid/os/Handler;

.field private imageViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field memoryCache:Lcom/fedorvlasov/lazylist/MemoryCache;

.field final stub_id:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/fedorvlasov/lazylist/MemoryCache;

    invoke-direct {v0}, Lcom/fedorvlasov/lazylist/MemoryCache;-><init>()V

    iput-object v0, p0, Lcom/fedorvlasov/lazylist/ImageLoader;->memoryCache:Lcom/fedorvlasov/lazylist/MemoryCache;

    .line 29
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/fedorvlasov/lazylist/ImageLoader;->imageViews:Ljava/util/Map;

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/fedorvlasov/lazylist/ImageLoader;->handler:Landroid/os/Handler;

    .line 38
    const v0, 0x1080074

    iput v0, p0, Lcom/fedorvlasov/lazylist/ImageLoader;->stub_id:I

    .line 34
    new-instance v0, Lcom/fedorvlasov/lazylist/FileCache;

    invoke-direct {v0, p1}, Lcom/fedorvlasov/lazylist/FileCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fedorvlasov/lazylist/ImageLoader;->fileCache:Lcom/fedorvlasov/lazylist/FileCache;

    .line 35
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/fedorvlasov/lazylist/ImageLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/fedorvlasov/lazylist/ImageLoader;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/fedorvlasov/lazylist/ImageLoader;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private decodeFile(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "f"

    .prologue
    const/16 v12, 0x46

    const/4 v10, 0x0

    .line 94
    :try_start_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 95
    .local v4, o:Landroid/graphics/BitmapFactory$Options;
    const/4 v11, 0x1

    iput-boolean v11, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 96
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 97
    .local v7, stream1:Ljava/io/FileInputStream;
    const/4 v11, 0x0

    invoke-static {v7, v11, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 98
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 101
    const/16 v0, 0x46

    .line 102
    .local v0, REQUIRED_SIZE:I
    iget v9, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .local v9, width_tmp:I
    iget v3, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 103
    .local v3, height_tmp:I
    const/4 v6, 0x1

    .line 105
    .local v6, scale:I
    :goto_0
    div-int/lit8 v11, v9, 0x2

    if-lt v11, v12, :cond_0

    div-int/lit8 v11, v3, 0x2

    if-ge v11, v12, :cond_1

    .line 113
    :cond_0
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 114
    .local v5, o2:Landroid/graphics/BitmapFactory$Options;
    iput v6, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 115
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 116
    .local v8, stream2:Ljava/io/FileInputStream;
    const/4 v11, 0x0

    invoke-static {v8, v11, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 117
    .local v1, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 124
    .end local v0           #REQUIRED_SIZE:I
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #height_tmp:I
    .end local v4           #o:Landroid/graphics/BitmapFactory$Options;
    .end local v5           #o2:Landroid/graphics/BitmapFactory$Options;
    .end local v6           #scale:I
    .end local v7           #stream1:Ljava/io/FileInputStream;
    .end local v8           #stream2:Ljava/io/FileInputStream;
    .end local v9           #width_tmp:I
    :goto_1
    return-object v1

    .line 107
    .restart local v0       #REQUIRED_SIZE:I
    .restart local v3       #height_tmp:I
    .restart local v4       #o:Landroid/graphics/BitmapFactory$Options;
    .restart local v6       #scale:I
    .restart local v7       #stream1:Ljava/io/FileInputStream;
    .restart local v9       #width_tmp:I
    :cond_1
    div-int/lit8 v9, v9, 0x2

    .line 108
    div-int/lit8 v3, v3, 0x2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    mul-int/lit8 v6, v6, 0x2

    .line 104
    goto :goto_0

    .line 121
    .end local v0           #REQUIRED_SIZE:I
    .end local v3           #height_tmp:I
    .end local v4           #o:Landroid/graphics/BitmapFactory$Options;
    .end local v6           #scale:I
    .end local v7           #stream1:Ljava/io/FileInputStream;
    .end local v9           #width_tmp:I
    :catch_0
    move-exception v2

    .line 122
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2           #e:Ljava/io/IOException;
    :goto_2
    move-object v1, v10

    .line 124
    goto :goto_1

    .line 119
    :catch_1
    move-exception v11

    goto :goto_2
.end method

.method private getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "url"

    .prologue
    .line 60
    iget-object v8, p0, Lcom/fedorvlasov/lazylist/ImageLoader;->fileCache:Lcom/fedorvlasov/lazylist/FileCache;

    invoke-virtual {v8, p1}, Lcom/fedorvlasov/lazylist/FileCache;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 63
    .local v4, f:Ljava/io/File;
    invoke-direct {p0, v4}, Lcom/fedorvlasov/lazylist/ImageLoader;->decodeFile(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 64
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 86
    .end local v0           #b:Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 69
    .restart local v0       #b:Landroid/graphics/Bitmap;
    :cond_0
    const/4 v1, 0x0

    .line 70
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 71
    .local v5, imageUrl:Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 72
    .local v2, conn:Ljava/net/HttpURLConnection;
    const/16 v8, 0x7530

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 73
    const/16 v8, 0x7530

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 74
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 75
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 76
    .local v6, is:Ljava/io/InputStream;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 77
    .local v7, os:Ljava/io/OutputStream;
    invoke-static {v6, v7}, Lcom/fedorvlasov/lazylist/Utils;->CopyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 78
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 79
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 80
    invoke-direct {p0, v4}, Lcom/fedorvlasov/lazylist/ImageLoader;->decodeFile(Ljava/io/File;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v0, v1

    .line 81
    goto :goto_0

    .line 82
    .end local v2           #conn:Ljava/net/HttpURLConnection;
    .end local v5           #imageUrl:Ljava/net/URL;
    .end local v6           #is:Ljava/io/InputStream;
    .end local v7           #os:Ljava/io/OutputStream;
    :catch_0
    move-exception v3

    .line 83
    .local v3, ex:Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 84
    instance-of v8, v3, Ljava/lang/OutOfMemoryError;

    if-eqz v8, :cond_1

    .line 85
    iget-object v8, p0, Lcom/fedorvlasov/lazylist/ImageLoader;->memoryCache:Lcom/fedorvlasov/lazylist/MemoryCache;

    invoke-virtual {v8}, Lcom/fedorvlasov/lazylist/MemoryCache;->clear()V

    .line 86
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private queuePhoto(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3
    .parameter "url"
    .parameter "imageView"

    .prologue
    .line 54
    new-instance v0, Lcom/fedorvlasov/lazylist/ImageLoader$PhotoToLoad;

    invoke-direct {v0, p0, p1, p2}, Lcom/fedorvlasov/lazylist/ImageLoader$PhotoToLoad;-><init>(Lcom/fedorvlasov/lazylist/ImageLoader;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 55
    .local v0, p:Lcom/fedorvlasov/lazylist/ImageLoader$PhotoToLoad;
    iget-object v1, p0, Lcom/fedorvlasov/lazylist/ImageLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/fedorvlasov/lazylist/ImageLoader$PhotosLoader;

    invoke-direct {v2, p0, v0}, Lcom/fedorvlasov/lazylist/ImageLoader$PhotosLoader;-><init>(Lcom/fedorvlasov/lazylist/ImageLoader;Lcom/fedorvlasov/lazylist/ImageLoader$PhotoToLoad;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 56
    return-void
.end method


# virtual methods
.method public DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2
    .parameter "url"
    .parameter "imageView"

    .prologue
    .line 41
    iget-object v1, p0, Lcom/fedorvlasov/lazylist/ImageLoader;->imageViews:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v1, p0, Lcom/fedorvlasov/lazylist/ImageLoader;->memoryCache:Lcom/fedorvlasov/lazylist/MemoryCache;

    invoke-virtual {v1, p1}, Lcom/fedorvlasov/lazylist/MemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 43
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 50
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/fedorvlasov/lazylist/ImageLoader;->queuePhoto(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 48
    const v1, 0x1080074

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public clearCache()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/fedorvlasov/lazylist/ImageLoader;->memoryCache:Lcom/fedorvlasov/lazylist/MemoryCache;

    invoke-virtual {v0}, Lcom/fedorvlasov/lazylist/MemoryCache;->clear()V

    .line 187
    iget-object v0, p0, Lcom/fedorvlasov/lazylist/ImageLoader;->fileCache:Lcom/fedorvlasov/lazylist/FileCache;

    invoke-virtual {v0}, Lcom/fedorvlasov/lazylist/FileCache;->clear()V

    .line 188
    return-void
.end method

.method imageViewReused(Lcom/fedorvlasov/lazylist/ImageLoader$PhotoToLoad;)Z
    .locals 3
    .parameter "photoToLoad"

    .prologue
    .line 162
    iget-object v1, p0, Lcom/fedorvlasov/lazylist/ImageLoader;->imageViews:Ljava/util/Map;

    iget-object v2, p1, Lcom/fedorvlasov/lazylist/ImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 163
    .local v0, tag:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/fedorvlasov/lazylist/ImageLoader$PhotoToLoad;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 164
    :cond_0
    const/4 v1, 0x1

    .line 165
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
