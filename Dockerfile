FROM microsoft/dotnet:2.1-sdk

MAINTAINER <vk@alphacloud.net>

COPY DependencyCache.csproj /work/cache/

RUN cd /work/cache \
    && dotnet add package dotnet-xunit -v 2.4.0-* \
    && dotnet add package AutoMapper \
    && dotnet add package Autofac \
    && dotnet add package Autofac.Extensions.DependencyInjection \
    && dotnet add package Automapper \
    && dotnet add package Dapper \
    && dotnet add package FluentAssertions \
    && dotnet add package JetBrains.Annotations \
    && dotnet add package LibLog \
    && dotnet add package MOQ \
    && dotnet add package MessagePack \
    && dotnet add package MessagePackAnalyzer \
    && dotnet add package Microsoft.CSharp \
    && dotnet add package Microsoft.CodeAnalysis.CSharp \
    && dotnet add package Microsoft.Extensions.Caching.Memory \
    && dotnet add package Microsoft.IO.RecyclableMemoryStream \
    && dotnet add package MongoDB.Driver \
    && dotnet add package Newtonsoft.Json \
    && dotnet add package Polly \
    && dotnet add package RedLock.net.StrongName \
    && dotnet add package Serilog \
    && dotnet add package Serilog.AspNetCore \
    && dotnet add package Serilog.Exceptions \
    && dotnet add package Serilog.Extensions.Logging \
    && dotnet add package Serilog.Sinks.ColoredConsole \
    && dotnet add package Serilog.Sinks.File \
    && dotnet add package Swashbuckle.AspNetCore \
    && dotnet add package System.Buffers \
    && dotnet add package System.ComponentModel.Annotations \
    && dotnet add package System.ComponentModel.Primitives \
    && dotnet add package System.Data.SqlClient \
    && dotnet add package System.Reflection.TypeExtensions \
    && dotnet add package System.Runtime.Loader \
    && dotnet add package System.Security.SecureString \
    && dotnet add package System.ValueTuple \
    && dotnet add package System.Xml.XmlSerializer \
    && dotnet add package xunit \
    && dotnet add package xunit.runner.visualstudio \
    && dotnet restore \
    && cd / \
    && rm -rf /work/cache/*
