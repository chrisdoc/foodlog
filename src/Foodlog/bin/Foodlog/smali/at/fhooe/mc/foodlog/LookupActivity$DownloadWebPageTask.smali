.class Lat/fhooe/mc/foodlog/LookupActivity$DownloadWebPageTask;
.super Landroid/os/AsyncTask;
.source "LookupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/fhooe/mc/foodlog/LookupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadWebPageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private dialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lat/fhooe/mc/foodlog/LookupActivity;


# direct methods
.method public constructor <init>(Lat/fhooe/mc/foodlog/LookupActivity;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "_context"

    .prologue
    .line 178
    iput-object p1, p0, Lat/fhooe/mc/foodlog/LookupActivity$DownloadWebPageTask;->this$0:Lat/fhooe/mc/foodlog/LookupActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 179
    iput-object p2, p0, Lat/fhooe/mc/foodlog/LookupActivity$DownloadWebPageTask;->context:Landroid/content/Context;

    .line 180
    new-instance v0, Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lat/fhooe/mc/foodlog/LookupActivity$DownloadWebPageTask;->dialog:Landroid/app/ProgressDialog;

    .line 181
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lat/fhooe/mc/foodlog/LookupActivity$DownloadWebPageTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .parameter "searchs"

    .prologue
    .line 185
    move-object/from16 v0, p1

    array-length v13, v0

    const/4 v12, 0x0

    :goto_0
    if-lt v12, v13, :cond_0

    .line 218
    const-string v12, ""

    :goto_1
    return-object v12

    .line 185
    :cond_0
    aget-object v7, p1, v12

    .line 186
    .local v7, search:Ljava/lang/String;
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 188
    .local v1, client:Lorg/apache/http/impl/client/DefaultHttpClient;
    const-string v14, "http://fddb.info/api/v8/search/item.xml?apikey=%s&lang=de&q=%s"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lat/fhooe/mc/foodlog/LookupActivity$DownloadWebPageTask;->this$0:Lat/fhooe/mc/foodlog/LookupActivity;

    move-object/from16 v17, v0

    const v18, 0x7f090012

    invoke-virtual/range {v17 .. v18}, Lat/fhooe/mc/foodlog/LookupActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object v7, v15, v16

    .line 188
    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 194
    .local v8, service:Ljava/lang/String;
    :try_start_0
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 196
    .local v10, url:Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    .line 195
    check-cast v11, Ljava/net/HttpURLConnection;

    .line 197
    .local v11, urlConnection:Ljava/net/HttpURLConnection;
    const/16 v14, 0x1388

    invoke-virtual {v11, v14}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 198
    new-instance v4, Ljava/io/BufferedInputStream;

    .line 199
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    .line 198
    invoke-direct {v4, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 200
    .local v4, in:Ljava/io/InputStream;
    new-instance v6, Ljava/io/BufferedReader;

    .line 201
    new-instance v14, Ljava/io/InputStreamReader;

    const-string v15, "iso-8859-1"

    invoke-direct {v14, v4, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 200
    invoke-direct {v6, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 202
    .local v6, reader:Ljava/io/BufferedReader;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .local v9, total:Ljava/lang/StringBuilder;
    :goto_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, line:Ljava/lang/String;
    if-nez v5, :cond_1

    .line 207
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 208
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 205
    :cond_1
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 209
    .end local v4           #in:Ljava/io/InputStream;
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #reader:Ljava/io/BufferedReader;
    .end local v9           #total:Ljava/lang/StringBuilder;
    .end local v10           #url:Ljava/net/URL;
    .end local v11           #urlConnection:Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v3

    .line 211
    .local v3, e1:Ljava/net/MalformedURLException;
    invoke-virtual {v3}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 185
    .end local v3           #e1:Ljava/net/MalformedURLException;
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 212
    :catch_1
    move-exception v2

    .line 214
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lat/fhooe/mc/foodlog/LookupActivity$DownloadWebPageTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 232
    iget-object v0, p0, Lat/fhooe/mc/foodlog/LookupActivity$DownloadWebPageTask;->this$0:Lat/fhooe/mc/foodlog/LookupActivity;

    #calls: Lat/fhooe/mc/foodlog/LookupActivity;->handleXMLModel(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lat/fhooe/mc/foodlog/LookupActivity;->access$0(Lat/fhooe/mc/foodlog/LookupActivity;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lat/fhooe/mc/foodlog/LookupActivity$DownloadWebPageTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 234
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 224
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 225
    iget-object v0, p0, Lat/fhooe/mc/foodlog/LookupActivity$DownloadWebPageTask;->dialog:Landroid/app/ProgressDialog;

    const-string v1, "Searching"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v0, p0, Lat/fhooe/mc/foodlog/LookupActivity$DownloadWebPageTask;->dialog:Landroid/app/ProgressDialog;

    const-string v1, "Searching food database"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, p0, Lat/fhooe/mc/foodlog/LookupActivity$DownloadWebPageTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 228
    return-void
.end method
