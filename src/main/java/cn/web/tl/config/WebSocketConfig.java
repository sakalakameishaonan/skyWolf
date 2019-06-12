package cn.web.tl.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.messaging.simp.config.MessageBrokerRegistry;
import org.springframework.web.socket.config.annotation.EnableWebSocketMessageBroker;
import org.springframework.web.socket.config.annotation.StompEndpointRegistry;
import org.springframework.web.socket.config.annotation.WebSocketMessageBrokerConfigurer;

/**
 * @author dxq
 * @date 2019-06-12 - 22:10
 */
@Configuration
@EnableWebSocketMessageBroker/*注解表示开启使用STOMP协议来传输基于代理的消息，Broker就是代理的意思。*/
public class WebSocketConfig implements WebSocketMessageBrokerConfigurer {

    /**
     * 注册STOMP协议的节点，并指定映射的URL。
     * @param registry
     */
    @Override
    public void registerStompEndpoints(StompEndpointRegistry registry) {
        //注册STOMP协议节点，同时指定使用SockJS协议。
        registry.addEndpoint("/endpointSang").withSockJS();
    }

    /**
     * 配置消息代理，由于我们是实现推送功能，这里的消息代理是/topic
     * @param registry
     */
    @Override
    public void configureMessageBroker(MessageBrokerRegistry registry) {
        registry.enableSimpleBroker("/topic");
    }
}
