function runSpringBootJar
    # Gradle 빌드 실행
    ./gradlew build

    # 'plain' 단어가 포함되지 않은 첫 번째 .jar 파일 찾기
    set jarFile (find build/libs -type f -name "*.jar" ! -name "*plain*" | head -n 1)

    # 찾은 .jar 파일 실행
    if test -n "$jarFile"
        java -jar $jarFile
    else
        echo "조건에 맞는 .jar 파일을 찾을 수 없습니다."
    end
end
