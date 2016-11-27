.class public Lcom/letv/domain/net/HTTPSTrustManager;
.super Ljava/lang/Object;
.source "HTTPSTrustManager.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# static fields
.field private static final _AcceptedIssuers:[Ljava/security/cert/X509Certificate;

.field private static trustManagers:[Ljavax/net/ssl/TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    sput-object v0, Lcom/letv/domain/net/HTTPSTrustManager;->_AcceptedIssuers:[Ljava/security/cert/X509Certificate;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowAllSSL()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 44
    new-instance v3, Lcom/letv/domain/net/HTTPSTrustManager$1;

    invoke-direct {v3}, Lcom/letv/domain/net/HTTPSTrustManager$1;-><init>()V

    invoke-static {v3}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "context":Ljavax/net/ssl/SSLContext;
    sget-object v3, Lcom/letv/domain/net/HTTPSTrustManager;->trustManagers:[Ljavax/net/ssl/TrustManager;

    if-nez v3, :cond_0

    .line 56
    const/4 v3, 0x1

    new-array v3, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v4, 0x0

    new-instance v5, Lcom/letv/domain/net/HTTPSTrustManager;

    invoke-direct {v5}, Lcom/letv/domain/net/HTTPSTrustManager;-><init>()V

    aput-object v5, v3, v4

    sput-object v3, Lcom/letv/domain/net/HTTPSTrustManager;->trustManagers:[Ljavax/net/ssl/TrustManager;

    .line 60
    :cond_0
    :try_start_0
    const-string v3, "TLS"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 61
    const/4 v3, 0x0

    sget-object v4, Lcom/letv/domain/net/HTTPSTrustManager;->trustManagers:[Ljavax/net/ssl/TrustManager;

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v3, v4, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1

    .line 66
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    :cond_1
    invoke-static {v2}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 68
    return-void

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Ljava/security/GeneralSecurityException;
    :goto_1
    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    goto :goto_0

    .line 62
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .param p1, "x509Certificates"    # [Ljava/security/cert/X509Certificate;
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 20
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .param p1, "x509Certificates"    # [Ljava/security/cert/X509Certificate;
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 28
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/letv/domain/net/HTTPSTrustManager;->_AcceptedIssuers:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public isClientTrusted([Ljava/security/cert/X509Certificate;)Z
    .locals 1
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;

    .prologue
    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public isServerTrusted([Ljava/security/cert/X509Certificate;)Z
    .locals 1
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;

    .prologue
    .line 35
    const/4 v0, 0x1

    return v0
.end method
