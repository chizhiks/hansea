package com.hansea.dto.response;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class AuthResponse {

    private String accessToken;

    @Builder.Default
    private String type = "Bearer";

    private String refreshToken;

    private String email;

    private String role;

    public static AuthResponse of(String accessToken, String type, String refreshToken, String email, String role) {
        return AuthResponse.builder()
                .accessToken(accessToken)
                .type(type)
                .refreshToken(refreshToken)
                .email(email)
                .role(role)
                .build();
    }

}
